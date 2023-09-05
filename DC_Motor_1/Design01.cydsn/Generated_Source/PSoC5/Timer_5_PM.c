/*******************************************************************************
* File Name: Timer_5_PM.c
* Version 2.80
*
*  Description:
*     This file provides the power management source code to API for the
*     Timer.
*
*   Note:
*     None
*
*******************************************************************************
* Copyright 2008-2017, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
********************************************************************************/

#include "Timer_5.h"

static Timer_5_backupStruct Timer_5_backup;


/*******************************************************************************
* Function Name: Timer_5_SaveConfig
********************************************************************************
*
* Summary:
*     Save the current user configuration
*
* Parameters:
*  void
*
* Return:
*  void
*
* Global variables:
*  Timer_5_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void Timer_5_SaveConfig(void) 
{
    #if (!Timer_5_UsingFixedFunction)
        Timer_5_backup.TimerUdb = Timer_5_ReadCounter();
        Timer_5_backup.InterruptMaskValue = Timer_5_STATUS_MASK;
        #if (Timer_5_UsingHWCaptureCounter)
            Timer_5_backup.TimerCaptureCounter = Timer_5_ReadCaptureCount();
        #endif /* Back Up capture counter register  */

        #if(!Timer_5_UDB_CONTROL_REG_REMOVED)
            Timer_5_backup.TimerControlRegister = Timer_5_ReadControlRegister();
        #endif /* Backup the enable state of the Timer component */
    #endif /* Backup non retention registers in UDB implementation. All fixed function registers are retention */
}


/*******************************************************************************
* Function Name: Timer_5_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration.
*
* Parameters:
*  void
*
* Return:
*  void
*
* Global variables:
*  Timer_5_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Timer_5_RestoreConfig(void) 
{   
    #if (!Timer_5_UsingFixedFunction)

        Timer_5_WriteCounter(Timer_5_backup.TimerUdb);
        Timer_5_STATUS_MASK =Timer_5_backup.InterruptMaskValue;
        #if (Timer_5_UsingHWCaptureCounter)
            Timer_5_SetCaptureCount(Timer_5_backup.TimerCaptureCounter);
        #endif /* Restore Capture counter register*/

        #if(!Timer_5_UDB_CONTROL_REG_REMOVED)
            Timer_5_WriteControlRegister(Timer_5_backup.TimerControlRegister);
        #endif /* Restore the enable state of the Timer component */
    #endif /* Restore non retention registers in the UDB implementation only */
}


/*******************************************************************************
* Function Name: Timer_5_Sleep
********************************************************************************
*
* Summary:
*     Stop and Save the user configuration
*
* Parameters:
*  void
*
* Return:
*  void
*
* Global variables:
*  Timer_5_backup.TimerEnableState:  Is modified depending on the
*  enable state of the block before entering sleep mode.
*
*******************************************************************************/
void Timer_5_Sleep(void) 
{
    #if(!Timer_5_UDB_CONTROL_REG_REMOVED)
        /* Save Counter's enable state */
        if(Timer_5_CTRL_ENABLE == (Timer_5_CONTROL & Timer_5_CTRL_ENABLE))
        {
            /* Timer is enabled */
            Timer_5_backup.TimerEnableState = 1u;
        }
        else
        {
            /* Timer is disabled */
            Timer_5_backup.TimerEnableState = 0u;
        }
    #endif /* Back up enable state from the Timer control register */
    Timer_5_Stop();
    Timer_5_SaveConfig();
}


/*******************************************************************************
* Function Name: Timer_5_Wakeup
********************************************************************************
*
* Summary:
*  Restores and enables the user configuration
*
* Parameters:
*  void
*
* Return:
*  void
*
* Global variables:
*  Timer_5_backup.enableState:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Timer_5_Wakeup(void) 
{
    Timer_5_RestoreConfig();
    #if(!Timer_5_UDB_CONTROL_REG_REMOVED)
        if(Timer_5_backup.TimerEnableState == 1u)
        {     /* Enable Timer's operation */
                Timer_5_Enable();
        } /* Do nothing if Timer was disabled before */
    #endif /* Remove this code section if Control register is removed */
}


/* [] END OF FILE */
