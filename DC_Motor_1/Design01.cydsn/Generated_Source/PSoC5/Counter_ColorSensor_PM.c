/*******************************************************************************
* File Name: Counter_ColorSensor_PM.c  
* Version 3.0
*
*  Description:
*    This file provides the power management source code to API for the
*    Counter.  
*
*   Note:
*     None
*
********************************************************************************
* Copyright 2008-2012, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "Counter_ColorSensor.h"

static Counter_ColorSensor_backupStruct Counter_ColorSensor_backup;


/*******************************************************************************
* Function Name: Counter_ColorSensor_SaveConfig
********************************************************************************
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
*  Counter_ColorSensor_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Counter_ColorSensor_SaveConfig(void) 
{
    #if (!Counter_ColorSensor_UsingFixedFunction)

        Counter_ColorSensor_backup.CounterUdb = Counter_ColorSensor_ReadCounter();

        #if(!Counter_ColorSensor_ControlRegRemoved)
            Counter_ColorSensor_backup.CounterControlRegister = Counter_ColorSensor_ReadControlRegister();
        #endif /* (!Counter_ColorSensor_ControlRegRemoved) */

    #endif /* (!Counter_ColorSensor_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Counter_ColorSensor_RestoreConfig
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
*  Counter_ColorSensor_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Counter_ColorSensor_RestoreConfig(void) 
{      
    #if (!Counter_ColorSensor_UsingFixedFunction)

       Counter_ColorSensor_WriteCounter(Counter_ColorSensor_backup.CounterUdb);

        #if(!Counter_ColorSensor_ControlRegRemoved)
            Counter_ColorSensor_WriteControlRegister(Counter_ColorSensor_backup.CounterControlRegister);
        #endif /* (!Counter_ColorSensor_ControlRegRemoved) */

    #endif /* (!Counter_ColorSensor_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Counter_ColorSensor_Sleep
********************************************************************************
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
*  Counter_ColorSensor_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Counter_ColorSensor_Sleep(void) 
{
    #if(!Counter_ColorSensor_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Counter_ColorSensor_CTRL_ENABLE == (Counter_ColorSensor_CONTROL & Counter_ColorSensor_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Counter_ColorSensor_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Counter_ColorSensor_backup.CounterEnableState = 0u;
        }
    #else
        Counter_ColorSensor_backup.CounterEnableState = 1u;
        if(Counter_ColorSensor_backup.CounterEnableState != 0u)
        {
            Counter_ColorSensor_backup.CounterEnableState = 0u;
        }
    #endif /* (!Counter_ColorSensor_ControlRegRemoved) */
    
    Counter_ColorSensor_Stop();
    Counter_ColorSensor_SaveConfig();
}


/*******************************************************************************
* Function Name: Counter_ColorSensor_Wakeup
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
*  Counter_ColorSensor_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Counter_ColorSensor_Wakeup(void) 
{
    Counter_ColorSensor_RestoreConfig();
    #if(!Counter_ColorSensor_ControlRegRemoved)
        if(Counter_ColorSensor_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Counter_ColorSensor_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Counter_ColorSensor_ControlRegRemoved) */
    
}


/* [] END OF FILE */
