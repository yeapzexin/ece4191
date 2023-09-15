/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
// ECE4191 Group 3

#include "project.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h> 

int initial = 0; /// 0 --> initial position at left side, 1 --> inital position at right side
double WHEEL_DIAMETER = 5.4; //cm
double WHEEL_CIRCUMFERENCE = 0;
int CS_count_Red = 0;
int CS_count_Blue = 0;
int CS_count_Green = 0;
double COUNT_WHEEL = 3667; // Count per rotation
double CM_COUNT_CONV = 0;
double DISTANCE_BETW_WHEEL = 22.30;
double DISTANCE_PT_TURN = 0;
double PT_TURN_COUNT = 0;
int Count_Master = 0;
int Count_Slave = 0;
char string_1[200];
char string_2[200];
char string_3[200];
double error = 0;
double accumulated_error = 0;
double last_error = 0;
double derivative_error = 0;
double timer_period = 5;
double K_p = 5;
double K_i = 0;
double K_d = 0;
float PWM_Master = 20000;
float PWM_Slave = 20000;
float PWM_Master_puck = 5000;
float PWM_Slave_puck = 5000;
int is_moving = 0;
int ultrasonic_count = 0;
double ultrasonic_measure = 0;
double front_measured_1, front_measured_2, right_measured, left_measured = 0;
int ultrasonic_flag = 0;
int echo_select = 0;
double x_coord = 0;
double y_coord = 0;
int direction = 0;
int step = 0;
int compare_ready = 0;
int color_detected = 0; // 1-red, 2-green, 3-blue
int wall_detected_10 = 0;
int slit_detected = 0;
int down_big = 615;
int up_big = 525;
int open_small = 980;
int close_small  = 940;

CY_ISR (Speed_Control)
{
    if(is_moving == 1)
    {
        error = abs(Count_Master) - abs(Count_Slave);
    	//accumulated_error = accumulated_error + (error*timer_period);
        //derivative_error = (error - last_error)/timer_period;
        //K_i = 1.2 * K_p / timer_period;
        //K_d = 0.075 * K_p * timer_period;
        //PWM_Slave = 25000 - (K_p*error + K_i*accumulated_error + K_d*derivative_error);
        PWM_Slave = 0.65*(PWM_Master + K_p*error);
        //if (PWM_Slave>25000)
        //{
        //    PWM_Slave = 23000;
        //}
    
        PWM_Wheels_WriteCompare2(PWM_Slave);
        last_error = error;
    }

    //sprintf(string_3, "PWM_Slave: %f\n", PWM_Slave);
    //UART_1_PutString(string_3);
}

CY_ISR(ultrasonic_trigger)
{
    if (ultrasonic_flag == 0)
    {
        // front 1
        echo_select = 0;
    }
    else if (ultrasonic_flag == 1)
    {
        // front 2
        echo_select = 1;
    }
    else if (ultrasonic_flag == 2)
    {
        // left
        echo_select = 2;
    }
    else if (ultrasonic_flag == 3)
    {
        // right
        echo_select = 3;
    }
    Control_Reg_2_Write(echo_select);
    CyDelay(50);
    Timer_2_ReadStatusRegister();
    Trigger_Write(1);
    CyDelayUs(10);
    Trigger_Write(0);
}

CY_ISR(ultrasonic_echo)
{
    Timer_3_ReadStatusRegister();
    ultrasonic_count = Timer_3_ReadCounter();
    ultrasonic_measure = (65535-ultrasonic_count)/58;
    sprintf(string_1, "Front dist 1: %lf\n", ultrasonic_measure);
    
    if (ultrasonic_flag == 0)
    {
        // front 1
        front_measured_1 = ultrasonic_measure;
    }
    else if (ultrasonic_flag == 1)
    {
        // front 2
        front_measured_2 = ultrasonic_measure;
    }
    else if (ultrasonic_flag == 2)
    {
        // left
        left_measured = ultrasonic_measure;
    }
    else if (ultrasonic_flag == 3)
    {
        // right
        right_measured = ultrasonic_measure;
    }
    
    if(front_measured_1 <= 15)
    {
        wall_detected_10 = 1;
    }
    else
    {
        wall_detected_10 = 0;
    }
}

CY_ISR(Color_sensing)
{
    // Ready to do the capture --> to count the pulse
    PWM_ColorSensor_ReadStatusRegister();
    compare_ready = 1;
}

void stop()
{
    is_moving = 0;
    Motor_1_IN_1_Write(0);
    Motor_1_IN_2_Write(0);
    Motor_2_IN_3_Write(0);
    Motor_2_IN_4_Write(0);
}

void forward()
{
    is_moving = 1;
    Motor_1_IN_1_Write(0);
    Motor_1_IN_2_Write(1);
    Motor_2_IN_3_Write(0);
    Motor_2_IN_4_Write(1);
}

void reverse()
{
    is_moving = 1;
    Motor_1_IN_1_Write(1);
    Motor_1_IN_2_Write(0);
    Motor_2_IN_3_Write(1);
    Motor_2_IN_4_Write(0);
}

void turn_anticlockwise()
{
    is_moving = 1;
    Motor_1_IN_1_Write(0);
    Motor_1_IN_2_Write(1);
    Motor_2_IN_3_Write(1);
    Motor_2_IN_4_Write(0);
}

void turn_clockwise()
{
    is_moving = 1;
    Motor_1_IN_1_Write(1);
    Motor_1_IN_2_Write(0);
    Motor_2_IN_3_Write(0);
    Motor_2_IN_4_Write(1);
}
/*
void F_or_R(int dist_count, int flag_FR, int direction, int min_distance, int max_distance)
{
    double avg_count, avg_dist;
    int flag_stop = 0;
    //while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && front_measured>10)
    if direction == 1
    {
        US_measured = front_measured;
    }
    else if direction == 2
    {
        US_measured = left
    
    while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && US_measured > min_distance && US_measured < max_distance)
    {
        // Place your application code here. 
        Count_Master = QuadDec_1_GetCounter();
        Count_Slave = QuadDec_2_GetCounter();
        
        sprintf(string_1, "Right (Master): %d\n", Count_Master);
        UART_1_PutString(string_1);
        sprintf(string_2, "Left (Slave): %d\n", Count_Slave);
        UART_1_PutString(string_2);
        sprintf(string_3, "PWM_Slave: %f\n", PWM_Slave);
        UART_1_PutString(string_3);

        CyDelay(100);
        
        if (flag_FR==1)
        {
            forward();
        }
        else
        {
            reverse();
        }
        CyDelay(50);
        while(Front_Echo_Read()==0)
        {
            Front_Trigger_Write(1);
            CyDelayUs(10);
            Front_Trigger_Write(0);
        }
    }
    stop();
    avg_count = (QuadDec_1_GetCounter()+QuadDec_2_GetCounter())/2;
    avg_dist = avg_count*(M_PI*WHEEL_DIAMETER/3667);
    if (direction ==0)
    {
        y_coord = y_coord + avg_dist;
    }
    else if (direction ==1)
    {
        
        x_coord = x_coord + avg_dist;
    }
    else if (direction ==2)
    {
        
        y_coord = y_coord - avg_dist;
    }
    else if (direction ==3)
    {
        
        x_coord = x_coord - avg_dist;
    }
    step = step +1;
    //
    //QuadDec_2_SetCounter(0);
}
*/

void reset_count()
{
    QuadDec_1_SetCounter(0);
    QuadDec_2_SetCounter(0);
    Count_Master = 0;
    Count_Slave = 0;
}

void move_fixed_dist(int dist, int flag_FR)
{
    double avg_count, avg_dist;
    int dist_count = dist * CM_COUNT_CONV; // convert dist to count
    while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count)
    {
        Count_Master = QuadDec_1_GetCounter();
        Count_Slave = QuadDec_2_GetCounter();
        if (flag_FR==1)
        {
            forward();
        }
        else
        {
            reverse();
        }
    }
    stop();
    avg_count = (QuadDec_1_GetCounter()+QuadDec_2_GetCounter())/2;
    avg_dist = avg_count*(M_PI*WHEEL_DIAMETER/3667);
    if (direction ==0)
    {
        y_coord = y_coord + avg_dist;
    }
    else if (direction ==1)
    {
        
        x_coord = x_coord + avg_dist;
    }
    else if (direction ==2)
    {
        
        y_coord = y_coord - avg_dist;
    }
    else if (direction ==3)
    {
        
        x_coord = x_coord - avg_dist;
    }
    reset_count();
}

void forward2wall()
{
    double avg_count, avg_dist;
    while (wall_detected_10 == 0)
    {
        forward();
        CyDelay(50);
        while(Front_Echo_1_Read()==0)
        {
            Front_Trigger_1_Write(1);
            CyDelayUs(10);
            Front_Trigger_1_Write(0);
        }
    }
    stop();
    avg_count = (QuadDec_1_GetCounter()+QuadDec_2_GetCounter())/2;
    avg_dist = avg_count*(M_PI*WHEEL_DIAMETER/3667);
    if (direction ==0)
    {
        y_coord = y_coord + avg_dist;
    }
    else if (direction ==1)
    {
        
        x_coord = x_coord + avg_dist;
    }
    else if (direction ==2)
    {
        
        y_coord = y_coord - avg_dist;
    }
    else if (direction ==3)
    {
        
        x_coord = x_coord - avg_dist;
    }
    reset_count();
}

void move2slit()
{
    double avg_count, avg_dist;
    CyDelay(500);
    while (slit_detected == 0)
    {
        forward();
        sprintf(string_1, "moving to slit");
        UART_1_PutString(string_1);
        CyDelay(100);
        while(Left_Echo_Read()==0)
        {
            Left_Trigger_Write(1);
            CyDelayUs(10);
            Left_Trigger_Write(0);
        }
    }
    stop();
    avg_count = (QuadDec_1_GetCounter()+QuadDec_2_GetCounter())/2;
    avg_dist = avg_count*(M_PI*WHEEL_DIAMETER/3667);
    if (direction ==0)
    {
        y_coord = y_coord + avg_dist;
    }
    else if (direction ==1)
    {
        
        x_coord = x_coord + avg_dist;
    }
    else if (direction ==2)
    {
        
        y_coord = y_coord - avg_dist;
    }
    else if (direction ==3)
    {
        
        x_coord = x_coord - avg_dist;
    }
    reset_count();
}

void move2puck()
{
    double avg_count, avg_dist;
    while (IR_input_Read() == 1)
    {
        forward();
    }
    stop();
    CyDelay(500);
    
    avg_count = (QuadDec_1_GetCounter()+QuadDec_2_GetCounter())/2;
    avg_dist = avg_count*(M_PI*WHEEL_DIAMETER/3667);
    if (direction ==0)
    {
        y_coord = y_coord + avg_dist;
    }
    else if (direction ==1)
    {
        
        x_coord = x_coord + avg_dist;
    }
    else if (direction ==2)
    {
        
        y_coord = y_coord - avg_dist;
    }
    else if (direction ==3)
    {
        
        x_coord = x_coord - avg_dist;
    }
    reset_count();
}
/*
void F_or_R_1(int dist_count, int flag_FR)
{
    double avg_count, avg_dist;
    //int flag_stop = 0;
    front_measured_1 = 50;
    //while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && front_measured>10)
    
    //while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && US_measured > min_distance && US_measured < max_distance)
    sprintf(string_1,"Running F_or_R_1...\n");
    UART_1_PutString(string_1);
    
    while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && wall_detected_10 == 0)
    {
        // Place your application code here.
        Count_Master = QuadDec_1_GetCounter();
        Count_Slave = QuadDec_2_GetCounter();
        if (flag_FR==1)
        {
            forward();
        }
        else
        {
            reverse();
        }
        CyDelay(50);
        
        while(Front_Echo_1_Read()==0)
        {
            Front_Trigger_1_Write(1);
            CyDelayUs(10);
            Front_Trigger_1_Write(0);
        }
    }
    stop();
    avg_count = (QuadDec_1_GetCounter()+QuadDec_2_GetCounter())/2;
    avg_dist = avg_count*(M_PI*WHEEL_DIAMETER/3667);
    if (direction ==0)
    {
        y_coord = y_coord + avg_dist;
    }
    else if (direction ==1)
    {
        
        x_coord = x_coord + avg_dist;
    }
    else if (direction ==2)
    {
        
        y_coord = y_coord - avg_dist;
    }
    else if (direction ==3)
    {
        
        x_coord = x_coord - avg_dist;
    }
    //step = step +1;
    //
    //QuadDec_2_SetCounter(0);
}

void F_or_R_2(int dist_count, int flag_FR)
{
    double avg_count, avg_dist;
    int flag_stop = 0;
    //while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && front_measured>10)
    
    //while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && US_measured > min_distance && US_measured < max_distance)
    while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && right_measured<30)
    {
        // Place your application code here.
        Count_Master = QuadDec_1_GetCounter();
        Count_Slave = QuadDec_2_GetCounter();
        if (flag_FR==1)
        {
            forward();
        }
        else
        {
            reverse();
        }
        CyDelay(50);
        while(Right_Echo_Read()==0)
        {
            Right_Trigger_Write(1);
            CyDelayUs(10);
            Right_Trigger_Write(0);
        }
    }
    stop();
    avg_count = (QuadDec_1_GetCounter()+QuadDec_2_GetCounter())/2;
    avg_dist = avg_count*(M_PI*WHEEL_DIAMETER/3667);
    if (direction ==0)
    {
        y_coord = y_coord + avg_dist;
    }
    else if (direction ==1)
    {
        
        x_coord = x_coord + avg_dist;
    }
    else if (direction ==2)
    {
        
        y_coord = y_coord - avg_dist;
    }
    else if (direction ==3)
    {
        
        x_coord = x_coord - avg_dist;
    }
    //step = step +1;
    //
    //QuadDec_2_SetCounter(0);
}

void F_or_R_3(int dist_count, int flag_FR)
{
    double avg_count, avg_dist;
    int flag_stop = 0;
    //while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && front_measured>10)
    
    //while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && US_measured > min_distance && US_measured < max_distance)
    while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && IR_input_Read()==0)
    {
        // Place your application code here.
        Count_Master = QuadDec_1_GetCounter();
        Count_Slave = QuadDec_2_GetCounter();
        if (flag_FR==1)
        {
            forward();
        }
        else
        {
            reverse();
        }
    }
    stop();
    avg_count = (QuadDec_1_GetCounter()+QuadDec_2_GetCounter())/2;
    avg_dist = avg_count*(M_PI*WHEEL_DIAMETER/3667);
    if (direction ==0)
    {
        y_coord = y_coord + avg_dist;
    }
    else if (direction ==1)
    {
        
        x_coord = x_coord + avg_dist;
    }
    else if (direction ==2)
    {
        
        y_coord = y_coord - avg_dist;
    }
    else if (direction ==3)
    {
        
        x_coord = x_coord - avg_dist;
    }
    //step = step +1;
    //
    //QuadDec_2_SetCounter(0);
}
*/
void CW(int PT_TURN_COUNT, int flag_CW)
{
    while(abs(Count_Master) <= PT_TURN_COUNT && abs(Count_Slave) <= PT_TURN_COUNT)
    {
        Count_Master = QuadDec_1_GetCounter();
        Count_Slave = QuadDec_2_GetCounter();
        if (flag_CW == 1)
        {
            turn_clockwise();
        }
        else 
        {
            turn_anticlockwise();
        }
    }
    stop();
    if (flag_CW == 1)
    {
        if (direction == 3)
        {
            direction = 0;
        }
        else
        {
            direction = direction +1;
        }
    }
    else
    {
        if (direction ==0)
        {
            direction = 3;
        }
        else
        {
            direction = direction -1;
        }
    }
    reset_count();
}

void Color_Sensing_Function()
{
    int mode = 1;

    int count = 0;
    
    S0_Write(1);
    S1_Write(1);
    CS_LED_Write(1);
    CyDelay(10);
    Counter_ColorSensor_Start();
    
    if (mode == 1) // red mode --> red filter
    {
        compare_ready = 0;
        S2_Write(0);
        S3_Write(0);
        CyDelay(20);
        Control_Reg_1_Write(1);
        CyDelay(1);
        Control_Reg_1_Write(0);
        while(compare_ready==0)
        {
            // waiting period (until compare ready = 1
            //sprintf(string_1,"waiting\n");
            //UART_1_PutString(string_1);
        }
        CS_count_Red = Counter_ColorSensor_ReadCapture();
        sprintf(string_1,"red: %d\n", CS_count_Red);
        UART_1_PutString(string_1);
        mode = 2;
    }
    Counter_ColorSensor_Stop();
    CyDelay(100);
    Counter_ColorSensor_Start();
    if (mode == 2) // green mode --> green filter
    {
        compare_ready = 0;
        S2_Write(1);
        S3_Write(1);
        CyDelay(20);
        Control_Reg_1_Write(1);
        CyDelay(1);
        Control_Reg_1_Write(0);
        while(compare_ready==0)
        {
            // waiting period (until compare ready = 1
        }
        CS_count_Green = Counter_ColorSensor_ReadCapture();
        sprintf(string_1,"green: %d\n", CS_count_Green);
        UART_1_PutString(string_1);
        mode = 3;
    }
    Counter_ColorSensor_Stop();
    CyDelay(100);
    Counter_ColorSensor_Start();
    if (mode == 3) // blue mode --> blue filter
    {
        compare_ready = 0;
        S2_Write(0);
        S3_Write(1);
        CyDelay(20);
        Control_Reg_1_Write(1);
        CyDelay(1);
        Control_Reg_1_Write(0);
        while(compare_ready==0)
        {
            // waiting period (until compare ready = 1
        }
        CS_count_Blue = Counter_ColorSensor_ReadCapture();
        sprintf(string_1,"blue: %d\n", CS_count_Blue);
        UART_1_PutString(string_1);
        mode = 0;
    }
    Counter_ColorSensor_Stop();
    if (CS_count_Red > CS_count_Green && CS_count_Red > CS_count_Blue)
    {
        color_detected = 1; //red
        led_red_Write(1);
        CyDelay(1000);
        led_red_Write(0);
    }
    if (CS_count_Green > CS_count_Red && CS_count_Green > CS_count_Blue)
    {
        color_detected = 2; //green
        led_green_Write(1);
        CyDelay(1000);
        led_green_Write(0);
    }
    if (CS_count_Blue > CS_count_Red && CS_count_Blue > CS_count_Green)
    {
        color_detected = 3; //blue
        led_blue_Write(1);
        CyDelay(1000);
        led_blue_Write(0);
    }
    
    //step = step +1;
}
            
int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

    WHEEL_CIRCUMFERENCE = M_PI*WHEEL_DIAMETER;
    DISTANCE_PT_TURN = M_PI*DISTANCE_BETW_WHEEL/4;
    CM_COUNT_CONV = COUNT_WHEEL/WHEEL_CIRCUMFERENCE;
    PT_TURN_COUNT = COUNT_WHEEL * DISTANCE_PT_TURN/(M_PI*WHEEL_DIAMETER)+100;
    isr_1_StartEx(Speed_Control);
    isr_6_StartEx(Color_sensing);
    Timer_1_Start();
    Timer_2_Start();
    Timer_3_Start();
    isr_2_StartEx(ultrasonic_trigger);
    isr_3_StartEx(ultrasonic_echo);
    PWM_ColorSensor_Start();
    
    PWM_Wheels_Start();
    PWM_SmallServo_Start();
    PWM_BigServo_Start();
    QuadDec_1_Start();
    QuadDec_1_SetCounter(0);
    QuadDec_2_Start();
    QuadDec_2_SetCounter(0);
    UART_1_Start();
    CS_LED_Write(0);

    int flag_FR = 1;
    int flag_CW = 1;
    PWM_Wheels_WriteCompare1(PWM_Master);
    PWM_Wheels_WriteCompare2(PWM_Master);
    double dist_trav = 0;
    double dist_count = dist_trav*CM_COUNT_CONV;
    CyDelay(2000);
    
    // move to hug left wall
    while (step == 0)
    {
        flag_FR = 1;
        dist_trav = 50;
        move_fixed_dist(dist_trav, flag_FR); // move forward
        
        flag_CW = 0;
        CW(PT_TURN_COUNT, flag_CW); // turn CCW facing left wall
        
        forward2wall(); // move to left wall
        flag_CW = 1;
        CW(PT_TURN_COUNT, flag_CW); // turn CW facing front wall
        
        step++; 
    }
    wall_detected_10 = 0;
    CyDelay(500);
    
    // move forward to front wall & turn 90 deg CW facing right wall
    while (step == 1)
    {
        /*flag_FR = 1;
        dist_trav = 150;
        dist_count = dist_trav*CM_COUNT_CONV;
        F_or_R_1(dist_count, flag_FR);*/
        forward2wall(); // move to front wall
        CyDelay(500);
        flag_CW = 1;
        CW(PT_TURN_COUNT, flag_CW); // turn CW facing right wall --> problem: Step 2 will collide with the slit wall
        step++;
    }
    CyDelay(1000);
    
    // look for slit & adjust so that robot can fit through slit
    while (step == 2)
    {
        /*flag_FR = 1;
        dist_trav = 200;
        dist_count = dist_trav*CM_COUNT_CONV;
        F_or_R_2(dist_count, flag_FR);*/
        move2slit();
        sprintf(string_1, "step 2");
        UART_1_PutString(string_1);
        CyDelay(500);
        
        step++;
    }
    CyDelay(500);
    while (step == 3)
    {
        dist_trav = 8.5;
        flag_FR = 1;
        move_fixed_dist(dist_trav, flag_FR);
        flag_CW = 0;
        CW(PT_TURN_COUNT, flag_CW); 
        step++;
    }
    CyDelay(500);
    // move forward until puck is detected
    while (step == 4)
    {
        /*flag_FR = 1;
        dist_trav = 10;
        dist_count = dist_trav*CM_COUNT_CONV;
        F_or_R_2(dist_count, flag_FR);*/
        move2puck();
        step++;
    }
    CyDelay(500);
    
    // color sensing & light up LED
    while (step == 5)
    {
        int flag_FR = 0;
        int dist_trav = 2;
        move_fixed_dist(dist_trav, flag_FR); // move backward
        CyDelay(500);
        Color_Sensing_Function();
        if (color_detected == 1) // red
        {
            led_red_Write(1);
        }
        else if (color_detected == 2) // green
        {
            led_green_Write(1);
        }
        else if (color_detected == 3) // blue
        {
            led_blue_Write(1);   
        }
        step++;
    }
    CyDelay(500);
    
    // move forward & pick up puck
    while (step == 6)
    {
        flag_FR = 1;
        dist_trav = 18; // distance from color sensor to gripper center
        move_fixed_dist(dist_trav, flag_FR);
        PWM_BigServo_WriteCompare(down_big);
        CyDelay(500);
        PWM_SmallServo_WriteCompare(close_small);
        CyDelay(500);
        PWM_BigServo_WriteCompare(up_big);
        step++;
    }
    CyDelay(500);
    
    // go home? YES OF COZ XD
    
    while (step == 7)
    {
        // reverse (out of the slit) and move to the corner of facing the initial position
        flag_FR = 0;
        dist_trav = 50;
        move_fixed_dist(dist_trav, flag_FR);
        CyDelay(500);
        if (initial == 0)
        {
            flag_CW = 0; // ccw to left wall
        }
        else
        {
            flag_CW = 1; // cw to right wall
        }
        CW(PT_TURN_COUNT, flag_CW); // turn robot facing left or right wall
        step++;     
    }
    CyDelay(500);
    wall_detected_10 = 0;
    while (step ==8)
    {
        forward2wall(); // move to left wall
        flag_CW = 1;
        CW(PT_TURN_COUNT, flag_CW); // turn CW facing base wall
        
        
       
        step++;
        
    }
    CyDelay(500);
    
    wall_detected_10 = 0;
    while (step ==9)
    {
        flag_FR = 0
        
        ;
        dist_trav = 70;
        move_fixed_dist(dist_trav, flag_FR);
        //move_fixed_dist(200); // move to corner
        CyDelay(500);
        step ++;
    }
    
    while (step == 10)
    {
         // move away from the corner
        /*
        flag_FR = 0;
        dist_trav = 50;
        move_fixed_dist(dist_trav, flag_FR);
        CyDelay(500);
        if (initial == 0)
        {
            flag_CW = 1;    // ccw
        }
        else
        {
            flag_CW = 0;    // cw
        }
        CW(PT_TURN_COUNT, flag_CW); // turn CCW or CW facing puck landing zone
        CyDelay(500);
        */
        step ++;
    }
    CyDelay(500);
    
    while (step == 11)
    {
    
        // move to puck landing
        /*
        flag_FR = 0;
        dist_trav = 20;
        move_fixed_dist(dist_trav, flag_FR);
        CyDelay(500);
        if (initial == 0)
        {
            flag_CW = 1;    // cw
        }
        else
        {
            flag_CW = 0;    // ccw
        }
        CW(PT_TURN_COUNT, flag_CW); // turn CCW or CW facing puck landing zone
        */
        step++;
    }
    CyDelay(500);
    while (step ==12)
    {
        // put down
        PWM_BigServo_WriteCompare(down_big);
        CyDelay(1000);
        PWM_SmallServo_WriteCompare(open_small);
        CyDelay(500);
        PWM_BigServo_WriteCompare(up_big);
        CyDelay(500);
        PWM_SmallServo_WriteCompare(close_small);
        step++;
    }
    CyDelay(500);
    while (step == 13)
    {
        flag_FR = 1;
        dist_trav = 20;
        move_fixed_dist(dist_trav, flag_FR);
        CyDelay(500);
        PWM_BigServo_WriteCompare(down_big);
        CyDelay(500);
        step++;
    }
    CyDelay(500);
    while (step == 14)
    {
        flag_FR = 0;
        dist_trav = 20;
        move_fixed_dist(dist_trav, flag_FR);
        CyDelay(500);
        PWM_BigServo_WriteCompare(up_big);
        CyDelay(500);
        step++;
    }
    CyDelay(500);
    while (step == 15)
    {
        if (initial == 0)
        {
            flag_CW = 1;    // cw
        }
        else
        {
            flag_CW = 0;    // ccw
        }
        CW(PT_TURN_COUNT, flag_CW); // turn CCW or CW facing puck landing zone
        CyDelay(500);
        flag_FR = 1;
        dist_trav = 50;
        move_fixed_dist(dist_trav, flag_FR);
        CyDelay(500);
        step++;
    }
    CyDelay(500);
    while (step == 16)
    {
        if (initial == 0)
        {
            flag_CW = 1;    // cw
        }
        else
        {
            flag_CW = 0;    // ccw
        }
        CW(PT_TURN_COUNT, flag_CW); // turn CCW or CW facing puck landing zone
        CyDelay(500);
        flag_FR = 1;
        dist_trav = 50;
        move_fixed_dist(dist_trav, flag_FR);
        CyDelay(500);
        step ++;
    }
    
    // go home
}

/* [] END OF FILE */