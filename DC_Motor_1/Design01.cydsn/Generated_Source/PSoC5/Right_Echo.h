/*******************************************************************************
* File Name: Right_Echo.h  
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

#if !defined(CY_PINS_Right_Echo_H) /* Pins Right_Echo_H */
#define CY_PINS_Right_Echo_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Right_Echo_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Right_Echo__PORT == 15 && ((Right_Echo__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    Right_Echo_Write(uint8 value);
void    Right_Echo_SetDriveMode(uint8 mode);
uint8   Right_Echo_ReadDataReg(void);
uint8   Right_Echo_Read(void);
void    Right_Echo_SetInterruptMode(uint16 position, uint16 mode);
uint8   Right_Echo_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the Right_Echo_SetDriveMode() function.
     *  @{
     */
        #define Right_Echo_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define Right_Echo_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define Right_Echo_DM_RES_UP          PIN_DM_RES_UP
        #define Right_Echo_DM_RES_DWN         PIN_DM_RES_DWN
        #define Right_Echo_DM_OD_LO           PIN_DM_OD_LO
        #define Right_Echo_DM_OD_HI           PIN_DM_OD_HI
        #define Right_Echo_DM_STRONG          PIN_DM_STRONG
        #define Right_Echo_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define Right_Echo_MASK               Right_Echo__MASK
#define Right_Echo_SHIFT              Right_Echo__SHIFT
#define Right_Echo_WIDTH              1u

/* Interrupt constants */
#if defined(Right_Echo__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in Right_Echo_SetInterruptMode() function.
     *  @{
     */
        #define Right_Echo_INTR_NONE      (uint16)(0x0000u)
        #define Right_Echo_INTR_RISING    (uint16)(0x0001u)
        #define Right_Echo_INTR_FALLING   (uint16)(0x0002u)
        #define Right_Echo_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define Right_Echo_INTR_MASK      (0x01u) 
#endif /* (Right_Echo__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Right_Echo_PS                     (* (reg8 *) Right_Echo__PS)
/* Data Register */
#define Right_Echo_DR                     (* (reg8 *) Right_Echo__DR)
/* Port Number */
#define Right_Echo_PRT_NUM                (* (reg8 *) Right_Echo__PRT) 
/* Connect to Analog Globals */                                                  
#define Right_Echo_AG                     (* (reg8 *) Right_Echo__AG)                       
/* Analog MUX bux enable */
#define Right_Echo_AMUX                   (* (reg8 *) Right_Echo__AMUX) 
/* Bidirectional Enable */                                                        
#define Right_Echo_BIE                    (* (reg8 *) Right_Echo__BIE)
/* Bit-mask for Aliased Register Access */
#define Right_Echo_BIT_MASK               (* (reg8 *) Right_Echo__BIT_MASK)
/* Bypass Enable */
#define Right_Echo_BYP                    (* (reg8 *) Right_Echo__BYP)
/* Port wide control signals */                                                   
#define Right_Echo_CTL                    (* (reg8 *) Right_Echo__CTL)
/* Drive Modes */
#define Right_Echo_DM0                    (* (reg8 *) Right_Echo__DM0) 
#define Right_Echo_DM1                    (* (reg8 *) Right_Echo__DM1)
#define Right_Echo_DM2                    (* (reg8 *) Right_Echo__DM2) 
/* Input Buffer Disable Override */
#define Right_Echo_INP_DIS                (* (reg8 *) Right_Echo__INP_DIS)
/* LCD Common or Segment Drive */
#define Right_Echo_LCD_COM_SEG            (* (reg8 *) Right_Echo__LCD_COM_SEG)
/* Enable Segment LCD */
#define Right_Echo_LCD_EN                 (* (reg8 *) Right_Echo__LCD_EN)
/* Slew Rate Control */
#define Right_Echo_SLW                    (* (reg8 *) Right_Echo__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Right_Echo_PRTDSI__CAPS_SEL       (* (reg8 *) Right_Echo__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Right_Echo_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Right_Echo__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Right_Echo_PRTDSI__OE_SEL0        (* (reg8 *) Right_Echo__PRTDSI__OE_SEL0) 
#define Right_Echo_PRTDSI__OE_SEL1        (* (reg8 *) Right_Echo__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Right_Echo_PRTDSI__OUT_SEL0       (* (reg8 *) Right_Echo__PRTDSI__OUT_SEL0) 
#define Right_Echo_PRTDSI__OUT_SEL1       (* (reg8 *) Right_Echo__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Right_Echo_PRTDSI__SYNC_OUT       (* (reg8 *) Right_Echo__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(Right_Echo__SIO_CFG)
    #define Right_Echo_SIO_HYST_EN        (* (reg8 *) Right_Echo__SIO_HYST_EN)
    #define Right_Echo_SIO_REG_HIFREQ     (* (reg8 *) Right_Echo__SIO_REG_HIFREQ)
    #define Right_Echo_SIO_CFG            (* (reg8 *) Right_Echo__SIO_CFG)
    #define Right_Echo_SIO_DIFF           (* (reg8 *) Right_Echo__SIO_DIFF)
#endif /* (Right_Echo__SIO_CFG) */

/* Interrupt Registers */
#if defined(Right_Echo__INTSTAT)
    #define Right_Echo_INTSTAT            (* (reg8 *) Right_Echo__INTSTAT)
    #define Right_Echo_SNAP               (* (reg8 *) Right_Echo__SNAP)
    
	#define Right_Echo_0_INTTYPE_REG 		(* (reg8 *) Right_Echo__0__INTTYPE)
#endif /* (Right_Echo__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Right_Echo_H */


/* [] END OF FILE */
