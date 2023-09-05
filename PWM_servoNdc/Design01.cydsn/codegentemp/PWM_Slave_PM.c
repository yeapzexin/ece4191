/*******************************************************************************
* File Name: PWM_Slave_PM.c
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

#include "PWM_Slave.h"

static PWM_Slave_backupStruct PWM_Slave_backup;


/*******************************************************************************
* Function Name: PWM_Slave_SaveConfig
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
*  PWM_Slave_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void PWM_Slave_SaveConfig(void) 
{

    #if(!PWM_Slave_UsingFixedFunction)
        #if(!PWM_Slave_PWMModeIsCenterAligned)
            PWM_Slave_backup.PWMPeriod = PWM_Slave_ReadPeriod();
        #endif /* (!PWM_Slave_PWMModeIsCenterAligned) */
        PWM_Slave_backup.PWMUdb = PWM_Slave_ReadCounter();
        #if (PWM_Slave_UseStatus)
            PWM_Slave_backup.InterruptMaskValue = PWM_Slave_STATUS_MASK;
        #endif /* (PWM_Slave_UseStatus) */

        #if(PWM_Slave_DeadBandMode == PWM_Slave__B_PWM__DBM_256_CLOCKS || \
            PWM_Slave_DeadBandMode == PWM_Slave__B_PWM__DBM_2_4_CLOCKS)
            PWM_Slave_backup.PWMdeadBandValue = PWM_Slave_ReadDeadTime();
        #endif /*  deadband count is either 2-4 clocks or 256 clocks */

        #if(PWM_Slave_KillModeMinTime)
             PWM_Slave_backup.PWMKillCounterPeriod = PWM_Slave_ReadKillTime();
        #endif /* (PWM_Slave_KillModeMinTime) */

        #if(PWM_Slave_UseControl)
            PWM_Slave_backup.PWMControlRegister = PWM_Slave_ReadControlRegister();
        #endif /* (PWM_Slave_UseControl) */
    #endif  /* (!PWM_Slave_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: PWM_Slave_RestoreConfig
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
*  PWM_Slave_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_Slave_RestoreConfig(void) 
{
        #if(!PWM_Slave_UsingFixedFunction)
            #if(!PWM_Slave_PWMModeIsCenterAligned)
                PWM_Slave_WritePeriod(PWM_Slave_backup.PWMPeriod);
            #endif /* (!PWM_Slave_PWMModeIsCenterAligned) */

            PWM_Slave_WriteCounter(PWM_Slave_backup.PWMUdb);

            #if (PWM_Slave_UseStatus)
                PWM_Slave_STATUS_MASK = PWM_Slave_backup.InterruptMaskValue;
            #endif /* (PWM_Slave_UseStatus) */

            #if(PWM_Slave_DeadBandMode == PWM_Slave__B_PWM__DBM_256_CLOCKS || \
                PWM_Slave_DeadBandMode == PWM_Slave__B_PWM__DBM_2_4_CLOCKS)
                PWM_Slave_WriteDeadTime(PWM_Slave_backup.PWMdeadBandValue);
            #endif /* deadband count is either 2-4 clocks or 256 clocks */

            #if(PWM_Slave_KillModeMinTime)
                PWM_Slave_WriteKillTime(PWM_Slave_backup.PWMKillCounterPeriod);
            #endif /* (PWM_Slave_KillModeMinTime) */

            #if(PWM_Slave_UseControl)
                PWM_Slave_WriteControlRegister(PWM_Slave_backup.PWMControlRegister);
            #endif /* (PWM_Slave_UseControl) */
        #endif  /* (!PWM_Slave_UsingFixedFunction) */
    }


/*******************************************************************************
* Function Name: PWM_Slave_Sleep
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
*  PWM_Slave_backup.PWMEnableState:  Is modified depending on the enable
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void PWM_Slave_Sleep(void) 
{
    #if(PWM_Slave_UseControl)
        if(PWM_Slave_CTRL_ENABLE == (PWM_Slave_CONTROL & PWM_Slave_CTRL_ENABLE))
        {
            /*Component is enabled */
            PWM_Slave_backup.PWMEnableState = 1u;
        }
        else
        {
            /* Component is disabled */
            PWM_Slave_backup.PWMEnableState = 0u;
        }
    #endif /* (PWM_Slave_UseControl) */

    /* Stop component */
    PWM_Slave_Stop();

    /* Save registers configuration */
    PWM_Slave_SaveConfig();
}


/*******************************************************************************
* Function Name: PWM_Slave_Wakeup
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
*  PWM_Slave_backup.pwmEnable:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_Slave_Wakeup(void) 
{
     /* Restore registers values */
    PWM_Slave_RestoreConfig();

    if(PWM_Slave_backup.PWMEnableState != 0u)
    {
        /* Enable component's operation */
        PWM_Slave_Enable();
    } /* Do nothing if component's block was disabled before */

}


/* [] END OF FILE */
