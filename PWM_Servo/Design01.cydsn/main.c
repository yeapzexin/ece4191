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
//int start = 625; 
//int end = 525;

//small servo
// setting 999
int start = 980; 
int end = 930; 
CY_ISR(ISR_Handler_1)
{
    if (PWM_1_ReadCompare() ==start)
    {

        PWM_1_WriteCompare(end);
    }
    else
    {
        PWM_1_WriteCompare(start);
    }
}


int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    PWM_1_Start();
    isr_1_StartEx(ISR_Handler_1);
    for(;;)
    {
        /* Place your application code here. */
    }
}

/* [] END OF FILE */
