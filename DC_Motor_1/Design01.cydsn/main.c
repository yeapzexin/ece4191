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
#include "project.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h> 

const double WHEEL_DIAMETER = 5.4; //cm
int Count_Master = 0;
int Count_Slave = 0;
char string_1[20];
char string_2[20];
char string_3[20];
double error = 0;
double accumulated_error = 0;
double last_error = 0;
double derivative_error = 0;
double timer_period = 5;
double K_p = 50;
double K_i = 0;
double K_d = 0;
float PWM_Master = 23000;
float PWM_Slave = 23000;
int is_moving = 0;
uint16 front_det_count_1, front_det_count_2, right_det_count, left_det_count = 0;
float front_measured_1, front_measured_2, right_measured, left_measured = 0;
double x_coord = 0;
double y_coord = 0;
int direction = 0;
int step = 0;

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
        PWM_Slave = PWM_Master + K_p*error;
        //if (PWM_Slave>25000)
        //{
        //    PWM_Slave = 23000;
        //}
    
        PWM_Slave_WriteCompare(PWM_Slave);
        last_error = error;
    }

    //sprintf(string_3, "PWM_Slave: %f\n", PWM_Slave);
    //UART_1_PutString(string_3);
}

CY_ISR(dist_front_detection_1)
{
    Timer_2_ReadStatusRegister();
    front_det_count_1 = Timer_2_ReadCounter();
    front_measured_1 = (65535-front_det_count_1)/58;
    //sprintf(string_1, "front dist: %lf\n", front_measured_1);
    //UART_1_PutString(string_1);
}
CY_ISR(dist_front_detection_2)
{
    Timer_2_ReadStatusRegister();
    front_det_count_2 = Timer_2_ReadCounter();
    front_measured_2 = (65535-front_det_count_2)/58;
    //sprintf(string_1, "front dist: %lf\n", front_measured_2);
    //UART_1_PutString(string_1);
}
CY_ISR(dist_right_detection)
{
    Timer_2_ReadStatusRegister();
    right_det_count = Timer_2_ReadCounter();
    front_measured_1 = (65535-right_det_count)/58;
    //sprintf(string_1, "front dist: %lf\n", front_measured_1);
    //UART_1_PutString(string_1);
}
CY_ISR(dist_left_detection)
{
    Timer_2_ReadStatusRegister();
    left_det_count = Timer_2_ReadCounter();
    front_measured_1 = (65535-left_det_count)/58;
    //sprintf(string_1, "front dist: %lf\n", front_measured_1);
    //UART_1_PutString(string_1);
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
void F_or_R_1(int dist_count, int flag_FR)
{
    double avg_count, avg_dist;
    int flag_stop = 0;
    //while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && front_measured>10)
    
    //while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && US_measured > min_distance && US_measured < max_distance)
    while(abs(Count_Master) <= dist_count && abs(Count_Slave) <= dist_count && front_measured_1>10)
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
    step = step +1;
    //
    //QuadDec_2_SetCounter(0);
}

void CW(int PT_TURN_COUNT, int flag_CW)
{
    while(abs(Count_Master) <= PT_TURN_COUNT && abs(Count_Slave) <= PT_TURN_COUNT)
    {
        //Place your application code here.
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
    step = step +1;
    
}
            
int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */
    isr_1_StartEx(Speed_Control);
    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    Timer_1_Start();
    Timer_2_Start();
    Timer_3_Start();
    Timer_4_Start();
    Timer_5_Start();
    isr_2_StartEx(dist_front_detection_1);
    isr_3_StartEx(dist_right_detection);
    isr_4_StartEx(dist_left_detection);
    isr_5_StartEx(dist_front_detection_2);
    
    PWM_Master_Start();
    PWM_Slave_Start();
    QuadDec_1_Start();
    QuadDec_1_SetCounter(0);
    QuadDec_2_Start();
    QuadDec_2_SetCounter(0);
    UART_1_Start();
    
    const double WHEEL_CIRCUMFERENCE = M_PI*WHEEL_DIAMETER;
    const double COUNT_WHEEL = 3667; // Count per rotation
    
    const double CM_COUNT_CONV = COUNT_WHEEL/WHEEL_CIRCUMFERENCE;
    const double DISTANCE_BETW_WHEEL = 22.30;
    const double DISTANCE_PT_TURN = M_PI*DISTANCE_BETW_WHEEL/4;
    const double PT_TURN_COUNT = COUNT_WHEEL * DISTANCE_PT_TURN/(M_PI*WHEEL_DIAMETER)-500;

    int flag_FR = 1;
    int flag_CW = 1;
    //Motor_1_IN_1_Write(1);
    //Motor_1_IN_2_Write(0);
    //Motor_2_IN_3_Write(1);
    //Motor_2_IN_4_Write(0);
    PWM_Master_WriteCompare(PWM_Master);
    PWM_Slave_WriteCompare(PWM_Master);
    double dist_trav = 0;
    double dist_count = dist_trav*CM_COUNT_CONV;
    CyDelay(2000);
    /*
    while(1)
    {
        CyDelay(50);
        while(Front_Echo_Read()==0)
        {
            Front_Trigger_Write(1);
            CyDelayUs(10);
            Front_Trigger_Write(0);
        }
    }
    */
    
    while (step == 0)
    {
        flag_FR = 1;
        dist_trav = 120;
        dist_count = dist_trav*CM_COUNT_CONV;
        F_or_R_1(dist_count, flag_FR);
    }
    CyDelay(500);
    QuadDec_1_SetCounter(0);
    QuadDec_2_SetCounter(0);
    Count_Master = 0;
    Count_Slave = 0;
    while (step == 1)
    {
        flag_CW = 1;
        CW(PT_TURN_COUNT,flag_CW);
    }
    CyDelay(500);
    QuadDec_1_SetCounter(0);
    QuadDec_2_SetCounter(0);
    Count_Master = 0;
    Count_Slave = 0;
    while (step ==2)
    {
        flag_FR = 1;
        dist_trav = 120;
        dist_count = dist_trav*CM_COUNT_CONV;
        F_or_R_2(dist_count, flag_FR);
    }
    CyDelay(500);
    QuadDec_1_SetCounter(0);
    QuadDec_2_SetCounter(0);
    Count_Master = 0;
    Count_Slave = 0;
    
    
    
    //stop();
}

/* [] END OF FILE */
