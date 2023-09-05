/*******************************************************************************
* File Name: is_moving.h  
* Version 2.20
*
* Description:
*  This file contains Pin function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_is_moving_H) /* Pins is_moving_H */
#define CY_PINS_is_moving_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "is_moving_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 is_moving__PORT == 15 && ((is_moving__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    is_moving_Write(uint8 value);
void    is_moving_SetDriveMode(uint8 mode);
uint8   is_moving_ReadDataReg(void);
uint8   is_moving_Read(void);
void    is_moving_SetInterruptMode(uint16 position, uint16 mode);
uint8   is_moving_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the is_moving_SetDriveMode() function.
     *  @{
     */
        #define is_moving_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define is_moving_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define is_moving_DM_RES_UP          PIN_DM_RES_UP
        #define is_moving_DM_RES_DWN         PIN_DM_RES_DWN
        #define is_moving_DM_OD_LO           PIN_DM_OD_LO
        #define is_moving_DM_OD_HI           PIN_DM_OD_HI
        #define is_moving_DM_STRONG          PIN_DM_STRONG
        #define is_moving_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define is_moving_MASK               is_moving__MASK
#define is_moving_SHIFT              is_moving__SHIFT
#define is_moving_WIDTH              1u

/* Interrupt constants */
#if defined(is_moving__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in is_moving_SetInterruptMode() function.
     *  @{
     */
        #define is_moving_INTR_NONE      (uint16)(0x0000u)
        #define is_moving_INTR_RISING    (uint16)(0x0001u)
        #define is_moving_INTR_FALLING   (uint16)(0x0002u)
        #define is_moving_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define is_moving_INTR_MASK      (0x01u) 
#endif /* (is_moving__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define is_moving_PS                     (* (reg8 *) is_moving__PS)
/* Data Register */
#define is_moving_DR                     (* (reg8 *) is_moving__DR)
/* Port Number */
#define is_moving_PRT_NUM                (* (reg8 *) is_moving__PRT) 
/* Connect to Analog Globals */                                                  
#define is_moving_AG                     (* (reg8 *) is_moving__AG)                       
/* Analog MUX bux enable */
#define is_moving_AMUX                   (* (reg8 *) is_moving__AMUX) 
/* Bidirectional Enable */                                                        
#define is_moving_BIE                    (* (reg8 *) is_moving__BIE)
/* Bit-mask for Aliased Register Access */
#define is_moving_BIT_MASK               (* (reg8 *) is_moving__BIT_MASK)
/* Bypass Enable */
#define is_moving_BYP                    (* (reg8 *) is_moving__BYP)
/* Port wide control signals */                                                   
#define is_moving_CTL                    (* (reg8 *) is_moving__CTL)
/* Drive Modes */
#define is_moving_DM0                    (* (reg8 *) is_moving__DM0) 
#define is_moving_DM1                    (* (reg8 *) is_moving__DM1)
#define is_moving_DM2                    (* (reg8 *) is_moving__DM2) 
/* Input Buffer Disable Override */
#define is_moving_INP_DIS                (* (reg8 *) is_moving__INP_DIS)
/* LCD Common or Segment Drive */
#define is_moving_LCD_COM_SEG            (* (reg8 *) is_moving__LCD_COM_SEG)
/* Enable Segment LCD */
#define is_moving_LCD_EN                 (* (reg8 *) is_moving__LCD_EN)
/* Slew Rate Control */
#define is_moving_SLW                    (* (reg8 *) is_moving__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define is_moving_PRTDSI__CAPS_SEL       (* (reg8 *) is_moving__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define is_moving_PRTDSI__DBL_SYNC_IN    (* (reg8 *) is_moving__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define is_moving_PRTDSI__OE_SEL0        (* (reg8 *) is_moving__PRTDSI__OE_SEL0) 
#define is_moving_PRTDSI__OE_SEL1        (* (reg8 *) is_moving__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define is_moving_PRTDSI__OUT_SEL0       (* (reg8 *) is_moving__PRTDSI__OUT_SEL0) 
#define is_moving_PRTDSI__OUT_SEL1       (* (reg8 *) is_moving__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define is_moving_PRTDSI__SYNC_OUT       (* (reg8 *) is_moving__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(is_moving__SIO_CFG)
    #define is_moving_SIO_HYST_EN        (* (reg8 *) is_moving__SIO_HYST_EN)
    #define is_moving_SIO_REG_HIFREQ     (* (reg8 *) is_moving__SIO_REG_HIFREQ)
    #define is_moving_SIO_CFG            (* (reg8 *) is_moving__SIO_CFG)
    #define is_moving_SIO_DIFF           (* (reg8 *) is_moving__SIO_DIFF)
#endif /* (is_moving__SIO_CFG) */

/* Interrupt Registers */
#if defined(is_moving__INTSTAT)
    #define is_moving_INTSTAT            (* (reg8 *) is_moving__INTSTAT)
    #define is_moving_SNAP               (* (reg8 *) is_moving__SNAP)
    
	#define is_moving_0_INTTYPE_REG 		(* (reg8 *) is_moving__0__INTTYPE)
#endif /* (is_moving__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_is_moving_H */


/* [] END OF FILE */
