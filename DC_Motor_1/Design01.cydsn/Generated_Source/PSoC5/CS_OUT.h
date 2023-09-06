/*******************************************************************************
* File Name: CS_out.h  
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

#if !defined(CY_PINS_CS_out_H) /* Pins CS_out_H */
#define CY_PINS_CS_out_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "CS_out_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 CS_out__PORT == 15 && ((CS_out__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    CS_out_Write(uint8 value);
void    CS_out_SetDriveMode(uint8 mode);
uint8   CS_out_ReadDataReg(void);
uint8   CS_out_Read(void);
void    CS_out_SetInterruptMode(uint16 position, uint16 mode);
uint8   CS_out_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the CS_out_SetDriveMode() function.
     *  @{
     */
        #define CS_out_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define CS_out_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define CS_out_DM_RES_UP          PIN_DM_RES_UP
        #define CS_out_DM_RES_DWN         PIN_DM_RES_DWN
        #define CS_out_DM_OD_LO           PIN_DM_OD_LO
        #define CS_out_DM_OD_HI           PIN_DM_OD_HI
        #define CS_out_DM_STRONG          PIN_DM_STRONG
        #define CS_out_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define CS_out_MASK               CS_out__MASK
#define CS_out_SHIFT              CS_out__SHIFT
#define CS_out_WIDTH              1u

/* Interrupt constants */
#if defined(CS_out__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in CS_out_SetInterruptMode() function.
     *  @{
     */
        #define CS_out_INTR_NONE      (uint16)(0x0000u)
        #define CS_out_INTR_RISING    (uint16)(0x0001u)
        #define CS_out_INTR_FALLING   (uint16)(0x0002u)
        #define CS_out_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define CS_out_INTR_MASK      (0x01u) 
#endif /* (CS_out__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define CS_out_PS                     (* (reg8 *) CS_out__PS)
/* Data Register */
#define CS_out_DR                     (* (reg8 *) CS_out__DR)
/* Port Number */
#define CS_out_PRT_NUM                (* (reg8 *) CS_out__PRT) 
/* Connect to Analog Globals */                                                  
#define CS_out_AG                     (* (reg8 *) CS_out__AG)                       
/* Analog MUX bux enable */
#define CS_out_AMUX                   (* (reg8 *) CS_out__AMUX) 
/* Bidirectional Enable */                                                        
#define CS_out_BIE                    (* (reg8 *) CS_out__BIE)
/* Bit-mask for Aliased Register Access */
#define CS_out_BIT_MASK               (* (reg8 *) CS_out__BIT_MASK)
/* Bypass Enable */
#define CS_out_BYP                    (* (reg8 *) CS_out__BYP)
/* Port wide control signals */                                                   
#define CS_out_CTL                    (* (reg8 *) CS_out__CTL)
/* Drive Modes */
#define CS_out_DM0                    (* (reg8 *) CS_out__DM0) 
#define CS_out_DM1                    (* (reg8 *) CS_out__DM1)
#define CS_out_DM2                    (* (reg8 *) CS_out__DM2) 
/* Input Buffer Disable Override */
#define CS_out_INP_DIS                (* (reg8 *) CS_out__INP_DIS)
/* LCD Common or Segment Drive */
#define CS_out_LCD_COM_SEG            (* (reg8 *) CS_out__LCD_COM_SEG)
/* Enable Segment LCD */
#define CS_out_LCD_EN                 (* (reg8 *) CS_out__LCD_EN)
/* Slew Rate Control */
#define CS_out_SLW                    (* (reg8 *) CS_out__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define CS_out_PRTDSI__CAPS_SEL       (* (reg8 *) CS_out__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define CS_out_PRTDSI__DBL_SYNC_IN    (* (reg8 *) CS_out__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define CS_out_PRTDSI__OE_SEL0        (* (reg8 *) CS_out__PRTDSI__OE_SEL0) 
#define CS_out_PRTDSI__OE_SEL1        (* (reg8 *) CS_out__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define CS_out_PRTDSI__OUT_SEL0       (* (reg8 *) CS_out__PRTDSI__OUT_SEL0) 
#define CS_out_PRTDSI__OUT_SEL1       (* (reg8 *) CS_out__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define CS_out_PRTDSI__SYNC_OUT       (* (reg8 *) CS_out__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(CS_out__SIO_CFG)
    #define CS_out_SIO_HYST_EN        (* (reg8 *) CS_out__SIO_HYST_EN)
    #define CS_out_SIO_REG_HIFREQ     (* (reg8 *) CS_out__SIO_REG_HIFREQ)
    #define CS_out_SIO_CFG            (* (reg8 *) CS_out__SIO_CFG)
    #define CS_out_SIO_DIFF           (* (reg8 *) CS_out__SIO_DIFF)
#endif /* (CS_out__SIO_CFG) */

/* Interrupt Registers */
#if defined(CS_out__INTSTAT)
    #define CS_out_INTSTAT            (* (reg8 *) CS_out__INTSTAT)
    #define CS_out_SNAP               (* (reg8 *) CS_out__SNAP)
    
	#define CS_out_0_INTTYPE_REG 		(* (reg8 *) CS_out__0__INTTYPE)
#endif /* (CS_out__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_CS_out_H */


/* [] END OF FILE */
