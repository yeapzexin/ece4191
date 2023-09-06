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
// big servo
// setting 649
// PWM_2 metal big servo
int down_big = 615; // down default
int up_big = 525;// up

//small servo
// setting 999
// PWM_1 metal small servo
int open_small = 980; //open default
int close_small  = 940; //close
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
CY_ISR(ISR_Handler_1)
{
    if (PWM_SmallServo_ReadCompare() ==open_small )//when button pressed
    {
        forward();
        CyDelay(1000);
        stop();
        PWM_SmallServo_WriteCompare(close_small );
        CyDelay(1000);
        //CyDelay(500);
        PWM_BigServo_WriteCompare(up_big );
        forward();
        CyDelay(1000);
        stop();
        
    }
    else
    {
        PWM_BigServo_WriteCompare(down_big );
        CyDelay(1000);
        PWM_SmallServo_WriteCompare(open_small );
    }
}

int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    PWM_SmallServo_Start();
    PWM_BigServo_Start();
    PWM_Master_Start();
    PWM_Slave_Start();
    QuadDec_1_Start();
    QuadDec_1_SetCounter(0);
    QuadDec_2_Start();
    QuadDec_2_SetCounter(0);
    UART_1_Start();
    isr_1_StartEx(ISR_Handler_1);
    for(;;)
    {
        /* Place your application code here. */
    }
}

/* [] END OF FILE */
