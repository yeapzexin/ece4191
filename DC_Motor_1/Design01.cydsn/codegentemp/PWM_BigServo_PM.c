/*******************************************************************************
* File Name: PWM_BigServo_PM.c
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

#include "PWM_BigServo.h"

static PWM_BigServo_backupStruct PWM_BigServo_backup;


/*******************************************************************************
* Function Name: PWM_BigServo_SaveConfig
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
*  PWM_BigServo_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void PWM_BigServo_SaveConfig(void) 
{

    #if(!PWM_BigServo_UsingFixedFunction)
        #if(!PWM_BigServo_PWMModeIsCenterAligned)
            PWM_BigServo_backup.PWMPeriod = PWM_BigServo_ReadPeriod();
        #endif /* (!PWM_BigServo_PWMModeIsCenterAligned) */
        PWM_BigServo_backup.PWMUdb = PWM_BigServo_ReadCounter();
        #if (PWM_BigServo_UseStatus)
            PWM_BigServo_backup.InterruptMaskValue = PWM_BigServo_STATUS_MASK;
        #endif /* (PWM_BigServo_UseStatus) */

        #if(PWM_BigServo_DeadBandMode == PWM_BigServo__B_PWM__DBM_256_CLOCKS || \
            PWM_BigServo_DeadBandMode == PWM_BigServo__B_PWM__DBM_2_4_CLOCKS)
            PWM_BigServo_backup.PWMdeadBandValue = PWM_BigServo_ReadDeadTime();
        #endif /*  deadband count is either 2-4 clocks or 256 clocks */

        #if(PWM_BigServo_KillModeMinTime)
             PWM_BigServo_backup.PWMKillCounterPeriod = PWM_BigServo_ReadKillTime();
        #endif /* (PWM_BigServo_KillModeMinTime) */

        #if(PWM_BigServo_UseControl)
            PWM_BigServo_backup.PWMControlRegister = PWM_BigServo_ReadControlRegister();
        #endif /* (PWM_BigServo_UseControl) */
    #endif  /* (!PWM_BigServo_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: PWM_BigServo_RestoreConfig
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
*  PWM_BigServo_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_BigServo_RestoreConfig(void) 
{
        #if(!PWM_BigServo_UsingFixedFunction)
            #if(!PWM_BigServo_PWMModeIsCenterAligned)
                PWM_BigServo_WritePeriod(PWM_BigServo_backup.PWMPeriod);
            #endif /* (!PWM_BigServo_PWMModeIsCenterAligned) */

            PWM_BigServo_WriteCounter(PWM_BigServo_backup.PWMUdb);

            #if (PWM_BigServo_UseStatus)
                PWM_BigServo_STATUS_MASK = PWM_BigServo_backup.InterruptMaskValue;
            #endif /* (PWM_BigServo_UseStatus) */

            #if(PWM_BigServo_DeadBandMode == PWM_BigServo__B_PWM__DBM_256_CLOCKS || \
                PWM_BigServo_DeadBandMode == PWM_BigServo__B_PWM__DBM_2_4_CLOCKS)
                PWM_BigServo_WriteDeadTime(PWM_BigServo_backup.PWMdeadBandValue);
            #endif /* deadband count is either 2-4 clocks or 256 clocks */

            #if(PWM_BigServo_KillModeMinTime)
                PWM_BigServo_WriteKillTime(PWM_BigServo_backup.PWMKillCounterPeriod);
            #endif /* (PWM_BigServo_KillModeMinTime) */

            #if(PWM_BigServo_UseControl)
                PWM_BigServo_WriteControlRegister(PWM_BigServo_backup.PWMControlRegister);
            #endif /* (PWM_BigServo_UseControl) */
        #endif  /* (!PWM_BigServo_UsingFixedFunction) */
    }


/*******************************************************************************
* Function Name: PWM_BigServo_Sleep
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
*  PWM_BigServo_backup.PWMEnableState:  Is modified depending on the enable
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void PWM_BigServo_Sleep(void) 
{
    #if(PWM_BigServo_UseControl)
        if(PWM_BigServo_CTRL_ENABLE == (PWM_BigServo_CONTROL & PWM_BigServo_CTRL_ENABLE))
        {
            /*Component is enabled */
            PWM_BigServo_backup.PWMEnableState = 1u;
        }
        else
        {
            /* Component is disabled */
            PWM_BigServo_backup.PWMEnableState = 0u;
        }
    #endif /* (PWM_BigServo_UseControl) */

    /* Stop component */
    PWM_BigServo_Stop();

    /* Save registers configuration */
    PWM_BigServo_SaveConfig();
}


/*******************************************************************************
* Function Name: PWM_BigServo_Wakeup
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
*  PWM_BigServo_backup.pwmEnable:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_BigServo_Wakeup(void) 
{
     /* Restore registers values */
    PWM_BigServo_RestoreConfig();

    if(PWM_BigServo_backup.PWMEnableState != 0u)
    {
        /* Enable component's operation */
        PWM_BigServo_Enable();
    } /* Do nothing if component's block was disabled before */

}


/* [] END OF FILE */
