// ======================================================================
// Design01.v generated from TopDesign.cysch
// 09/04/2023 at 13:46
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

/* -- WARNING: The following section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_DIE_LEOPARD 1
`define CYDEV_CHIP_REV_LEOPARD_PRODUCTION 3
`define CYDEV_CHIP_REV_LEOPARD_ES3 3
`define CYDEV_CHIP_REV_LEOPARD_ES2 1
`define CYDEV_CHIP_REV_LEOPARD_ES1 0
`define CYDEV_CHIP_DIE_PSOC5LP 2
`define CYDEV_CHIP_REV_PSOC5LP_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC5LP_ES0 0
`define CYDEV_CHIP_DIE_PSOC5TM 3
`define CYDEV_CHIP_REV_PSOC5TM_PRODUCTION 1
`define CYDEV_CHIP_REV_PSOC5TM_ES1 1
`define CYDEV_CHIP_REV_PSOC5TM_ES0 0
`define CYDEV_CHIP_DIE_TMA4 4
`define CYDEV_CHIP_REV_TMA4_PRODUCTION 17
`define CYDEV_CHIP_REV_TMA4_ES 17
`define CYDEV_CHIP_REV_TMA4_ES2 33
`define CYDEV_CHIP_DIE_PSOC4A 5
`define CYDEV_CHIP_REV_PSOC4A_PRODUCTION 17
`define CYDEV_CHIP_REV_PSOC4A_ES0 17
`define CYDEV_CHIP_DIE_PSOC6ABLE2 6
`define CYDEV_CHIP_REV_PSOC6ABLE2_ES 17
`define CYDEV_CHIP_REV_PSOC6ABLE2_PRODUCTION 33
`define CYDEV_CHIP_REV_PSOC6ABLE2_NO_UDB 33
`define CYDEV_CHIP_DIE_VOLANS 7
`define CYDEV_CHIP_REV_VOLANS_PRODUCTION 0
`define CYDEV_CHIP_DIE_BERRYPECKER 8
`define CYDEV_CHIP_REV_BERRYPECKER_PRODUCTION 0
`define CYDEV_CHIP_DIE_CRANE 9
`define CYDEV_CHIP_REV_CRANE_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM3 10
`define CYDEV_CHIP_REV_FM3_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM4 11
`define CYDEV_CHIP_REV_FM4_PRODUCTION 0
`define CYDEV_CHIP_DIE_EXPECT 2
`define CYDEV_CHIP_REV_EXPECT 0
`define CYDEV_CHIP_DIE_ACTUAL 2
/* -- WARNING: The previous section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_FAMILY_PSOC6 4
`define CYDEV_CHIP_FAMILY_FM0P 5
`define CYDEV_CHIP_FAMILY_FM3 6
`define CYDEV_CHIP_FAMILY_FM4 7
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_MEMBER_5B 2
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 3
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_MEMBER_4G 4
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 5
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 6
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4E_CCG2_NO_USBPD 0
`define CYDEV_CHIP_MEMBER_4X 7
`define CYDEV_CHIP_REVISION_4X_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4O 8
`define CYDEV_CHIP_REVISION_4O_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4R 9
`define CYDEV_CHIP_REVISION_4R_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4T 10
`define CYDEV_CHIP_REVISION_4T_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 11
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4S 12
`define CYDEV_CHIP_REVISION_4S_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4W 13
`define CYDEV_CHIP_REVISION_4W_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AC 14
`define CYDEV_CHIP_REVISION_4AC_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AD 15
`define CYDEV_CHIP_REVISION_4AD_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AE 16
`define CYDEV_CHIP_REVISION_4AE_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Q 17
`define CYDEV_CHIP_REVISION_4Q_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Y 18
`define CYDEV_CHIP_REVISION_4Y_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Z 19
`define CYDEV_CHIP_REVISION_4Z_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 20
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 21
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 22
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4V 23
`define CYDEV_CHIP_REVISION_4V_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 24
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AA 25
`define CYDEV_CHIP_REVISION_4AA_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 26
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 27
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4P 28
`define CYDEV_CHIP_REVISION_4P_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4M 29
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AB 30
`define CYDEV_CHIP_REVISION_4AB_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 31
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 32
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_6A 33
`define CYDEV_CHIP_REVISION_6A_ES 17
`define CYDEV_CHIP_REVISION_6A_PRODUCTION 33
`define CYDEV_CHIP_REVISION_6A_NO_UDB 33
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE1 34
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE1_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE2 35
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE2_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE3 36
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM3 37
`define CYDEV_CHIP_REVISION_FM3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM4 38
`define CYDEV_CHIP_REVISION_FM4_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_USED 3
`define CYDEV_CHIP_MEMBER_USED 2
`define CYDEV_CHIP_REVISION_USED 0
// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: OneTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal\OneTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal\OneTerminal.v"
`endif

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=false, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=12500, CompareValue2=63, CONTROL3=1, ControlReg=false, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=true, FF8=false, FixedFunction=true, FixedFunctionUsed=1, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=1, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=25000, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=false, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=true, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=false, UDB8=false, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONFIG_TITLE=PWM_Master, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_Master, CY_INSTANCE_SHORT_NAME=PWM_Master, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=PWM_Master, )
module PWM_v3_30_0 (
    capture,
    clock,
    cmp_sel,
    enable,
    interrupt,
    kill,
    ph1,
    ph2,
    pwm,
    pwm1,
    pwm2,
    reset,
    tc,
    trigger);
    input       capture;
    input       clock;
    input       cmp_sel;
    input       enable;
    output      interrupt;
    input       kill;
    output      ph1;
    output      ph2;
    output      pwm;
    output      pwm1;
    output      pwm2;
    input       reset;
    output      tc;
    input       trigger;

    parameter Resolution = 16;

          wire  Net_114;
          wire  Net_113;
          wire  Net_107;
          wire  Net_96;
          wire  Net_55;
          wire  Net_57;
          wire  Net_101;
          wire  Net_54;
          wire  Net_63;

    cy_psoc3_timer_v1_0 PWMHW (
        .capture(capture),
        .clock(clock),
        .compare(Net_57),
        .enable(Net_113),
        .interrupt(Net_54),
        .kill(Net_107),
        .tc(Net_63),
        .timer_reset(reset));

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_57;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_54;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_63;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = kill;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// Component: B_Counter_v3_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Counter_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Counter_v3_0\B_Counter_v3_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Counter_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Counter_v3_0\B_Counter_v3_0.v"
`endif

// Counter_v3_0(CaptureMode=0, CaptureModeSoftware=0, ClockMode=1, CompareMode=0, CompareModeSoftware=0, CompareStatusEdgeSense=true, CompareValue=32768, CONTROL3=0, ControlRegRemoved=0, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InitCounterValue=32768, InterruptOnCapture=false, InterruptOnCompare=false, InterruptOnOverUnderFlow=false, InterruptOnTC=false, Period=32768, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, ReloadOnCapture=false, ReloadOnCompare=false, ReloadOnOverUnder=true, ReloadOnReset=true, Resolution=16, RunMode=0, UDB16=true, UDB24=false, UDB32=false, UDB8=false, UDBControlReg=true, UseInterrupt=true, VerilogSectionReplacementString=sC16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Counter_v3_0, CY_CONFIG_TITLE=Cnt16, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=QuadDec_1:Cnt16, CY_INSTANCE_SHORT_NAME=Cnt16, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=QuadDec_1_Cnt16, )
module Counter_v3_0_1 (
    capture,
    clock,
    comp,
    count,
    downCnt,
    enable,
    interrupt,
    reset,
    tc,
    up_ndown,
    upCnt);
    input       capture;
    input       clock;
    output      comp;
    input       count;
    input       downCnt;
    input       enable;
    output      interrupt;
    input       reset;
    output      tc;
    input       up_ndown;
    input       upCnt;

    parameter CaptureMode = 0;
    parameter ClockMode = 1;
    parameter CompareMode = 0;
    parameter CompareStatusEdgeSense = 1;
    parameter EnableMode = 0;
    parameter ReloadOnCapture = 0;
    parameter ReloadOnCompare = 0;
    parameter ReloadOnOverUnder = 1;
    parameter ReloadOnReset = 1;
    parameter Resolution = 16;
    parameter RunMode = 0;
    parameter UseInterrupt = 1;

          wire  Net_47;
          wire  Net_102;
          wire  Net_95;
          wire  Net_82;
          wire  Net_91;
          wire  Net_89;
          wire  Net_49;
          wire  Net_48;
          wire  Net_42;
          wire  Net_43;

	// int_vm (cy_virtualmux_v1_0)
	assign interrupt = Net_43;

	// TC_vm (cy_virtualmux_v1_0)
	assign tc = Net_49;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_82));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_89 = up_ndown;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_95));

	// vmEnableMode (cy_virtualmux_v1_0)
	assign Net_91 = enable;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

    B_Counter_v3_0 CounterUDB (
        .capture(capture),
        .clock(clock),
        .cmp_out(comp),
        .count(count),
        .dwncnt(downCnt),
        .enable(enable),
        .irq_out(Net_43),
        .reset(reset),
        .tc_out(Net_49),
        .up_ndown(Net_89),
        .upcnt(upCnt));
    defparam CounterUDB.CaptureMode = 0;
    defparam CounterUDB.ClockMode = 1;
    defparam CounterUDB.CompareMode = 0;
    defparam CounterUDB.CompareStatusEdgeSense = 1;
    defparam CounterUDB.EnableMode = 0;
    defparam CounterUDB.ReloadOnCapture = 0;
    defparam CounterUDB.ReloadOnCompare = 0;
    defparam CounterUDB.ReloadOnOverUnder = 1;
    defparam CounterUDB.ReloadOnReset = 1;
    defparam CounterUDB.Resolution = 16;
    defparam CounterUDB.RunMode = 0;
    defparam CounterUDB.UseInterrupt = 1;



endmodule

// Component: bQuadDec_v3_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bQuadDec_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bQuadDec_v3_0\bQuadDec_v3_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bQuadDec_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bQuadDec_v3_0\bQuadDec_v3_0.v"
`endif

// Component: not_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0\not_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0\not_v1_0.v"
`endif

// Component: and_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0\and_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0\and_v1_0.v"
`endif

// QuadDec_v3_0(Counter8bit=false, CounterResolution=1, CounterSize=16, CounterSizeReplacementString=int16, CounterSizeReplacementStringUnsigned=uint16, TypeCastReplacementString=int32, UsingGlitchFiltering=true, UsingIndexInput=false, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=QuadDec_v3_0, CY_CONFIG_TITLE=QuadDec_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=QuadDec_1, CY_INSTANCE_SHORT_NAME=QuadDec_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=QuadDec_1, )
module QuadDec_v3_0_2 (
    clock,
    index,
    interrupt,
    quad_A,
    quad_B);
    input       clock;
    input       index;
    output      interrupt;
    input       quad_A;
    input       quad_B;

    parameter CounterResolution = 1;
    parameter UsingGlitchFiltering = 1;
    parameter UsingIndexInput = 0;

          wire  Net_1125;
          wire  Net_1123;
          wire  Net_1241;
          wire  Net_1126;
          wire  Net_1124;
          wire  Net_1131;
          wire  Net_1129;
          wire  Net_1243;
          wire  Net_1132;
          wire  Net_1130;
          wire  Net_1287;
          wire  Net_1272;
          wire  Net_1290;
          wire  Net_1269;
          wire  Net_1264;
          wire  Net_1275;
          wire  Net_1276;
          wire  Net_1203;
          wire  Net_1260;
          wire  Net_1232;
          wire  Net_1229;
          wire  Net_1251;
          wire  Net_611;
          wire  Net_1151;
          wire  Net_1248;
          wire  Net_530;

    Counter_v3_0_1 Cnt16 (
        .capture(1'b0),
        .clock(clock),
        .comp(Net_1264),
        .count(Net_1203),
        .downCnt(1'b0),
        .enable(1'b0),
        .interrupt(Net_1129),
        .reset(Net_1260),
        .tc(Net_1275),
        .up_ndown(Net_1251),
        .upCnt(1'b0));
    defparam Cnt16.CaptureMode = 0;
    defparam Cnt16.ClockMode = 1;
    defparam Cnt16.CompareMode = 0;
    defparam Cnt16.CompareStatusEdgeSense = 1;
    defparam Cnt16.EnableMode = 0;
    defparam Cnt16.ReloadOnCapture = 0;
    defparam Cnt16.ReloadOnCompare = 0;
    defparam Cnt16.ReloadOnOverUnder = 1;
    defparam Cnt16.ReloadOnReset = 1;
    defparam Cnt16.Resolution = 16;
    defparam Cnt16.RunMode = 0;
    defparam Cnt16.UseInterrupt = 1;

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign Net_1290 = Net_1275;

    bQuadDec_v3_0 bQuadDec (
        .clock(clock),
        .dir(Net_1251),
        .enable(Net_1203),
        .index(Net_1232),
        .interrupt(interrupt),
        .overflow(Net_530),
        .quad_A(quad_A),
        .quad_B(quad_B),
        .reset(Net_1260),
        .underflow(Net_611));
    defparam bQuadDec.CounterResolution = 1;
    defparam bQuadDec.UsingGlitchFiltering = 1;
    defparam bQuadDec.UsingIndexInput = 0;


    assign Net_1151 = ~Net_1251;


    assign Net_530 = Net_1248 & Net_1251;


    assign Net_611 = Net_1248 & Net_1151;

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_1232 = Net_1229;

    OneTerminal OneTerminal_1 (
        .o(Net_1229));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign Net_1272 = Net_1264;


    assign Net_1287 = ~Net_1272;


    assign Net_1248 = Net_1287 & Net_1290;



endmodule

// Component: B_UART_v2_50
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50\B_UART_v2_50.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50\B_UART_v2_50.v"
`endif

// UART_v2_50(Address1=0, Address2=0, BaudRate=57600, BreakBitsRX=13, BreakBitsTX=13, BreakDetect=false, CRCoutputsEn=false, Enable_RX=1, Enable_RXIntInterrupt=0, Enable_TX=1, Enable_TXIntInterrupt=0, EnableHWAddress=0, EnIntRXInterrupt=false, EnIntTXInterrupt=false, FlowControl=0, HalfDuplexEn=false, HwTXEnSignal=true, InternalClock=true, InternalClockToleranceMinus=3.93736842105263, InternalClockTolerancePlus=3.93736842105263, InternalClockUsed=1, InterruptOnAddDetect=0, InterruptOnAddressMatch=0, InterruptOnBreak=0, InterruptOnByteRcvd=1, InterruptOnOverrunError=0, InterruptOnParityError=0, InterruptOnStopError=0, InterruptOnTXComplete=false, InterruptOnTXFifoEmpty=false, InterruptOnTXFifoFull=false, InterruptOnTXFifoNotFull=false, IntOnAddressDetect=false, IntOnAddressMatch=false, IntOnBreak=false, IntOnByteRcvd=true, IntOnOverrunError=false, IntOnParityError=false, IntOnStopError=false, NumDataBits=8, NumStopBits=1, OverSamplingRate=8, ParityType=0, ParityTypeSw=false, RequiredClock=460800, RXAddressMode=0, RXBufferSize=4, RxBuffRegSizeReplacementString=uint8, RXEnable=true, TXBitClkGenDP=true, TXBufferSize=4, TxBuffRegSizeReplacementString=uint8, TXEnable=true, Use23Polling=true, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=UART_v2_50, CY_CONFIG_TITLE=UART_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=UART_1, CY_INSTANCE_SHORT_NAME=UART_1, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=50, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=UART_1, )
module UART_v2_50_3 (
    clock,
    cts_n,
    reset,
    rts_n,
    rx,
    rx_clk,
    rx_data,
    rx_interrupt,
    tx,
    tx_clk,
    tx_data,
    tx_en,
    tx_interrupt);
    input       clock;
    input       cts_n;
    input       reset;
    output      rts_n;
    input       rx;
    output      rx_clk;
    output      rx_data;
    output      rx_interrupt;
    output      tx;
    output      tx_clk;
    output      tx_data;
    output      tx_en;
    output      tx_interrupt;

    parameter Address1 = 0;
    parameter Address2 = 0;
    parameter EnIntRXInterrupt = 0;
    parameter EnIntTXInterrupt = 0;
    parameter FlowControl = 0;
    parameter HalfDuplexEn = 0;
    parameter HwTXEnSignal = 1;
    parameter NumDataBits = 8;
    parameter NumStopBits = 1;
    parameter ParityType = 0;
    parameter RXEnable = 1;
    parameter TXEnable = 1;

          wire  Net_289;
          wire  Net_61;
          wire  Net_9;


	cy_clock_v1_0
		#(.id("b0162966-0060-4af5-82d1-fcb491ad7619/be0a0e37-ad17-42ca-b5a1-1a654d736358"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("2170138888.88889"),
		  .is_direct(0),
		  .is_digital(1))
		IntClock
		 (.clock_out(Net_9));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_61 = Net_9;

    B_UART_v2_50 BUART (
        .clock(Net_61),
        .cts_n(cts_n),
        .reset(reset),
        .rts_n(rts_n),
        .rx(rx),
        .rx_clk(rx_clk),
        .rx_data(rx_data),
        .rx_interrupt(rx_interrupt),
        .tx(tx),
        .tx_clk(tx_clk),
        .tx_data(tx_data),
        .tx_en(tx_en),
        .tx_interrupt(tx_interrupt));
    defparam BUART.Address1 = 0;
    defparam BUART.Address2 = 0;
    defparam BUART.BreakBitsRX = 13;
    defparam BUART.BreakBitsTX = 13;
    defparam BUART.BreakDetect = 0;
    defparam BUART.CRCoutputsEn = 0;
    defparam BUART.FlowControl = 0;
    defparam BUART.HalfDuplexEn = 0;
    defparam BUART.HwTXEnSignal = 1;
    defparam BUART.NumDataBits = 8;
    defparam BUART.NumStopBits = 1;
    defparam BUART.OverSampleCount = 8;
    defparam BUART.ParityType = 0;
    defparam BUART.ParityTypeSw = 0;
    defparam BUART.RXAddressMode = 0;
    defparam BUART.RXEnable = 1;
    defparam BUART.RXStatusIntEnable = 1;
    defparam BUART.TXBitClkGenDP = 1;
    defparam BUART.TXEnable = 1;
    defparam BUART.Use23Polling = 1;



endmodule

// Counter_v3_0(CaptureMode=0, CaptureModeSoftware=0, ClockMode=1, CompareMode=0, CompareModeSoftware=0, CompareStatusEdgeSense=true, CompareValue=32768, CONTROL3=0, ControlRegRemoved=0, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InitCounterValue=32768, InterruptOnCapture=false, InterruptOnCompare=false, InterruptOnOverUnderFlow=false, InterruptOnTC=false, Period=32768, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, ReloadOnCapture=false, ReloadOnCompare=false, ReloadOnOverUnder=true, ReloadOnReset=true, Resolution=16, RunMode=0, UDB16=true, UDB24=false, UDB32=false, UDB8=false, UDBControlReg=true, UseInterrupt=true, VerilogSectionReplacementString=sC16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Counter_v3_0, CY_CONFIG_TITLE=Cnt16, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=QuadDec_2:Cnt16, CY_INSTANCE_SHORT_NAME=Cnt16, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=QuadDec_2_Cnt16, )
module Counter_v3_0_4 (
    capture,
    clock,
    comp,
    count,
    downCnt,
    enable,
    interrupt,
    reset,
    tc,
    up_ndown,
    upCnt);
    input       capture;
    input       clock;
    output      comp;
    input       count;
    input       downCnt;
    input       enable;
    output      interrupt;
    input       reset;
    output      tc;
    input       up_ndown;
    input       upCnt;

    parameter CaptureMode = 0;
    parameter ClockMode = 1;
    parameter CompareMode = 0;
    parameter CompareStatusEdgeSense = 1;
    parameter EnableMode = 0;
    parameter ReloadOnCapture = 0;
    parameter ReloadOnCompare = 0;
    parameter ReloadOnOverUnder = 1;
    parameter ReloadOnReset = 1;
    parameter Resolution = 16;
    parameter RunMode = 0;
    parameter UseInterrupt = 1;

          wire  Net_47;
          wire  Net_102;
          wire  Net_95;
          wire  Net_82;
          wire  Net_91;
          wire  Net_89;
          wire  Net_49;
          wire  Net_48;
          wire  Net_42;
          wire  Net_43;

	// int_vm (cy_virtualmux_v1_0)
	assign interrupt = Net_43;

	// TC_vm (cy_virtualmux_v1_0)
	assign tc = Net_49;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_82));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_89 = up_ndown;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_95));

	// vmEnableMode (cy_virtualmux_v1_0)
	assign Net_91 = enable;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

    B_Counter_v3_0 CounterUDB (
        .capture(capture),
        .clock(clock),
        .cmp_out(comp),
        .count(count),
        .dwncnt(downCnt),
        .enable(enable),
        .irq_out(Net_43),
        .reset(reset),
        .tc_out(Net_49),
        .up_ndown(Net_89),
        .upcnt(upCnt));
    defparam CounterUDB.CaptureMode = 0;
    defparam CounterUDB.ClockMode = 1;
    defparam CounterUDB.CompareMode = 0;
    defparam CounterUDB.CompareStatusEdgeSense = 1;
    defparam CounterUDB.EnableMode = 0;
    defparam CounterUDB.ReloadOnCapture = 0;
    defparam CounterUDB.ReloadOnCompare = 0;
    defparam CounterUDB.ReloadOnOverUnder = 1;
    defparam CounterUDB.ReloadOnReset = 1;
    defparam CounterUDB.Resolution = 16;
    defparam CounterUDB.RunMode = 0;
    defparam CounterUDB.UseInterrupt = 1;



endmodule

// QuadDec_v3_0(Counter8bit=false, CounterResolution=1, CounterSize=16, CounterSizeReplacementString=int16, CounterSizeReplacementStringUnsigned=uint16, TypeCastReplacementString=int32, UsingGlitchFiltering=true, UsingIndexInput=false, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=QuadDec_v3_0, CY_CONFIG_TITLE=QuadDec_2, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=QuadDec_2, CY_INSTANCE_SHORT_NAME=QuadDec_2, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=QuadDec_2, )
module QuadDec_v3_0_5 (
    clock,
    index,
    interrupt,
    quad_A,
    quad_B);
    input       clock;
    input       index;
    output      interrupt;
    input       quad_A;
    input       quad_B;

    parameter CounterResolution = 1;
    parameter UsingGlitchFiltering = 1;
    parameter UsingIndexInput = 0;

          wire  Net_1125;
          wire  Net_1123;
          wire  Net_1241;
          wire  Net_1126;
          wire  Net_1124;
          wire  Net_1131;
          wire  Net_1129;
          wire  Net_1243;
          wire  Net_1132;
          wire  Net_1130;
          wire  Net_1287;
          wire  Net_1272;
          wire  Net_1290;
          wire  Net_1269;
          wire  Net_1264;
          wire  Net_1275;
          wire  Net_1276;
          wire  Net_1203;
          wire  Net_1260;
          wire  Net_1232;
          wire  Net_1229;
          wire  Net_1251;
          wire  Net_611;
          wire  Net_1151;
          wire  Net_1248;
          wire  Net_530;

    Counter_v3_0_4 Cnt16 (
        .capture(1'b0),
        .clock(clock),
        .comp(Net_1264),
        .count(Net_1203),
        .downCnt(1'b0),
        .enable(1'b0),
        .interrupt(Net_1129),
        .reset(Net_1260),
        .tc(Net_1275),
        .up_ndown(Net_1251),
        .upCnt(1'b0));
    defparam Cnt16.CaptureMode = 0;
    defparam Cnt16.ClockMode = 1;
    defparam Cnt16.CompareMode = 0;
    defparam Cnt16.CompareStatusEdgeSense = 1;
    defparam Cnt16.EnableMode = 0;
    defparam Cnt16.ReloadOnCapture = 0;
    defparam Cnt16.ReloadOnCompare = 0;
    defparam Cnt16.ReloadOnOverUnder = 1;
    defparam Cnt16.ReloadOnReset = 1;
    defparam Cnt16.Resolution = 16;
    defparam Cnt16.RunMode = 0;
    defparam Cnt16.UseInterrupt = 1;

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign Net_1290 = Net_1275;

    bQuadDec_v3_0 bQuadDec (
        .clock(clock),
        .dir(Net_1251),
        .enable(Net_1203),
        .index(Net_1232),
        .interrupt(interrupt),
        .overflow(Net_530),
        .quad_A(quad_A),
        .quad_B(quad_B),
        .reset(Net_1260),
        .underflow(Net_611));
    defparam bQuadDec.CounterResolution = 1;
    defparam bQuadDec.UsingGlitchFiltering = 1;
    defparam bQuadDec.UsingIndexInput = 0;


    assign Net_1151 = ~Net_1251;


    assign Net_530 = Net_1248 & Net_1251;


    assign Net_611 = Net_1248 & Net_1151;

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_1232 = Net_1229;

    OneTerminal OneTerminal_1 (
        .o(Net_1229));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign Net_1272 = Net_1264;


    assign Net_1287 = ~Net_1272;


    assign Net_1248 = Net_1287 & Net_1290;



endmodule

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=false, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=12500, CompareValue2=63, CONTROL3=1, ControlReg=false, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=true, FF8=false, FixedFunction=true, FixedFunctionUsed=1, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=1, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=25000, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=false, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=true, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=false, UDB8=false, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONFIG_TITLE=PWM_Slave, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_Slave, CY_INSTANCE_SHORT_NAME=PWM_Slave, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=PWM_Slave, )
module PWM_v3_30_6 (
    capture,
    clock,
    cmp_sel,
    enable,
    interrupt,
    kill,
    ph1,
    ph2,
    pwm,
    pwm1,
    pwm2,
    reset,
    tc,
    trigger);
    input       capture;
    input       clock;
    input       cmp_sel;
    input       enable;
    output      interrupt;
    input       kill;
    output      ph1;
    output      ph2;
    output      pwm;
    output      pwm1;
    output      pwm2;
    input       reset;
    output      tc;
    input       trigger;

    parameter Resolution = 16;

          wire  Net_114;
          wire  Net_113;
          wire  Net_107;
          wire  Net_96;
          wire  Net_55;
          wire  Net_57;
          wire  Net_101;
          wire  Net_54;
          wire  Net_63;

    cy_psoc3_timer_v1_0 PWMHW (
        .capture(capture),
        .clock(clock),
        .compare(Net_57),
        .enable(Net_113),
        .interrupt(Net_54),
        .kill(Net_107),
        .tc(Net_63),
        .timer_reset(reset));

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_57;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_54;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_63;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = kill;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

// Component: B_Timer_v2_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Timer_v2_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Timer_v2_80\B_Timer_v2_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Timer_v2_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Timer_v2_80\B_Timer_v2_80.v"
`endif

// Timer_v2_80(CaptureAlternatingFall=false, CaptureAlternatingRise=false, CaptureCount=2, CaptureCounterEnabled=false, CaptureInputEnabled=true, CaptureMode=1, CONTROL3=0, ControlRegRemoved=0, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG24, CySetRegReplacementString=CY_SET_REG24, DeviceFamily=PSoC5, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, HWCaptureCounterEnabled=false, InterruptOnCapture=false, InterruptOnFIFOFull=false, InterruptOnTC=true, IntOnCapture=0, IntOnFIFOFull=0, IntOnTC=1, NumberOfCaptures=1, param45=1, Period=59999, RegDefReplacementString=reg32, RegSizeReplacementString=uint32, Resolution=24, RstStatusReplacementString=rstSts, RunMode=0, SiliconRevision=0, SoftwareCaptureModeEnabled=false, SoftwareTriggerModeEnabled=false, TriggerInputEnabled=false, TriggerMode=0, UDB16=false, UDB24=true, UDB32=false, UDB8=false, UDBControlReg=true, UsesHWEnable=0, VerilogSectionReplacementString=sT24, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Timer_v2_80, CY_CONFIG_TITLE=Timer_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Timer_1, CY_INSTANCE_SHORT_NAME=Timer_1, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=80, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=Timer_1, )
module Timer_v2_80_7 (
    capture,
    capture_out,
    clock,
    enable,
    interrupt,
    reset,
    tc,
    trigger);
    input       capture;
    output      capture_out;
    input       clock;
    input       enable;
    output      interrupt;
    input       reset;
    output      tc;
    input       trigger;

    parameter CaptureCount = 2;
    parameter CaptureCounterEnabled = 0;
    parameter DeviceFamily = "PSoC5";
    parameter InterruptOnCapture = 0;
    parameter InterruptOnTC = 1;
    parameter Resolution = 24;
    parameter SiliconRevision = "0";

          wire  Net_260;
          wire  Net_261;
          wire  Net_266;
          wire  Net_102;
          wire  Net_55;
          wire  Net_57;
          wire  Net_53;
          wire  Net_51;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_260));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign tc = Net_53;

    B_Timer_v2_80 TimerUDB (
        .capture_in(capture),
        .capture_out(capture_out),
        .clock(clock),
        .enable(enable),
        .interrupt(Net_55),
        .reset(reset),
        .tc(Net_53),
        .trigger(trigger));
    defparam TimerUDB.Capture_Count = 2;
    defparam TimerUDB.CaptureCounterEnabled = 0;
    defparam TimerUDB.CaptureMode = 1;
    defparam TimerUDB.EnableMode = 0;
    defparam TimerUDB.InterruptOnCapture = 0;
    defparam TimerUDB.Resolution = 24;
    defparam TimerUDB.RunMode = 0;
    defparam TimerUDB.TriggerMode = 0;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_266 = Net_102;



endmodule

// Timer_v2_80(CaptureAlternatingFall=false, CaptureAlternatingRise=false, CaptureCount=2, CaptureCounterEnabled=false, CaptureInputEnabled=true, CaptureMode=2, CONTROL3=0, ControlRegRemoved=0, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeviceFamily=PSoC5, EnableMode=2, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, HWCaptureCounterEnabled=false, InterruptOnCapture=true, InterruptOnFIFOFull=false, InterruptOnTC=false, IntOnCapture=1, IntOnFIFOFull=0, IntOnTC=0, NumberOfCaptures=1, param45=1, Period=65535, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=rstSts, RunMode=1, SiliconRevision=0, SoftwareCaptureModeEnabled=false, SoftwareTriggerModeEnabled=false, TriggerInputEnabled=false, TriggerMode=0, UDB16=true, UDB24=false, UDB32=false, UDB8=false, UDBControlReg=false, UsesHWEnable=1, VerilogSectionReplacementString=sT16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Timer_v2_80, CY_CONFIG_TITLE=Timer_2, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Timer_2, CY_INSTANCE_SHORT_NAME=Timer_2, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=80, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=Timer_2, )
module Timer_v2_80_8 (
    capture,
    capture_out,
    clock,
    enable,
    interrupt,
    reset,
    tc,
    trigger);
    input       capture;
    output      capture_out;
    input       clock;
    input       enable;
    output      interrupt;
    input       reset;
    output      tc;
    input       trigger;

    parameter CaptureCount = 2;
    parameter CaptureCounterEnabled = 0;
    parameter DeviceFamily = "PSoC5";
    parameter InterruptOnCapture = 1;
    parameter InterruptOnTC = 0;
    parameter Resolution = 16;
    parameter SiliconRevision = "0";

          wire  Net_260;
          wire  Net_261;
          wire  Net_266;
          wire  Net_102;
          wire  Net_55;
          wire  Net_57;
          wire  Net_53;
          wire  Net_51;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_260));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign tc = Net_53;

    B_Timer_v2_80 TimerUDB (
        .capture_in(capture),
        .capture_out(capture_out),
        .clock(clock),
        .enable(enable),
        .interrupt(Net_55),
        .reset(reset),
        .tc(Net_53),
        .trigger(trigger));
    defparam TimerUDB.Capture_Count = 2;
    defparam TimerUDB.CaptureCounterEnabled = 0;
    defparam TimerUDB.CaptureMode = 2;
    defparam TimerUDB.EnableMode = 2;
    defparam TimerUDB.InterruptOnCapture = 1;
    defparam TimerUDB.Resolution = 16;
    defparam TimerUDB.RunMode = 1;
    defparam TimerUDB.TriggerMode = 0;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_266 = enable;



endmodule

// top
module top ;

          wire  Net_249;
          wire  Net_247;
          wire  Net_246;
          wire  Net_243;
          wire  Net_159;
          wire  Net_158;
          wire  Net_219;
          wire  Net_156;
          wire  Net_155;
          wire  Net_154;
          wire  Net_241;
          wire  Net_152;
          wire  Net_144;
          wire  Net_143;
          wire  Net_141;
          wire  Net_140;
          wire  Net_138;
          wire  Net_137;
          wire  Net_135;
          wire  Net_134;
          wire  Net_133;
          wire  Net_131;
          wire  Net_88;
          wire  Net_87;
          wire  Net_86;
          wire  Net_85;
          wire  Net_139;
          wire  Net_51;
          wire  Net_50;
          wire  Net_49;
          wire  Net_48;
          wire  Net_47;
          wire  Net_46;
          wire  Net_45;
          wire  Net_44;
          wire  Net_43;
          wire  Net_42;
          wire  Net_41;
          wire  Net_40;
          wire  Net_39;
          wire  Net_35;
          wire  Net_34;
          wire  Net_38;
          wire  Net_36;
          wire  Net_32;
          wire  Net_30;
          wire  Net_29;
          wire  Net_27;
          wire  Net_26;
          wire  Net_24;
          wire  Net_23;
          wire  Net_21;
          wire  Net_20;
          wire  Net_19;
          wire  Net_17;
          wire  Net_5;
          wire  Net_242;
          wire  Net_245;
          wire  Net_244;
          wire  Net_12;
          wire  Net_10;
          wire  Net_136;
          wire  Net_132;
          wire  Net_18;
          wire  Net_33;
          wire  Net_22;

	wire [0:0] tmpOE__Motor_1_IN_1_net;
	wire [0:0] tmpFB_0__Motor_1_IN_1_net;
	wire [0:0] tmpIO_0__Motor_1_IN_1_net;
	wire [0:0] tmpINTERRUPT_0__Motor_1_IN_1_net;
	electrical [0:0] tmpSIOVREF__Motor_1_IN_1_net;

	cy_psoc3_pins_v1_10
		#(.id("e851a3b9-efb8-48be-bbb8-b303b216c393"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_1_IN_1
		 (.oe(tmpOE__Motor_1_IN_1_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Motor_1_IN_1_net[0:0]}),
		  .io({tmpIO_0__Motor_1_IN_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_1_IN_1_net),
		  .interrupt({tmpINTERRUPT_0__Motor_1_IN_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_1_IN_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Motor_1_IN_2_net;
	wire [0:0] tmpFB_0__Motor_1_IN_2_net;
	wire [0:0] tmpIO_0__Motor_1_IN_2_net;
	wire [0:0] tmpINTERRUPT_0__Motor_1_IN_2_net;
	electrical [0:0] tmpSIOVREF__Motor_1_IN_2_net;

	cy_psoc3_pins_v1_10
		#(.id("89e089b6-b0d0-4b7d-aa32-298978e268eb"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_1_IN_2
		 (.oe(tmpOE__Motor_1_IN_2_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Motor_1_IN_2_net[0:0]}),
		  .io({tmpIO_0__Motor_1_IN_2_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_1_IN_2_net),
		  .interrupt({tmpINTERRUPT_0__Motor_1_IN_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_1_IN_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    PWM_v3_30_0 PWM_Master (
        .capture(1'b0),
        .clock(Net_18),
        .cmp_sel(1'b0),
        .enable(1'b1),
        .interrupt(Net_21),
        .kill(Net_22),
        .ph1(Net_23),
        .ph2(Net_24),
        .pwm(Net_33),
        .pwm1(Net_26),
        .pwm2(Net_27),
        .reset(Net_22),
        .tc(Net_29),
        .trigger(1'b0));
    defparam PWM_Master.Resolution = 16;


	cy_clock_v1_0
		#(.id("afb3e158-22f3-4007-bd2f-48eabc96466e"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_1
		 (.clock_out(Net_18));


	wire [0:0] tmpOE__Motor_1_ENA_net;
	wire [0:0] tmpFB_0__Motor_1_ENA_net;
	wire [0:0] tmpIO_0__Motor_1_ENA_net;
	wire [0:0] tmpINTERRUPT_0__Motor_1_ENA_net;
	electrical [0:0] tmpSIOVREF__Motor_1_ENA_net;

	cy_psoc3_pins_v1_10
		#(.id("8fd04cd6-ef69-4709-a6a0-f24e46fa7e6d"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_1_ENA
		 (.oe(tmpOE__Motor_1_ENA_net),
		  .y({Net_33}),
		  .fb({tmpFB_0__Motor_1_ENA_net[0:0]}),
		  .io({tmpIO_0__Motor_1_ENA_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_1_ENA_net),
		  .interrupt({tmpINTERRUPT_0__Motor_1_ENA_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_1_ENA_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    assign Net_22 = 1'h0;

    QuadDec_v3_0_2 QuadDec_1 (
        .clock(Net_18),
        .index(1'b0),
        .interrupt(Net_38),
        .quad_A(Net_34),
        .quad_B(Net_35));
    defparam QuadDec_1.CounterResolution = 1;
    defparam QuadDec_1.UsingGlitchFiltering = 1;
    defparam QuadDec_1.UsingIndexInput = 0;

	wire [0:0] tmpOE__Motor_1_Phase_A_net;
	wire [0:0] tmpIO_0__Motor_1_Phase_A_net;
	wire [0:0] tmpINTERRUPT_0__Motor_1_Phase_A_net;
	electrical [0:0] tmpSIOVREF__Motor_1_Phase_A_net;

	cy_psoc3_pins_v1_10
		#(.id("8d318d8b-cf7b-4b6b-b02c-ab1c5c49d0ba"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_1_Phase_A
		 (.oe(tmpOE__Motor_1_Phase_A_net),
		  .y({1'b0}),
		  .fb({Net_34}),
		  .io({tmpIO_0__Motor_1_Phase_A_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_1_Phase_A_net),
		  .interrupt({tmpINTERRUPT_0__Motor_1_Phase_A_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_1_Phase_A_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Motor_1_Phase_B_net;
	wire [0:0] tmpIO_0__Motor_1_Phase_B_net;
	wire [0:0] tmpINTERRUPT_0__Motor_1_Phase_B_net;
	electrical [0:0] tmpSIOVREF__Motor_1_Phase_B_net;

	cy_psoc3_pins_v1_10
		#(.id("77a0212e-bc28-41cd-a5c2-daea851c3a61"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_1_Phase_B
		 (.oe(tmpOE__Motor_1_Phase_B_net),
		  .y({1'b0}),
		  .fb({Net_35}),
		  .io({tmpIO_0__Motor_1_Phase_B_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_1_Phase_B_net),
		  .interrupt({tmpINTERRUPT_0__Motor_1_Phase_B_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_1_Phase_B_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    UART_v2_50_3 UART_1 (
        .clock(1'b0),
        .cts_n(1'b0),
        .reset(1'b0),
        .rts_n(Net_42),
        .rx(Net_43),
        .rx_clk(Net_44),
        .rx_data(Net_45),
        .rx_interrupt(Net_46),
        .tx(Net_47),
        .tx_clk(Net_48),
        .tx_data(Net_49),
        .tx_en(Net_50),
        .tx_interrupt(Net_51));
    defparam UART_1.Address1 = 0;
    defparam UART_1.Address2 = 0;
    defparam UART_1.EnIntRXInterrupt = 0;
    defparam UART_1.EnIntTXInterrupt = 0;
    defparam UART_1.FlowControl = 0;
    defparam UART_1.HalfDuplexEn = 0;
    defparam UART_1.HwTXEnSignal = 1;
    defparam UART_1.NumDataBits = 8;
    defparam UART_1.NumStopBits = 1;
    defparam UART_1.ParityType = 0;
    defparam UART_1.RXEnable = 1;
    defparam UART_1.TXEnable = 1;

	wire [0:0] tmpOE__Rx_1_net;
	wire [0:0] tmpIO_0__Rx_1_net;
	wire [0:0] tmpINTERRUPT_0__Rx_1_net;
	electrical [0:0] tmpSIOVREF__Rx_1_net;

	cy_psoc3_pins_v1_10
		#(.id("1425177d-0d0e-4468-8bcc-e638e5509a9b"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Rx_1
		 (.oe(tmpOE__Rx_1_net),
		  .y({1'b0}),
		  .fb({Net_43}),
		  .io({tmpIO_0__Rx_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Rx_1_net),
		  .interrupt({tmpINTERRUPT_0__Rx_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Rx_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Tx_1_net;
	wire [0:0] tmpFB_0__Tx_1_net;
	wire [0:0] tmpIO_0__Tx_1_net;
	wire [0:0] tmpINTERRUPT_0__Tx_1_net;
	electrical [0:0] tmpSIOVREF__Tx_1_net;

	cy_psoc3_pins_v1_10
		#(.id("ed092b9b-d398-4703-be89-cebf998501f6"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Tx_1
		 (.oe(tmpOE__Tx_1_net),
		  .y({Net_47}),
		  .fb({tmpFB_0__Tx_1_net[0:0]}),
		  .io({tmpIO_0__Tx_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Tx_1_net),
		  .interrupt({tmpINTERRUPT_0__Tx_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Tx_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Motor_2_IN_3_net;
	wire [0:0] tmpFB_0__Motor_2_IN_3_net;
	wire [0:0] tmpIO_0__Motor_2_IN_3_net;
	wire [0:0] tmpINTERRUPT_0__Motor_2_IN_3_net;
	electrical [0:0] tmpSIOVREF__Motor_2_IN_3_net;

	cy_psoc3_pins_v1_10
		#(.id("14fe9fd8-ba1c-46bb-aadb-c0efced7524c"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_2_IN_3
		 (.oe(tmpOE__Motor_2_IN_3_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Motor_2_IN_3_net[0:0]}),
		  .io({tmpIO_0__Motor_2_IN_3_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_2_IN_3_net),
		  .interrupt({tmpINTERRUPT_0__Motor_2_IN_3_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_2_IN_3_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Motor_2_IN_4_net;
	wire [0:0] tmpFB_0__Motor_2_IN_4_net;
	wire [0:0] tmpIO_0__Motor_2_IN_4_net;
	wire [0:0] tmpINTERRUPT_0__Motor_2_IN_4_net;
	electrical [0:0] tmpSIOVREF__Motor_2_IN_4_net;

	cy_psoc3_pins_v1_10
		#(.id("f13c0ed2-c2f3-4781-b21e-1aa09a444a8e"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_2_IN_4
		 (.oe(tmpOE__Motor_2_IN_4_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Motor_2_IN_4_net[0:0]}),
		  .io({tmpIO_0__Motor_2_IN_4_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_2_IN_4_net),
		  .interrupt({tmpINTERRUPT_0__Motor_2_IN_4_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_2_IN_4_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Motor_2_ENB_net;
	wire [0:0] tmpFB_0__Motor_2_ENB_net;
	wire [0:0] tmpIO_0__Motor_2_ENB_net;
	wire [0:0] tmpINTERRUPT_0__Motor_2_ENB_net;
	electrical [0:0] tmpSIOVREF__Motor_2_ENB_net;

	cy_psoc3_pins_v1_10
		#(.id("7046350c-bc54-40e9-97db-e736b781628e"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_2_ENB
		 (.oe(tmpOE__Motor_2_ENB_net),
		  .y({Net_139}),
		  .fb({tmpFB_0__Motor_2_ENB_net[0:0]}),
		  .io({tmpIO_0__Motor_2_ENB_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_2_ENB_net),
		  .interrupt({tmpINTERRUPT_0__Motor_2_ENB_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_2_ENB_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    QuadDec_v3_0_5 QuadDec_2 (
        .clock(Net_18),
        .index(1'b0),
        .interrupt(Net_86),
        .quad_A(Net_87),
        .quad_B(Net_88));
    defparam QuadDec_2.CounterResolution = 1;
    defparam QuadDec_2.UsingGlitchFiltering = 1;
    defparam QuadDec_2.UsingIndexInput = 0;

	wire [0:0] tmpOE__Motor_2_Phase_A_net;
	wire [0:0] tmpIO_0__Motor_2_Phase_A_net;
	wire [0:0] tmpINTERRUPT_0__Motor_2_Phase_A_net;
	electrical [0:0] tmpSIOVREF__Motor_2_Phase_A_net;

	cy_psoc3_pins_v1_10
		#(.id("c1e5c668-22f1-4671-bc28-e2e6f81511cf"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_2_Phase_A
		 (.oe(tmpOE__Motor_2_Phase_A_net),
		  .y({1'b0}),
		  .fb({Net_87}),
		  .io({tmpIO_0__Motor_2_Phase_A_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_2_Phase_A_net),
		  .interrupt({tmpINTERRUPT_0__Motor_2_Phase_A_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_2_Phase_A_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Motor_2_Phase_B_net;
	wire [0:0] tmpIO_0__Motor_2_Phase_B_net;
	wire [0:0] tmpINTERRUPT_0__Motor_2_Phase_B_net;
	electrical [0:0] tmpSIOVREF__Motor_2_Phase_B_net;

	cy_psoc3_pins_v1_10
		#(.id("f1e3c730-5126-46bc-8c41-9122296579ec"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Motor_2_Phase_B
		 (.oe(tmpOE__Motor_2_Phase_B_net),
		  .y({1'b0}),
		  .fb({Net_88}),
		  .io({tmpIO_0__Motor_2_Phase_B_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_2_Phase_B_net),
		  .interrupt({tmpINTERRUPT_0__Motor_2_Phase_B_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_2_Phase_B_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    PWM_v3_30_6 PWM_Slave (
        .capture(1'b0),
        .clock(Net_132),
        .cmp_sel(1'b0),
        .enable(1'b1),
        .interrupt(Net_135),
        .kill(Net_136),
        .ph1(Net_137),
        .ph2(Net_138),
        .pwm(Net_139),
        .pwm1(Net_140),
        .pwm2(Net_141),
        .reset(Net_136),
        .tc(Net_143),
        .trigger(1'b0));
    defparam PWM_Slave.Resolution = 16;

    assign Net_136 = 1'h0;


	cy_clock_v1_0
		#(.id("7670aeb4-f9a5-4e60-93b3-d0ae068e26e0"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_2
		 (.clock_out(Net_132));



	cy_clock_v1_0
		#(.id("c0fb34bd-1044-4931-9788-16b01ce89812"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		timer_clock
		 (.clock_out(Net_10));


    ZeroTerminal ZeroTerminal_1 (
        .z(Net_12));

    Timer_v2_80_7 Timer_1 (
        .capture(1'b0),
        .capture_out(Net_155),
        .clock(Net_10),
        .enable(1'b1),
        .interrupt(Net_219),
        .reset(Net_12),
        .tc(Net_158),
        .trigger(1'b1));
    defparam Timer_1.CaptureCount = 2;
    defparam Timer_1.CaptureCounterEnabled = 0;
    defparam Timer_1.DeviceFamily = "PSoC5";
    defparam Timer_1.InterruptOnCapture = 0;
    defparam Timer_1.InterruptOnTC = 1;
    defparam Timer_1.Resolution = 24;
    defparam Timer_1.SiliconRevision = "0";


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_1
		 (.int_signal(Net_158));


    Timer_v2_80_8 Timer_2 (
        .capture(Net_242),
        .capture_out(Net_243),
        .clock(Net_244),
        .enable(Net_242),
        .interrupt(Net_5),
        .reset(Net_245),
        .tc(Net_246),
        .trigger(1'b1));
    defparam Timer_2.CaptureCount = 2;
    defparam Timer_2.CaptureCounterEnabled = 0;
    defparam Timer_2.DeviceFamily = "PSoC5";
    defparam Timer_2.InterruptOnCapture = 1;
    defparam Timer_2.InterruptOnTC = 0;
    defparam Timer_2.Resolution = 16;
    defparam Timer_2.SiliconRevision = "0";


	cy_clock_v1_0
		#(.id("7a7bb981-c9d8-4a2d-a5d9-de890838f3c4"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_3
		 (.clock_out(Net_244));


	wire [0:0] tmpOE__Front_Trigger_net;
	wire [0:0] tmpIO_0__Front_Trigger_net;
	wire [0:0] tmpINTERRUPT_0__Front_Trigger_net;
	electrical [0:0] tmpSIOVREF__Front_Trigger_net;

	cy_psoc3_pins_v1_10
		#(.id("1b9c39d9-1e29-44f8-9547-454660238550"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Front_Trigger
		 (.oe(tmpOE__Front_Trigger_net),
		  .y({1'b0}),
		  .fb({Net_245}),
		  .io({tmpIO_0__Front_Trigger_net[0:0]}),
		  .siovref(tmpSIOVREF__Front_Trigger_net),
		  .interrupt({tmpINTERRUPT_0__Front_Trigger_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Front_Trigger_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Front_Echo_net;
	wire [0:0] tmpIO_0__Front_Echo_net;
	wire [0:0] tmpINTERRUPT_0__Front_Echo_net;
	electrical [0:0] tmpSIOVREF__Front_Echo_net;

	cy_psoc3_pins_v1_10
		#(.id("c51a0286-6c49-48f4-949a-25319e951554"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Front_Echo
		 (.oe(tmpOE__Front_Echo_net),
		  .y({1'b0}),
		  .fb({Net_242}),
		  .io({tmpIO_0__Front_Echo_net[0:0]}),
		  .siovref(tmpSIOVREF__Front_Echo_net),
		  .interrupt({tmpINTERRUPT_0__Front_Echo_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Front_Echo_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_2
		 (.int_signal(Net_5));




endmodule

