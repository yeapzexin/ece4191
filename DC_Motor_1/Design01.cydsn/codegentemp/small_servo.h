/*******************************************************************************
* File Name: small_servo.h  
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

#if !defined(CY_PINS_small_servo_H) /* Pins small_servo_H */
#define CY_PINS_small_servo_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "small_servo_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 small_servo__PORT == 15 && ((small_servo__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    small_servo_Write(uint8 value);
void    small_servo_SetDriveMode(uint8 mode);
uint8   small_servo_ReadDataReg(void);
uint8   small_servo_Read(void);
void    small_servo_SetInterruptMode(uint16 position, uint16 mode);
uint8   small_servo_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the small_servo_SetDriveMode() function.
     *  @{
     */
        #define small_servo_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define small_servo_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define small_servo_DM_RES_UP          PIN_DM_RES_UP
        #define small_servo_DM_RES_DWN         PIN_DM_RES_DWN
        #define small_servo_DM_OD_LO           PIN_DM_OD_LO
        #define small_servo_DM_OD_HI           PIN_DM_OD_HI
        #define small_servo_DM_STRONG          PIN_DM_STRONG
        #define small_servo_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define small_servo_MASK               small_servo__MASK
#define small_servo_SHIFT              small_servo__SHIFT
#define small_servo_WIDTH              1u

/* Interrupt constants */
#if defined(small_servo__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in small_servo_SetInterruptMode() function.
     *  @{
     */
        #define small_servo_INTR_NONE      (uint16)(0x0000u)
        #define small_servo_INTR_RISING    (uint16)(0x0001u)
        #define small_servo_INTR_FALLING   (uint16)(0x0002u)
        #define small_servo_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define small_servo_INTR_MASK      (0x01u) 
#endif /* (small_servo__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define small_servo_PS                     (* (reg8 *) small_servo__PS)
/* Data Register */
#define small_servo_DR                     (* (reg8 *) small_servo__DR)
/* Port Number */
#define small_servo_PRT_NUM                (* (reg8 *) small_servo__PRT) 
/* Connect to Analog Globals */                                                  
#define small_servo_AG                     (* (reg8 *) small_servo__AG)                       
/* Analog MUX bux enable */
#define small_servo_AMUX                   (* (reg8 *) small_servo__AMUX) 
/* Bidirectional Enable */                                                        
#define small_servo_BIE                    (* (reg8 *) small_servo__BIE)
/* Bit-mask for Aliased Register Access */
#define small_servo_BIT_MASK               (* (reg8 *) small_servo__BIT_MASK)
/* Bypass Enable */
#define small_servo_BYP                    (* (reg8 *) small_servo__BYP)
/* Port wide control signals */                                                   
#define small_servo_CTL                    (* (reg8 *) small_servo__CTL)
/* Drive Modes */
#define small_servo_DM0                    (* (reg8 *) small_servo__DM0) 
#define small_servo_DM1                    (* (reg8 *) small_servo__DM1)
#define small_servo_DM2                    (* (reg8 *) small_servo__DM2) 
/* Input Buffer Disable Override */
#define small_servo_INP_DIS                (* (reg8 *) small_servo__INP_DIS)
/* LCD Common or Segment Drive */
#define small_servo_LCD_COM_SEG            (* (reg8 *) small_servo__LCD_COM_SEG)
/* Enable Segment LCD */
#define small_servo_LCD_EN                 (* (reg8 *) small_servo__LCD_EN)
/* Slew Rate Control */
#define small_servo_SLW                    (* (reg8 *) small_servo__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define small_servo_PRTDSI__CAPS_SEL       (* (reg8 *) small_servo__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define small_servo_PRTDSI__DBL_SYNC_IN    (* (reg8 *) small_servo__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define small_servo_PRTDSI__OE_SEL0        (* (reg8 *) small_servo__PRTDSI__OE_SEL0) 
#define small_servo_PRTDSI__OE_SEL1        (* (reg8 *) small_servo__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define small_servo_PRTDSI__OUT_SEL0       (* (reg8 *) small_servo__PRTDSI__OUT_SEL0) 
#define small_servo_PRTDSI__OUT_SEL1       (* (reg8 *) small_servo__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define small_servo_PRTDSI__SYNC_OUT       (* (reg8 *) small_servo__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(small_servo__SIO_CFG)
    #define small_servo_SIO_HYST_EN        (* (reg8 *) small_servo__SIO_HYST_EN)
    #define small_servo_SIO_REG_HIFREQ     (* (reg8 *) small_servo__SIO_REG_HIFREQ)
    #define small_servo_SIO_CFG            (* (reg8 *) small_servo__SIO_CFG)
    #define small_servo_SIO_DIFF           (* (reg8 *) small_servo__SIO_DIFF)
#endif /* (small_servo__SIO_CFG) */

/* Interrupt Registers */
#if defined(small_servo__INTSTAT)
    #define small_servo_INTSTAT            (* (reg8 *) small_servo__INTSTAT)
    #define small_servo_SNAP               (* (reg8 *) small_servo__SNAP)
    
	#define small_servo_0_INTTYPE_REG 		(* (reg8 *) small_servo__0__INTTYPE)
#endif /* (small_servo__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_small_servo_H */


/* [] END OF FILE */
