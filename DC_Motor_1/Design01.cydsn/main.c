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
#include <string.h>
#define MPU6050 0x68

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
float PWM_Cal = 10000;

float PWM_Slave = 20000;
float PWM_Master_puck = 5000;
float PWM_Slave_puck = 5000;
int is_moving = 0;
int ultrasonic_count = 0;
double ultrasonic_measure = 0;
double front_measured_1, front_measured_2, right_measured, left_measured = 0;
int echo_select = 0;
double x_coord = 0;
double y_coord = 0;
int direction = 0; // 0(front[0]), 1(right[90]),  2(back[180]),  3(left[270])
int step = -1;
int compare_ready = 0;
int color_detected = 0; // 1-red, 2-green, 3-blue
int wall_detected_10 = 0;
int slit_detected = 0;
int down_big = 615;
int up_big = 525;
int open_small = 980;
int close_small  = 940;
// bluetooth
char Rx;
int i = 0;
char string_bt[200];
int stop_bt = 0;
char* tokenPtr;
char task_info[3][20];
int j = 0;
// gyroscope
uint8 array_1[6] = {0};
int16 temp = 0;
double yaw_rate = 0;
double yaw_angle = 0;
double previous_reading = 0;
double current_reading = 0;
double heading = 0;
int cycles = 0;
char string_gyro[200] = "\0";
int cal = 1;
int count = 0;
int16 error_gyro = 0; //to find the error in gyroscope readings when stationary
int16 error_gyro_avg = 0; //average error in gyroscope readings when stationary
double threshold = 0.1; //to prevent accumulation of error due to integration

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
        PWM_Slave = 0.8 * (PWM_Master + K_p*error);
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

CY_ISR(ultrasonic_echo)
{
    Timer_3_ReadStatusRegister();
    ultrasonic_count = Timer_3_ReadCounter();
    ultrasonic_measure = (65535-ultrasonic_count)/58;
    sprintf(string_1, "Front dist 1: %lf  \n", ultrasonic_measure);
    UART_1_PutString(string_1);
    
    if (echo_select == 0)
    {
        // front 1
        front_measured_1 = ultrasonic_measure;
    }
    else if (echo_select == 1)
    {
        // front 2
        front_measured_2 = ultrasonic_measure;
    }
    else if (echo_select == 2)
    {
        // left
        left_measured = ultrasonic_measure;
    }
    else if (echo_select == 3)
    {
        // right
        right_measured = ultrasonic_measure;
    }
    
    if(front_measured_2 <= 10)
    {
        wall_detected_10 = 1;
    }
    else
    {
        wall_detected_10 = 0;
    }
    
    if (left_measured >= 20)
    {
        slit_detected = 1;
    }
    else
    {
        slit_detected = 0;
    }
}

CY_ISR(Color_sensing)
{
    // Ready to do the capture --> to count the pulse
    PWM_ColorSensor_ReadStatusRegister();
    compare_ready = 1;
}

CY_ISR(Bluetooth)
{
    Rx = UART_1_GetChar();
    if (Rx != '!')
    {
        string_bt[i] = Rx;
        i++;
    }
    else
    {
        string_bt[i] = '\0'; // terminate
        stop_bt = 1;
    }
}

CY_ISR(Gyroscope)
{
    Timer_2_ReadStatusRegister();
    //Timer_2_ReadStatusRegister();
    
    //Writing the register number from where the read operation starts
    I2C_1_MasterSendStart(MPU6050,0); //Steps 1-2
    I2C_1_MasterWriteByte(0x43); //Step 3
    I2C_1_MasterSendStop(); //Step 4
    CyDelay(1);
    
    //Read data starting from register 0x43
    I2C_1_MasterSendStart(MPU6050,1); //Steps 5-6
    
    //Step 7
    array_1[0] = I2C_1_MasterReadByte(I2C_1_ACK_DATA); //GYRO_XOUT_H
    array_1[1] = I2C_1_MasterReadByte(I2C_1_ACK_DATA); //GYRO_XOUT_L
    array_1[2] = I2C_1_MasterReadByte(I2C_1_ACK_DATA); //GYRO_YOUT_H
    array_1[3] = I2C_1_MasterReadByte(I2C_1_ACK_DATA); //GYRO_YOUT_L
    array_1[4] = I2C_1_MasterReadByte(I2C_1_ACK_DATA); //GYRO_ZOUT_H
    array_1[5] = I2C_1_MasterReadByte(I2C_1_NAK_DATA); //GYRO_ZOUT_L
    
    I2C_1_MasterSendStop(); //Step 8
    CyDelay(1);
    
    temp = array_1[4] << 8 | array_1[5];
        
    if (cal == 1 && count < 20) //while calibrating
    {
        UART_1_PutString("Calibrating\n");
        error_gyro += temp;
        count++;
    }
    else if (cal == 1 && count == 20) //end of calibration and computation of average error
    {
        error_gyro_avg = error_gyro/20;
        cal = 0;
    }
    else //after calibration and with average error computed
    {
        temp = temp - error_gyro_avg;
        yaw_rate = temp/65.535;

        current_reading = yaw_rate;   
       
        if (fabs(current_reading - previous_reading) > threshold)
        {
            //integration of yaw_rate
            yaw_angle = yaw_angle + 0.5*0.1*(previous_reading + current_reading);
            previous_reading = current_reading;
            
            //counting cycles beyond +360 or -360
            cycles = fabs(yaw_angle)/360;
            
            if (cycles > 0)
            {
                if (yaw_angle < 0)
                {
                    heading = yaw_angle + cycles*360;
                }
                else
                {
                    heading = yaw_angle - cycles*360;
                }
            }
            else
            {
                heading = yaw_angle;
            }
            
            //wrapping the heading within 0 - 360 degrees
            if (heading < 0)
            {
                heading = heading + 360;
            }
            
            sprintf(string_gyro,"Heading: %lf\n",heading);
            UART_1_PutString(string_gyro);
        }
        else
        {
            previous_reading = current_reading;
            sprintf(string_gyro,"Heading: %lf\n",heading);
            UART_1_PutString(string_gyro);
        }
            
    }
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

void reset_count()
{
    QuadDec_1_SetCounter(0);
    QuadDec_2_SetCounter(0);
    Count_Master = 0;
    Count_Slave = 0;
}

void gyro_cal_1()
{
    // Determine the target angle based on the 'direction' variable
    int ANGLE_TOLERANCE = 5;
    int targetAngle = 0;
    PWM_Wheels_WriteCompare1(PWM_Cal);
    PWM_Wheels_WriteCompare2(PWM_Cal);
    switch (direction) {
        case 0:
            targetAngle = 0;
            break;
        case 1:
            targetAngle = 90;
            break;
        case 2:
            targetAngle = 180;
            break;
        case 3:
            targetAngle = 270;
            break;
        default:
            // Handle invalid direction
            return;
    }

    // Perform calibration by continuously checking heading
    while (1) {
        // Calculate the difference between the current heading and the target angle
        int angleDifference = heading - targetAngle;

        // Check if we are within the tolerance range
        if (angleDifference >= -ANGLE_TOLERANCE && angleDifference <= ANGLE_TOLERANCE) {
            // Calibration complete, within tolerance
            stop();
            break;
            CyDelay(500);
        } else if (angleDifference > 0) {
            // Turn counterclockwise
            turn_anticlockwise();
        } else {
            // Turn clockwise
            turn_clockwise();
        }
        
        CyDelay(50);
    }
    CyDelay(200);
    PWM_Wheels_WriteCompare1(PWM_Master);
    PWM_Wheels_WriteCompare2(PWM_Master);
}
void gyro_cal_2()
{
    // Determine the target angle based on the 'direction' variable
    int ANGLE_TOLERANCE = 1;
    int targetAngle = 0;
    PWM_Wheels_WriteCompare1(PWM_Cal);
    PWM_Wheels_WriteCompare2(PWM_Cal);
    switch (direction) {
        case 0:
            targetAngle = 0;
            break;
        case 1:
            targetAngle = 90;
            break;
        case 2:
            targetAngle = 180;
            break;
        case 3:
            targetAngle = 270;
            break;
        default:
            // Handle invalid direction
            return;
    }

    // Perform calibration by continuously checking heading
    while (1) {
        // Calculate the difference between the current heading and the target angle
        int angleDifference = heading - targetAngle;

        // Check if we are within the tolerance range
        if (angleDifference >= -ANGLE_TOLERANCE && angleDifference <= ANGLE_TOLERANCE) {
            // Calibration complete, within tolerance
            stop();
            break;
            CyDelay(500);
        } else if (angleDifference > 0) {
            // Turn counterclockwise
            turn_anticlockwise();
        } else {
            // Turn clockwise
            turn_clockwise();
        }
        
        CyDelay(50);
    }
    CyDelay(200);
    PWM_Wheels_WriteCompare1(PWM_Master);
    PWM_Wheels_WriteCompare2(PWM_Master);
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
        gyro_cal_1();
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

void move2wall()
{
    double avg_count, avg_dist;
    echo_select = 1;
    Control_Reg_2_Write(echo_select);
    CyDelay(50);
    wall_detected_10 = 0;
    while (wall_detected_10 == 0)
    {
        forward();
        CyDelay(50);
        Trigger_Write(1);
        CyDelayUs(10);
        Trigger_Write(0);
        gyro_cal_1();
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
    echo_select = 2;
    Control_Reg_2_Write(echo_select);
    CyDelay(50);
    //CyDelay(500);
    while (slit_detected == 0)
    {
        forward();
        sprintf(string_1, "moving to slit");
        UART_1_PutString(string_1);
        CyDelay(100);
        while(Left_Echo_Read()==0)
        {
            
            Trigger_Write(1);
            CyDelayUs(10);
            Trigger_Write(0);
        }
        gyro_cal_1();
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
    slit_detected=0;
}

void move2puck() // need to update to turn (routing)
{
    double avg_count, avg_dist;
    while (IR_input_Read() == 1)
    {
        forward();
        gyro_cal_1();
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

void CW(int PT_TURN_COUNT, int flag_CW) // 1-clockwise; 0-anti
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
    CyDelay(50);
    gyro_cal_1();
    //CyDelay(500);
    //gyro_cal_2();
    reset_count();
}

void Color_Sensing_Function()
{
    int mode = 1;

    //int count = 0;
    
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
    CS_LED_Write(0);
    while (color_detected == 1) //red
    {
        while(Front_Echo_2_Read()==0)
        {
            Trigger_Write(1);
            CyDelayUs(10);
            Trigger_Write(0);
        }
        
        if (front_measured_2 >= 10)
        {
            move_fixed_dist(20, 1);
            color_detected = 0;
        }
    }
    while (color_detected == 2) //green
    {
        CW(PT_TURN_COUNT, 1);
        CyDelay(500);
        move2slit();
        CyDelay(500);
        move_fixed_dist(20, 1);
        CyDelay(500);
        CW(PT_TURN_COUNT, 0);
        CyDelay(500);
        move_fixed_dist(30, 1);
        CyDelay(500);
        move2slit();
        CyDelay(500);
        move_fixed_dist(20, 1);
        CyDelay(500);
        CW(PT_TURN_COUNT, 0);
        CyDelay(500);
        move_fixed_dist(20, 1);
        CyDelay(500);
        CW(PT_TURN_COUNT, 1);
        CyDelay(500);
        move_fixed_dist(20, 1);
        CyDelay(500);
        color_detected = 0;
    }
    while (color_detected == 3) //blue
    {
        int a = y_coord;
        sprintf(string_1, "y_coord = %lf\n", y_coord);
        UART_2_PutString(string_1);
        move_fixed_dist(abs(a), 0);
        CyDelay(500);
        color_detected = 0;
        
    }
    //step = step +1;
}

void Gyroscope_Function()
{
    //Bring the sensor out of sleep mode
    I2C_1_MasterSendStart(MPU6050,0); //Steps 1-2
    I2C_1_MasterWriteByte(0x6B); //Step 3
    I2C_1_MasterWriteByte(0x00); //Step 4
    I2C_1_MasterSendStop(); //Step 5
    CyDelay(1);
    
    
    //Set the scaling factor of the sensor
    I2C_1_MasterSendStart(MPU6050,0); //Steps 1-2
    I2C_1_MasterWriteByte(0x1B); //Step 3
    I2C_1_MasterWriteByte(0x08); //Step 4
    I2C_1_MasterSendStop(); //Step 5
    CyDelay(1);
    
    
    //Activating the low-pass filter
    I2C_1_MasterSendStart(MPU6050,0); //Steps 1-2
    I2C_1_MasterWriteByte(0x1A); //Step 3
    I2C_1_MasterWriteByte(0x05); //Step 4
    I2C_1_MasterSendStop(); //Step 5    
    CyDelay(1);
}

void Flicker_Function()
{
    int flag_FR = 0;
    double dist_trav = 5;
    Flicker_Write(1);
    CyDelay(5000);
    move_fixed_dist(dist_trav, flag_FR); // move forward
    CyDelay(500);
    Flicker_Write(0);
}

float Sharp_IR()
{
    int Sharp_IR_analogue = 0;
    float Sharp_IR_avg_a = 0;
    float Sharp_IR_sum_a = 0;
    int Sharp_IR_iter = 0;
    float Sharp_IR_volt = 0;
    float Sharp_IR_dist = 0;
    while (Sharp_IR_iter < 21)
    {
        ADC_SAR_1_StartConvert();
        do
        {
            Sharp_IR_analogue = ADC_SAR_1_IsEndConversion(ADC_SAR_1_RETURN_STATUS);
        }
        while(Sharp_IR_analogue==0);
        Sharp_IR_analogue = ADC_SAR_1_GetResult8();
        if (Sharp_IR_analogue > 0)
        {
            Sharp_IR_sum_a = Sharp_IR_sum_a + Sharp_IR_analogue;
            Sharp_IR_iter++;
        }
        CyDelay(20);
    }
    Sharp_IR_avg_a = Sharp_IR_sum_a/20;
    Sharp_IR_volt = Sharp_IR_avg_a/51;
    Sharp_IR_dist = pow((Sharp_IR_volt-0.2)/(27.728*1.3),-1/1.205);
    CyDelay(200);
    sprintf(string_1,"volt(V): %lf\n",Sharp_IR_volt);
    UART_1_PutString(string_1);
    sprintf(string_1,"dist(cm): %lf\n",Sharp_IR_dist);
    UART_1_PutString(string_1);
    return Sharp_IR_dist;
}

void Find_Puck(int target)
{
    // [target] 1-Red; 2-Green; 3-Blue
    int objective = 0;
    while (objective == 0)
    {
        move2puck();
        int flag_FR = 1;
        int dist_trav = 4;
        move_fixed_dist(dist_trav, flag_FR); // move backward
        CyDelay(500);
        Color_Sensing_Function();
        if (color_detected == 1) // red
        {
            led_red_Write(1);
            CyDelay(1000);
            led_red_Write(0);
            UART_1_PutString("Red  \n");
        }
        else if (color_detected == 2) // green
        {
            led_green_Write(1);
            CyDelay(1000);
            led_green_Write(0);
            UART_1_PutString("Green  \n");
        }
        else if (color_detected == 3) // blue
        {
            led_blue_Write(1);
            CyDelay(1000);
            led_blue_Write(0);
            UART_1_PutString("Blue  \n");
        }
        if (color_detected == target)
        {
            objective = 1;
        }
    }
}

void Pick_Up_Puck()
{
    int flag_FR = 1;
    double dist_trav = 18; // distance from color sensor to gripper center
    move_fixed_dist(dist_trav, flag_FR);
    CyDelay(500);
    PWM_BigServo_WriteCompare(down_big);
    CyDelay(1000);
    PWM_SmallServo_WriteCompare(close_small);
    CyDelay(1000);
    PWM_BigServo_WriteCompare(up_big);
}

void Put_Down_Puck()
{
    PWM_BigServo_WriteCompare(down_big);
    CyDelay(1000);
    PWM_SmallServo_WriteCompare(open_small);
    CyDelay(500);
    PWM_BigServo_WriteCompare(up_big);
    CyDelay(500);
    PWM_SmallServo_WriteCompare(close_small);
}

int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

    WHEEL_CIRCUMFERENCE = M_PI*WHEEL_DIAMETER;
    DISTANCE_PT_TURN = M_PI*DISTANCE_BETW_WHEEL/4;
    CM_COUNT_CONV = COUNT_WHEEL/WHEEL_CIRCUMFERENCE;
    PT_TURN_COUNT = COUNT_WHEEL * DISTANCE_PT_TURN/(M_PI*WHEEL_DIAMETER);
    isr_1_StartEx(Speed_Control);
    isr_6_StartEx(Color_sensing);
    Timer_1_Start();
    Timer_3_Start();
    isr_3_StartEx(ultrasonic_echo);
    PWM_ColorSensor_Start();
    isr_7_StartEx(Bluetooth);
    Flicker_Write(0);
    Trigger_Write(0);
    PWM_Wheels_Start();
    PWM_SmallServo_Start();
    PWM_BigServo_Start();
    QuadDec_1_Start();
    QuadDec_1_SetCounter(0);
    QuadDec_2_Start();
    QuadDec_2_SetCounter(0);
    UART_1_Start();
    CS_LED_Write(0);
    //ADC_SAR_1_Start();
    I2C_1_Start();
    Timer_2_Start();
    isr_2_StartEx(Gyroscope);
    Gyroscope_Function();
    wall_detected_10 = 0;
    slit_detected = 0;
    UART_2_Start();

    int flag_FR = 1;
    int flag_CW = 1;
    PWM_Wheels_WriteCompare1(PWM_Master);
    PWM_Wheels_WriteCompare2(PWM_Master);
    double dist_trav = 0;
    //double dist_count = dist_trav*CM_COUNT_CONV;
    
    
    for(;;)
    {                  
        /* Place your application code here. */
        if (stop_bt == 1)
        {
            if (strcmp(string_bt, "Are you ready?") == 0)
            {
                UART_1_PutString("Ready  \n"); // insert 2 white spaces to terminate
            }
            else if (strcmp(string_bt, "Start") == 0)
            {
                // start main program
                Find_Puck(2);
                CyDelay(1000);
                Pick_Up_Puck();
                CyDelay(1000);
                move_fixed_dist(10, 0);
                CyDelay(1000);
                Put_Down_Puck();
                CyDelay(1000);
                Flicker_Function();
                //move2wall();
                
                  
                while (step == 0)
                {
                    flag_FR = 1;
                    dist_trav = 50;
                    move_fixed_dist(dist_trav, flag_FR); // move forward
                    
                    flag_CW = 0;
                    CW(PT_TURN_COUNT, flag_CW); // turn CCW facing left wall
                    
                    move2wall(); // move to left wall
                    flag_CW = 1;
                    CW(PT_TURN_COUNT, flag_CW); // turn CW facing front wall
                    
                    step++; 
                }
                wall_detected_10 = 0;
                CyDelay(500);
                
                // move forward to front wall & turn 90 deg CW facing right wall
                while (step == 1)
                {
                    move2wall(); // move to front wall
                    CyDelay(500);
                    flag_CW = 1;
                    CW(PT_TURN_COUNT, flag_CW); // turn CW facing right wall --> problem: Step 2 will collide with the slit wall
                    step++;
                }
                CyDelay(1000);
                
                // look for slit & adjust so that robot can fit through slit
                while (step == 2)
                {
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
                    move2wall(); // move to left wall
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
                    step ++;
                }
                CyDelay(500);
                
                while (step == 11)
                {
                
                    // move to puck landing
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
            else // task info
            {
                tokenPtr = strtok(string_bt, " ");
                while (tokenPtr != NULL)
                {
                    strcpy(task_info[j], tokenPtr);
                    j++;
                    tokenPtr = strtok(NULL, " ");
                }
                UART_1_PutString(task_info[0]);
                UART_1_PutString(task_info[1]);
                UART_1_PutString(task_info[2]);
                UART_1_PutString("Received  \n");
            }
            i = 0;
            j = 0;
            stop_bt = 0;
        }
    }
}

/* [] END OF FILE */