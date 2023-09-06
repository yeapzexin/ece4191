/*******************************************************************************
* File Name: PWM_ColorSensor_PM.c
* Version 3.30
*
* Description:
*  This file provides the power management source code to API for the
*  PWM.
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "PWM_ColorSensor.h"

static PWM_ColorSensor_backupStruct PWM_ColorSensor_backup;


/*******************************************************************************
* Function Name: PWM_ColorSensor_SaveConfig
********************************************************************************
*
* Summary:
*  Saves the current user configuration of the component.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_ColorSensor_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void PWM_ColorSensor_SaveConfig(void) 
{

    #if(!PWM_ColorSensor_UsingFixedFunction)
        #if(!PWM_ColorSensor_PWMModeIsCenterAligned)
            PWM_ColorSensor_backup.PWMPeriod = PWM_ColorSensor_ReadPeriod();
        #endif /* (!PWM_ColorSensor_PWMModeIsCenterAligned) */
        PWM_ColorSensor_backup.PWMUdb = PWM_ColorSensor_ReadCounter();
        #if (PWM_ColorSensor_UseStatus)
            PWM_ColorSensor_backup.InterruptMaskValue = PWM_ColorSensor_STATUS_MASK;
        #endif /* (PWM_ColorSensor_UseStatus) */

        #if(PWM_ColorSensor_DeadBandMode == PWM_ColorSensor__B_PWM__DBM_256_CLOCKS || \
            PWM_ColorSensor_DeadBandMode == PWM_ColorSensor__B_PWM__DBM_2_4_CLOCKS)
            PWM_ColorSensor_backup.PWMdeadBandValue = PWM_ColorSensor_ReadDeadTime();
        #endif /*  deadband count is either 2-4 clocks or 256 clocks */

        #if(PWM_ColorSensor_KillModeMinTime)
             PWM_ColorSensor_backup.PWMKillCounterPeriod = PWM_ColorSensor_ReadKillTime();
        #endif /* (PWM_ColorSensor_KillModeMinTime) */

        #if(PWM_ColorSensor_UseControl)
            PWM_ColorSensor_backup.PWMControlRegister = PWM_ColorSensor_ReadControlRegister();
        #endif /* (PWM_ColorSensor_UseControl) */
    #endif  /* (!PWM_ColorSensor_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: PWM_ColorSensor_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration of the component.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_ColorSensor_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_ColorSensor_RestoreConfig(void) 
{
        #if(!PWM_ColorSensor_UsingFixedFunction)
            #if(!PWM_ColorSensor_PWMModeIsCenterAligned)
                PWM_ColorSensor_WritePeriod(PWM_ColorSensor_backup.PWMPeriod);
            #endif /* (!PWM_ColorSensor_PWMModeIsCenterAligned) */

            PWM_ColorSensor_WriteCounter(PWM_ColorSensor_backup.PWMUdb);

            #if (PWM_ColorSensor_UseStatus)
                PWM_ColorSensor_STATUS_MASK = PWM_ColorSensor_backup.InterruptMaskValue;
            #endif /* (PWM_ColorSensor_UseStatus) */

            #if(PWM_ColorSensor_DeadBandMode == PWM_ColorSensor__B_PWM__DBM_256_CLOCKS || \
                PWM_ColorSensor_DeadBandMode == PWM_ColorSensor__B_PWM__DBM_2_4_CLOCKS)
                PWM_ColorSensor_WriteDeadTime(PWM_ColorSensor_backup.PWMdeadBandValue);
            #endif /* deadband count is either 2-4 clocks or 256 clocks */

            #if(PWM_ColorSensor_KillModeMinTime)
                PWM_ColorSensor_WriteKillTime(PWM_ColorSensor_backup.PWMKillCounterPeriod);
            #endif /* (PWM_ColorSensor_KillModeMinTime) */

            #if(PWM_ColorSensor_UseControl)
                PWM_ColorSensor_WriteControlRegister(PWM_ColorSensor_backup.PWMControlRegister);
            #endif /* (PWM_ColorSensor_UseControl) */
        #endif  /* (!PWM_ColorSensor_UsingFixedFunction) */
    }


/*******************************************************************************
* Function Name: PWM_ColorSensor_Sleep
********************************************************************************
*
* Summary:
*  Disables block's operation and saves the user configuration. Should be called
*  just prior to entering sleep.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_ColorSensor_backup.PWMEnableState:  Is modified depending on the enable
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void PWM_ColorSensor_Sleep(void) 
{
    #if(PWM_ColorSensor_UseControl)
        if(PWM_ColorSensor_CTRL_ENABLE == (PWM_ColorSensor_CONTROL & PWM_ColorSensor_CTRL_ENABLE))
        {
            /*Component is enabled */
            PWM_ColorSensor_backup.PWMEnableState = 1u;
        }
        else
        {
            /* Component is disabled */
            PWM_ColorSensor_backup.PWMEnableState = 0u;
        }
    #endif /* (PWM_ColorSensor_UseControl) */

    /* Stop component */
    PWM_ColorSensor_Stop();

    /* Save registers configuration */
    PWM_ColorSensor_SaveConfig();
}


/*******************************************************************************
* Function Name: PWM_ColorSensor_Wakeup
********************************************************************************
*
* Summary:
*  Restores and enables the user configuration. Should be called just after
*  awaking from sleep.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_ColorSensor_backup.pwmEnable:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_ColorSensor_Wakeup(void) 
{
     /* Restore registers values */
    PWM_ColorSensor_RestoreConfig();

    if(PWM_ColorSensor_backup.PWMEnableState != 0u)
    {
        /* Enable component's operation */
        PWM_ColorSensor_Enable();
    } /* Do nothing if component's block was disabled before */

}


/* [] END OF FILE */
