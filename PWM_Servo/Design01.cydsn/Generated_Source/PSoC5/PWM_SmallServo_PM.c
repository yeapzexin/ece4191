/*******************************************************************************
* File Name: PWM_SmallServo_PM.c
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

#include "PWM_SmallServo.h"

static PWM_SmallServo_backupStruct PWM_SmallServo_backup;


/*******************************************************************************
* Function Name: PWM_SmallServo_SaveConfig
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
*  PWM_SmallServo_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void PWM_SmallServo_SaveConfig(void) 
{

    #if(!PWM_SmallServo_UsingFixedFunction)
        #if(!PWM_SmallServo_PWMModeIsCenterAligned)
            PWM_SmallServo_backup.PWMPeriod = PWM_SmallServo_ReadPeriod();
        #endif /* (!PWM_SmallServo_PWMModeIsCenterAligned) */
        PWM_SmallServo_backup.PWMUdb = PWM_SmallServo_ReadCounter();
        #if (PWM_SmallServo_UseStatus)
            PWM_SmallServo_backup.InterruptMaskValue = PWM_SmallServo_STATUS_MASK;
        #endif /* (PWM_SmallServo_UseStatus) */

        #if(PWM_SmallServo_DeadBandMode == PWM_SmallServo__B_PWM__DBM_256_CLOCKS || \
            PWM_SmallServo_DeadBandMode == PWM_SmallServo__B_PWM__DBM_2_4_CLOCKS)
            PWM_SmallServo_backup.PWMdeadBandValue = PWM_SmallServo_ReadDeadTime();
        #endif /*  deadband count is either 2-4 clocks or 256 clocks */

        #if(PWM_SmallServo_KillModeMinTime)
             PWM_SmallServo_backup.PWMKillCounterPeriod = PWM_SmallServo_ReadKillTime();
        #endif /* (PWM_SmallServo_KillModeMinTime) */

        #if(PWM_SmallServo_UseControl)
            PWM_SmallServo_backup.PWMControlRegister = PWM_SmallServo_ReadControlRegister();
        #endif /* (PWM_SmallServo_UseControl) */
    #endif  /* (!PWM_SmallServo_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: PWM_SmallServo_RestoreConfig
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
*  PWM_SmallServo_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_SmallServo_RestoreConfig(void) 
{
        #if(!PWM_SmallServo_UsingFixedFunction)
            #if(!PWM_SmallServo_PWMModeIsCenterAligned)
                PWM_SmallServo_WritePeriod(PWM_SmallServo_backup.PWMPeriod);
            #endif /* (!PWM_SmallServo_PWMModeIsCenterAligned) */

            PWM_SmallServo_WriteCounter(PWM_SmallServo_backup.PWMUdb);

            #if (PWM_SmallServo_UseStatus)
                PWM_SmallServo_STATUS_MASK = PWM_SmallServo_backup.InterruptMaskValue;
            #endif /* (PWM_SmallServo_UseStatus) */

            #if(PWM_SmallServo_DeadBandMode == PWM_SmallServo__B_PWM__DBM_256_CLOCKS || \
                PWM_SmallServo_DeadBandMode == PWM_SmallServo__B_PWM__DBM_2_4_CLOCKS)
                PWM_SmallServo_WriteDeadTime(PWM_SmallServo_backup.PWMdeadBandValue);
            #endif /* deadband count is either 2-4 clocks or 256 clocks */

            #if(PWM_SmallServo_KillModeMinTime)
                PWM_SmallServo_WriteKillTime(PWM_SmallServo_backup.PWMKillCounterPeriod);
            #endif /* (PWM_SmallServo_KillModeMinTime) */

            #if(PWM_SmallServo_UseControl)
                PWM_SmallServo_WriteControlRegister(PWM_SmallServo_backup.PWMControlRegister);
            #endif /* (PWM_SmallServo_UseControl) */
        #endif  /* (!PWM_SmallServo_UsingFixedFunction) */
    }


/*******************************************************************************
* Function Name: PWM_SmallServo_Sleep
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
*  PWM_SmallServo_backup.PWMEnableState:  Is modified depending on the enable
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void PWM_SmallServo_Sleep(void) 
{
    #if(PWM_SmallServo_UseControl)
        if(PWM_SmallServo_CTRL_ENABLE == (PWM_SmallServo_CONTROL & PWM_SmallServo_CTRL_ENABLE))
        {
            /*Component is enabled */
            PWM_SmallServo_backup.PWMEnableState = 1u;
        }
        else
        {
            /* Component is disabled */
            PWM_SmallServo_backup.PWMEnableState = 0u;
        }
    #endif /* (PWM_SmallServo_UseControl) */

    /* Stop component */
    PWM_SmallServo_Stop();

    /* Save registers configuration */
    PWM_SmallServo_SaveConfig();
}


/*******************************************************************************
* Function Name: PWM_SmallServo_Wakeup
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
*  PWM_SmallServo_backup.pwmEnable:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_SmallServo_Wakeup(void) 
{
     /* Restore registers values */
    PWM_SmallServo_RestoreConfig();

    if(PWM_SmallServo_backup.PWMEnableState != 0u)
    {
        /* Enable component's operation */
        PWM_SmallServo_Enable();
    } /* Do nothing if component's block was disabled before */

}


/* [] END OF FILE */
