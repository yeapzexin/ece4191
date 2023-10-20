// ======================================================================
// Design01.v generated from TopDesign.cysch
// 10/19/2023 at 16:27
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
// Component: B_PWM_v3_30
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30\B_PWM_v3_30.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30\B_PWM_v3_30.v"
`endif

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

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=false, Compare2_16=true, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=12500, CompareValue2=12500, CONTROL3=0, ControlReg=true, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=0, KillModeMinTime=0, MinimumKillTime=1, OneCompare=false, Period=25000, PWMMode=1, PWMModeCenterAligned=0, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=true, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=false, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=false, TermVisibility_pwm1=true, TermVisibility_pwm2=true, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=true, UDB8=false, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONFIG_TITLE=PWM_Wheels, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_Wheels, CY_INSTANCE_SHORT_NAME=PWM_Wheels, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=PWM_Wheels, )
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

    B_PWM_v3_30 PWMUDB (
        .capture(capture),
        .clock(clock),
        .cmp_sel(cmp_sel),
        .enable(enable),
        .interrupt(Net_55),
        .kill(kill),
        .ph1(ph1),
        .ph2(ph2),
        .pwm(Net_96),
        .pwm1(pwm1),
        .pwm2(pwm2),
        .reset(reset),
        .tc(Net_101),
        .trigger(trigger));
    defparam PWMUDB.CaptureMode = 0;
    defparam PWMUDB.CompareStatusEdgeSense = 1;
    defparam PWMUDB.CompareType1 = 1;
    defparam PWMUDB.CompareType2 = 1;
    defparam PWMUDB.DeadBand = 0;
    defparam PWMUDB.DitherOffset = 0;
    defparam PWMUDB.EnableMode = 0;
    defparam PWMUDB.KillMode = 0;
    defparam PWMUDB.PWMMode = 1;
    defparam PWMUDB.Resolution = 16;
    defparam PWMUDB.RunMode = 0;
    defparam PWMUDB.TriggerMode = 0;
    defparam PWMUDB.UseStatus = 1;

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_96;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_101;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = Net_114;

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

// Counter_v3_0(CaptureMode=0, CaptureModeSoftware=0, ClockMode=1, CompareMode=0, CompareModeSoftware=0, CompareStatusEdgeSense=true, CompareValue=32768, CONTROL3=0, ControlRegRemoved=0, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InitCounterValue=32768, InterruptOnCapture=false, InterruptOnCompare=false, InterruptOnOverUnderFlow=false, InterruptOnTC=false, Period=32768, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, ReloadOnCapture=false, ReloadOnCompare=false, ReloadOnOverUnder=true, ReloadOnReset=true, Resolution=16, RunMode=0, UDB16=true, UDB24=false, UDB32=false, UDB8=false, UDBControlReg=true, UseInterrupt=true, VerilogSectionReplacementString=sC16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Counter_v3_0, CY_CONFIG_TITLE=Cnt16, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=QuadDec_2:Cnt16, CY_INSTANCE_SHORT_NAME=Cnt16, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=QuadDec_2_Cnt16, )
module Counter_v3_0_3 (
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
module QuadDec_v3_0_4 (
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

    Counter_v3_0_3 Cnt16 (
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
module Timer_v2_80_5 (
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

// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// I2C_v3_50(Address_Decode=1, BusSpeed_kHz=100, ClockInputVisibility=false, CtlModeReplacementString=SyncCtl, EnableWakeup=false, ExternalBuffer=false, Externi2cIntrHandler=false, ExternTmoutIntrHandler=false, FF=true, Hex=false, I2C_Mode=2, I2cBusPort=0, Implementation=1, InternalUdbClockToleranceMinus=25, InternalUdbClockTolerancePlus=5, NotSlaveClockMinusTolerance=25, NotSlaveClockPlusTolerance=5, PrescalerEnabled=false, PrescalerPeriod=3, Psoc3ffSelected=false, Psoc5AffSelected=false, Psoc5lpffSelected=true, RemoveI2cff=false, RemoveI2cUdb=true, RemoveIntClock=true, RemoveTimeoutTimer=true, SclTimeoutEnabled=false, SdaTimeoutEnabled=false, Slave_Address=8, SlaveClockMinusTolerance=5, SlaveClockPlusTolerance=50, TimeoutEnabled=false, TimeoutImplementation=0, TimeOutms=25, TimeoutPeriodff=39999, TimeoutPeriodUdb=39999, UDB_MSTR=false, UDB_MULTI_MASTER_SLAVE=false, UDB_SLV=false, UdbInternalClock=false, UdbRequiredClock=1600, UdbSlaveFixedPlacementEnable=false, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=I2C_v3_50, CY_CONFIG_TITLE=I2C_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=I2C_Slave_DefaultPlacement.ctl, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=I2C_1, CY_INSTANCE_SHORT_NAME=I2C_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=50, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=I2C_1, )
module I2C_v3_50_6 (
    bclk,
    clock,
    iclk,
    itclk,
    reset,
    scl,
    scl_i,
    scl_o,
    sda,
    sda_i,
    sda_o);
    output      bclk;
    input       clock;
    output      iclk;
    output      itclk;
    input       reset;
    inout       scl;
    input       scl_i;
    output      scl_o;
    inout       sda;
    input       sda_i;
    output      sda_o;


          wire  sda_x_wire;
          wire  sda_yfb;
          wire  udb_clk;
          wire  Net_975;
          wire  Net_974;
          wire  Net_973;
          wire  bus_clk;
          wire  Net_972;
          wire  Net_968;
          wire  scl_yfb;
          wire  Net_969;
          wire  Net_971;
          wire  Net_970;
          wire  timeout_clk;
          wire  Net_697;
          wire  Net_1045;
          wire [1:0] Net_1109;
          wire [5:0] Net_643;
          wire  scl_x_wire;

	// Vmux_sda_out (cy_virtualmux_v1_0)
	assign sda_x_wire = Net_643[1];


	cy_isr_v1_0
		#(.int_type(2'b00))
		I2C_IRQ
		 (.int_signal(Net_697));


    cy_psoc3_i2c_v1_0 I2C_FF (
        .clock(bus_clk),
        .interrupt(Net_643[2]),
        .scl_in(Net_1109[0]),
        .scl_out(Net_643[0]),
        .sda_in(Net_1109[1]),
        .sda_out(Net_643[1]));
    defparam I2C_FF.use_wakeup = 0;

	// Vmux_interrupt (cy_virtualmux_v1_0)
	assign Net_697 = Net_643[2];

	// Vmux_scl_out (cy_virtualmux_v1_0)
	assign scl_x_wire = Net_643[0];

    OneTerminal OneTerminal_1 (
        .o(Net_969));

    OneTerminal OneTerminal_2 (
        .o(Net_968));

	// Vmux_clock (cy_virtualmux_v1_0)
	assign udb_clk = clock;


	cy_clock_v1_0
		#(.id("6f2d57bd-b6d0-4115-93da-ded3485bf4ed/5ece924d-20ba-480e-9102-bc082dcdd926"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		BusClock
		 (.clock_out(bus_clk));



    assign bclk = Net_973 | bus_clk;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_973));


    assign iclk = Net_974 | udb_clk;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_974));

	// Vmux_scl_in (cy_virtualmux_v1_0)
	assign Net_1109[0] = scl_yfb;

	// Vmux_sda_in (cy_virtualmux_v1_0)
	assign Net_1109[1] = sda_yfb;

	wire [0:0] tmpOE__Bufoe_scl_net;

	cy_bufoe
		Bufoe_scl
		 (.oe(tmpOE__Bufoe_scl_net),
		  .x(scl_x_wire),
		  .y(scl),
		  .yfb(scl_yfb));

	assign tmpOE__Bufoe_scl_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{Net_969} : {Net_969};

	wire [0:0] tmpOE__Bufoe_sda_net;

	cy_bufoe
		Bufoe_sda
		 (.oe(tmpOE__Bufoe_sda_net),
		  .x(sda_x_wire),
		  .y(sda),
		  .yfb(sda_yfb));

	assign tmpOE__Bufoe_sda_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{Net_968} : {Net_968};

	// Vmux_timeout_clock (cy_virtualmux_v1_0)
	assign timeout_clk = clock;


    assign itclk = Net_975 | timeout_clk;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_975));


    assign scl_o = scl_x_wire;

    assign sda_o = sda_x_wire;


endmodule

// Component: mux_v1_10
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\mux_v1_10"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\mux_v1_10\mux_v1_10.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\mux_v1_10"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\mux_v1_10\mux_v1_10.v"
`endif

// Timer_v2_80(CaptureAlternatingFall=false, CaptureAlternatingRise=false, CaptureCount=2, CaptureCounterEnabled=false, CaptureInputEnabled=true, CaptureMode=2, CONTROL3=0, ControlRegRemoved=0, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeviceFamily=PSoC5, EnableMode=2, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, HWCaptureCounterEnabled=false, InterruptOnCapture=true, InterruptOnFIFOFull=false, InterruptOnTC=false, IntOnCapture=1, IntOnFIFOFull=0, IntOnTC=0, NumberOfCaptures=1, param45=1, Period=65535, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=rstSts, RunMode=1, SiliconRevision=0, SoftwareCaptureModeEnabled=false, SoftwareTriggerModeEnabled=false, TriggerInputEnabled=false, TriggerMode=0, UDB16=true, UDB24=false, UDB32=false, UDB8=false, UDBControlReg=false, UsesHWEnable=1, VerilogSectionReplacementString=sT16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Timer_v2_80, CY_CONFIG_TITLE=Timer_3, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Timer_3, CY_INSTANCE_SHORT_NAME=Timer_3, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=80, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=Timer_3, )
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

// Component: CyControlReg_v1_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`endif

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=true, Compare1_8=false, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=24999, CompareValue2=63, CONTROL3=0, ControlReg=true, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InterruptOnCMP1=true, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=1, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=0, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=49999, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=sSTSReg_rstSts, RunMode=1, Status=true, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=false, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=true, UDB8=false, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONFIG_TITLE=PWM_ColorSensor, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_ColorSensor, CY_INSTANCE_SHORT_NAME=PWM_ColorSensor, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=PWM_ColorSensor, )
module PWM_v3_30_8 (
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

    B_PWM_v3_30 PWMUDB (
        .capture(capture),
        .clock(clock),
        .cmp_sel(cmp_sel),
        .enable(enable),
        .interrupt(Net_55),
        .kill(kill),
        .ph1(ph1),
        .ph2(ph2),
        .pwm(Net_96),
        .pwm1(pwm1),
        .pwm2(pwm2),
        .reset(reset),
        .tc(Net_101),
        .trigger(trigger));
    defparam PWMUDB.CaptureMode = 0;
    defparam PWMUDB.CompareStatusEdgeSense = 1;
    defparam PWMUDB.CompareType1 = 1;
    defparam PWMUDB.CompareType2 = 1;
    defparam PWMUDB.DeadBand = 0;
    defparam PWMUDB.DitherOffset = 0;
    defparam PWMUDB.EnableMode = 0;
    defparam PWMUDB.KillMode = 0;
    defparam PWMUDB.PWMMode = 0;
    defparam PWMUDB.Resolution = 16;
    defparam PWMUDB.RunMode = 1;
    defparam PWMUDB.TriggerMode = 0;
    defparam PWMUDB.UseStatus = 1;

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_96;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_101;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = Net_114;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

// Counter_v3_0(CaptureMode=1, CaptureModeSoftware=0, ClockMode=0, CompareMode=1, CompareModeSoftware=0, CompareStatusEdgeSense=true, CompareValue=128, CONTROL3=0, ControlRegRemoved=0, CyGetRegReplacementString=CY_GET_REG32, CySetRegReplacementString=CY_SET_REG32, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InitCounterValue=0, InterruptOnCapture=false, InterruptOnCompare=false, InterruptOnOverUnderFlow=false, InterruptOnTC=false, Period=4294967294, RegDefReplacementString=reg32, RegSizeReplacementString=uint32, ReloadOnCapture=true, ReloadOnCompare=false, ReloadOnOverUnder=true, ReloadOnReset=true, Resolution=32, RunMode=1, UDB16=false, UDB24=false, UDB32=true, UDB8=false, UDBControlReg=true, UseInterrupt=true, VerilogSectionReplacementString=sC32, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Counter_v3_0, CY_CONFIG_TITLE=Counter_ColorSensor, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Counter_ColorSensor, CY_INSTANCE_SHORT_NAME=Counter_ColorSensor, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=Counter_ColorSensor, )
module Counter_v3_0_9 (
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

    parameter CaptureMode = 1;
    parameter ClockMode = 0;
    parameter CompareMode = 1;
    parameter CompareStatusEdgeSense = 1;
    parameter EnableMode = 0;
    parameter ReloadOnCapture = 1;
    parameter ReloadOnCompare = 0;
    parameter ReloadOnOverUnder = 1;
    parameter ReloadOnReset = 1;
    parameter Resolution = 32;
    parameter RunMode = 1;
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
    defparam CounterUDB.CaptureMode = 1;
    defparam CounterUDB.ClockMode = 0;
    defparam CounterUDB.CompareMode = 1;
    defparam CounterUDB.CompareStatusEdgeSense = 1;
    defparam CounterUDB.EnableMode = 0;
    defparam CounterUDB.ReloadOnCapture = 1;
    defparam CounterUDB.ReloadOnCompare = 0;
    defparam CounterUDB.ReloadOnOverUnder = 1;
    defparam CounterUDB.ReloadOnReset = 1;
    defparam CounterUDB.Resolution = 32;
    defparam CounterUDB.RunMode = 1;
    defparam CounterUDB.UseInterrupt = 1;



endmodule

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=false, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=4, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=980, CompareValue2=63, CONTROL3=1, ControlReg=false, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=true, FF8=false, FixedFunction=true, FixedFunctionUsed=1, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=1, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=999, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=false, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=true, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=false, UDB8=false, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONFIG_TITLE=PWM_SmallServo, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_SmallServo, CY_INSTANCE_SHORT_NAME=PWM_SmallServo, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=PWM_SmallServo, )
module PWM_v3_30_10 (
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

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=false, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=4, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=525, CompareValue2=63, CONTROL3=1, ControlReg=false, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=true, FF8=false, FixedFunction=true, FixedFunctionUsed=1, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=1, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=649, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=false, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=true, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=false, UDB8=false, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONFIG_TITLE=PWM_BigServo, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_BigServo, CY_INSTANCE_SHORT_NAME=PWM_BigServo, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=PWM_BigServo, )
module PWM_v3_30_11 (
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

// UART_v2_50(Address1=0, Address2=0, BaudRate=9600, BreakBitsRX=13, BreakBitsTX=13, BreakDetect=false, CRCoutputsEn=false, Enable_RX=1, Enable_RXIntInterrupt=0, Enable_TX=1, Enable_TXIntInterrupt=0, EnableHWAddress=0, EnIntRXInterrupt=false, EnIntTXInterrupt=false, FlowControl=0, HalfDuplexEn=false, HwTXEnSignal=true, InternalClock=true, InternalClockToleranceMinus=3.93736842105263, InternalClockTolerancePlus=3.93736842105263, InternalClockUsed=1, InterruptOnAddDetect=0, InterruptOnAddressMatch=0, InterruptOnBreak=0, InterruptOnByteRcvd=1, InterruptOnOverrunError=0, InterruptOnParityError=0, InterruptOnStopError=0, InterruptOnTXComplete=false, InterruptOnTXFifoEmpty=false, InterruptOnTXFifoFull=false, InterruptOnTXFifoNotFull=false, IntOnAddressDetect=false, IntOnAddressMatch=false, IntOnBreak=false, IntOnByteRcvd=true, IntOnOverrunError=false, IntOnParityError=false, IntOnStopError=false, NumDataBits=8, NumStopBits=1, OverSamplingRate=8, ParityType=0, ParityTypeSw=false, RequiredClock=76800, RXAddressMode=0, RXBufferSize=4, RxBuffRegSizeReplacementString=uint8, RXEnable=true, TXBitClkGenDP=true, TXBufferSize=4, TxBuffRegSizeReplacementString=uint8, TXEnable=true, Use23Polling=true, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=UART_v2_50, CY_CONFIG_TITLE=UART_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=UART_1, CY_INSTANCE_SHORT_NAME=UART_1, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=50, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=UART_1, )
module UART_v2_50_12 (
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
		#(.id("c2bbd122-2a73-48a1-8e8d-3bab43278558/be0a0e37-ad17-42ca-b5a1-1a654d736358"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("13020833333.3333"),
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

// Timer_v2_80(CaptureAlternatingFall=false, CaptureAlternatingRise=false, CaptureCount=2, CaptureCounterEnabled=false, CaptureInputEnabled=false, CaptureMode=0, CONTROL3=1, ControlRegRemoved=0, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG8, CySetRegReplacementString=CY_SET_REG8, DeviceFamily=PSoC5, EnableMode=0, FF16=false, FF8=true, FixedFunction=true, FixedFunctionUsed=1, HWCaptureCounterEnabled=false, InterruptOnCapture=false, InterruptOnFIFOFull=false, InterruptOnTC=true, IntOnCapture=0, IntOnFIFOFull=0, IntOnTC=1, NumberOfCaptures=1, param45=1, Period=9, RegDefReplacementString=reg8, RegSizeReplacementString=uint8, Resolution=8, RstStatusReplacementString=rstSts, RunMode=0, SiliconRevision=0, SoftwareCaptureModeEnabled=false, SoftwareTriggerModeEnabled=false, TriggerInputEnabled=false, TriggerMode=0, UDB16=false, UDB24=false, UDB32=false, UDB8=false, UDBControlReg=false, UsesHWEnable=0, VerilogSectionReplacementString=sT8, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Timer_v2_80, CY_CONFIG_TITLE=Timer_2, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Timer_2, CY_INSTANCE_SHORT_NAME=Timer_2, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=80, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=Timer_2, )
module Timer_v2_80_13 (
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
    parameter Resolution = 8;
    parameter SiliconRevision = "0";

          wire  Net_260;
          wire  Net_261;
          wire  Net_266;
          wire  Net_102;
          wire  Net_55;
          wire  Net_57;
          wire  Net_53;
          wire  Net_51;

    cy_psoc3_timer_v1_0 TimerHW (
        .capture(capture),
        .clock(clock),
        .compare(Net_261),
        .enable(Net_266),
        .interrupt(Net_57),
        .kill(Net_260),
        .tc(Net_51),
        .timer_reset(reset));

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_260));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign interrupt = Net_57;

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign tc = Net_51;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_266 = Net_102;



endmodule

// Component: cy_analog_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`endif

// Component: cy_vref_v1_70
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70\cy_vref_v1_70.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70\cy_vref_v1_70.v"
`endif

// ADC_SAR_v3_10(ADC_Clock=1, ADC_Clock_Frequency=1599996, ADC_Input_Range=1, ADC_Power=0, ADC_Reference=0, ADC_Resolution=8, ADC_SampleMode=1, Enable_next_out=false, Ref_Voltage=2.5, Ref_Voltage_mV=2500, rm_int=false, Sample_Precharge=4, Sample_Rate=133333, Sample_Rate_def=631579, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=ADC_SAR_v3_10, CY_CONFIG_TITLE=ADC_SAR_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=ADC_SAR_1, CY_INSTANCE_SHORT_NAME=ADC_SAR_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=10, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=ADC_SAR_1, )
module ADC_SAR_v3_10_14 (
    aclk,
    eoc,
    eos,
    soc,
    vdac_ref,
    vminus,
    vplus);
    input       aclk;
    output      eoc;
    output      eos;
    input       soc;
    inout       vdac_ref;
    electrical  vdac_ref;
    inout       vminus;
    electrical  vminus;
    inout       vplus;
    electrical  vplus;


          wire [3:0] vp_ctl;
          wire [3:0] vn_ctl;
    electrical  Net_255;
    electrical  Net_267;
    electrical  Net_210;
    electrical  Net_209;
          wire  Net_252;
          wire [11:0] Net_207;
          wire  Net_205;
          wire  Net_381;
    electrical  Net_368;
    electrical  Net_235;
    electrical  Net_216;
    electrical  Net_233;
          wire  Net_385;
          wire  Net_383;
          wire  Net_221;
    electrical  Net_248;
    electrical  Net_257;
    electrical  Net_149;
    electrical  Net_126;
    electrical  Net_215;
          wire  Net_188;

	// cy_analog_virtualmux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_3_connect(Net_248, Net_235);
	defparam cy_analog_virtualmux_3_connect.sig_width = 1;


	cy_isr_v1_0
		#(.int_type(2'b10))
		IRQ
		 (.int_signal(eoc));


    ZeroTerminal ZeroTerminal_1 (
        .z(vp_ctl[0]));

    ZeroTerminal ZeroTerminal_2 (
        .z(vp_ctl[2]));

    ZeroTerminal ZeroTerminal_3 (
        .z(vn_ctl[1]));

    ZeroTerminal ZeroTerminal_4 (
        .z(vn_ctl[3]));

    ZeroTerminal ZeroTerminal_5 (
        .z(vp_ctl[1]));

    ZeroTerminal ZeroTerminal_6 (
        .z(vp_ctl[3]));

    ZeroTerminal ZeroTerminal_7 (
        .z(vn_ctl[0]));

    ZeroTerminal ZeroTerminal_8 (
        .z(vn_ctl[2]));


	cy_clock_v1_0
		#(.id("1680325c-36b3-482a-80c5-f2bd0a2bda6f/696a0979-21fc-4185-bf38-6c79febcde7a"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("625001562.503906"),
		  .is_direct(0),
		  .is_digital(0))
		theACLK
		 (.clock_out(Net_385),
		  .dig_domain_out(Net_381));


	// Clock_VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_188 = Net_221;

    cy_psoc5_sar_v2_0 ADC_SAR (
        .clk_udb(),
        .clock(Net_188),
        .data_out(Net_207[11:0]),
        .eof_udb(eoc),
        .ext_pin(Net_215),
        .irq(Net_252),
        .next_out(eos),
        .pump_clock(Net_188),
        .sof_udb(soc),
        .vminus(Net_126),
        .vn_ctl_udb(vn_ctl[3:0]),
        .vp_ctl_udb(vp_ctl[3:0]),
        .vplus(vplus),
        .vref(Net_248),
        .vrefhi_out(Net_257));

	// cy_analog_virtualmux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_2_connect(Net_215, Net_209);
	defparam cy_analog_virtualmux_2_connect.sig_width = 1;

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_126, Net_149);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 noconnect (
        .noconnect(Net_209));

	// cy_analog_virtualmux_4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_4_connect(Net_257, Net_149);
	defparam cy_analog_virtualmux_4_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_255));


	cy_vref_v1_0
		#(.guid("4720866E-BC14-478d-B8A0-3E44F38CADAC"),
		  .name("Vdda/2"),
		  .autoenable(1))
		vRef_Vdda_1
		 (.vout(Net_235));


    cy_analog_noconnect_v1_0 noconnect_1 (
        .noconnect(Net_368));


    assign Net_221 = Net_383 | Net_385;

    assign Net_383 = 1'h0;



endmodule

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=true, Compare1_8=false, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=12500, CompareValue2=12500, CONTROL3=0, ControlReg=true, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=0, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=25000, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=true, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=false, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=true, UDB8=false, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONFIG_TITLE=PWM_Flicker, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_Flicker, CY_INSTANCE_SHORT_NAME=PWM_Flicker, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=PWM_Flicker, )
module PWM_v3_30_15 (
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

    B_PWM_v3_30 PWMUDB (
        .capture(capture),
        .clock(clock),
        .cmp_sel(cmp_sel),
        .enable(enable),
        .interrupt(Net_55),
        .kill(kill),
        .ph1(ph1),
        .ph2(ph2),
        .pwm(Net_96),
        .pwm1(pwm1),
        .pwm2(pwm2),
        .reset(reset),
        .tc(Net_101),
        .trigger(trigger));
    defparam PWMUDB.CaptureMode = 0;
    defparam PWMUDB.CompareStatusEdgeSense = 1;
    defparam PWMUDB.CompareType1 = 1;
    defparam PWMUDB.CompareType2 = 1;
    defparam PWMUDB.DeadBand = 0;
    defparam PWMUDB.DitherOffset = 0;
    defparam PWMUDB.EnableMode = 0;
    defparam PWMUDB.KillMode = 0;
    defparam PWMUDB.PWMMode = 0;
    defparam PWMUDB.Resolution = 16;
    defparam PWMUDB.RunMode = 0;
    defparam PWMUDB.TriggerMode = 0;
    defparam PWMUDB.UseStatus = 1;

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_96;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_101;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = Net_114;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

// Component: Debouncer_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Debouncer_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Debouncer_v1_0\Debouncer_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Debouncer_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Debouncer_v1_0\Debouncer_v1_0.v"
`endif

// top
module top ;

          wire [1:0] Net_827;
          wire [1:0] Net_826;
          wire [1:0] Net_825;
          wire  Net_789;
          wire  Net_788;
          wire  Net_787;
          wire  Net_786;
          wire  Net_785;
          wire  Net_784;
          wire  Net_783;
          wire  Net_782;
          wire  Net_781;
          wire  Net_780;
          wire  Net_779;
          wire  Net_755;
          wire  Net_767;
    electrical  Net_715;
    electrical  Net_719;
          wire  Net_716;
          wire  Net_720;
          wire  Net_717;
          wire  Net_718;
    electrical  Net_714;
          wire  Net_699;
          wire  Net_698;
          wire  Net_697;
          wire  Net_696;
          wire  Net_695;
          wire  Net_694;
          wire  Net_620;
          wire  Net_619;
          wire  Net_618;
          wire  Net_617;
          wire  Net_614;
          wire  Net_613;
          wire  Net_611;
          wire  Net_610;
          wire  Net_609;
          wire  Net_608;
          wire  Net_1104;
          wire  Net_1103;
          wire  Net_1102;
          wire  Net_1101;
          wire  Net_840;
          wire  Net_1100;
          wire  Net_1099;
          wire  Net_1098;
          wire  Net_1097;
          wire  Net_1096;
          wire  Net_1095;
          wire  Net_862;
          wire  Net_1094;
          wire  Net_1093;
          wire  Net_1092;
          wire  Net_1091;
          wire  Net_851;
          wire  Net_1090;
          wire  Net_1089;
          wire  Net_1088;
          wire  Net_1087;
          wire  Net_1086;
          wire  Net_1085;
          wire  Net_312;
          wire  Net_311;
          wire  Net_310;
          wire  Net_309;
          wire  Net_308;
          wire  Net_307;
          wire  Net_306;
          wire  Net_305;
          wire  Net_304;
          wire  Net_323;
          wire  Net_301;
          wire  Net_300;
          wire  Net_299;
          wire  Net_298;
          wire  Net_297;
          wire  Net_296;
          wire  Net_295;
          wire  Net_294;
          wire  Net_454;
          wire  Net_453;
          wire  Net_452;
          wire  Net_451;
          wire  Net_450;
          wire  Net_449;
          wire  Net_448;
          wire  Net_447;
          wire  Net_446;
          wire  Net_445;
          wire  Net_641;
          wire  Net_640;
          wire  Net_639;
          wire  Net_638;
          wire  Net_637;
          wire  Net_636;
          wire  Net_635;
          wire  Net_634;
          wire  Net_676;
          wire  Net_633;
          wire  Net_642;
          wire  Net_629;
          wire  Net_628;
          wire  Net_626;
          wire  Net_625;
          wire  Net_657;
          wire  Net_630;
          wire  Net_655;
          wire  Net_713;
          wire  Net_654;
          wire  Net_690;
          wire  Net_689;
          wire  Net_680;
          wire  Net_688;
          wire  Net_687;
          wire  Net_681;
          wire  Net_686;
          wire  Net_685;
          wire  Net_684;
          wire  Net_683;
          wire  Net_682;
          wire  Net_159;
          wire  Net_158;
          wire  Net_219;
          wire  Net_156;
          wire  Net_155;
          wire  Net_154;
          wire  Net_241;
          wire  Net_88;
          wire  Net_87;
          wire  Net_86;
          wire  Net_85;
          wire  Net_35;
          wire  Net_34;
          wire  Net_38;
          wire  Net_36;
          wire  Net_32;
          wire  Net_30;
          wire  Net_29;
          wire  Net_27;
          wire  Net_33;
          wire  Net_673;
          wire  Net_24;
          wire  Net_23;
          wire  Net_672;
          wire  Net_21;
          wire  Net_20;
          wire  Net_19;
          wire  Net_17;
          wire [1:0] Net_883;
          wire [1:0] Net_813;
          wire  Net_754;
          wire  Net_752;
          wire  Net_615;
          wire  Net_616;
          wire  Net_612;
          wire  Net_691;
          wire  Net_693;
          wire [1:0] Net_679;
          wire  Net_22;
          wire  Net_627;
          wire  Net_624;
          wire  Net_622;
          wire  Net_566;
          wire  Net_567;
          wire  Net_463;
          wire  Net_108;
          wire  Net_101;
          wire  Net_288;
          wire  Net_56;
          wire  Net_12;
          wire  Net_10;
          wire  Net_18;

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

    PWM_v3_30_0 PWM_Wheels (
        .capture(1'b0),
        .clock(Net_18),
        .cmp_sel(1'b0),
        .enable(1'b1),
        .interrupt(Net_21),
        .kill(1'b1),
        .ph1(Net_23),
        .ph2(Net_24),
        .pwm(Net_673),
        .pwm1(Net_33),
        .pwm2(Net_27),
        .reset(Net_22),
        .tc(Net_29),
        .trigger(1'b0));
    defparam PWM_Wheels.Resolution = 16;


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
		  .y({Net_27}),
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

    QuadDec_v3_0_4 QuadDec_2 (
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

    Timer_v2_80_5 Timer_1 (
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


    I2C_v3_50_6 I2C_1 (
        .bclk(Net_682),
        .clock(1'b0),
        .iclk(Net_684),
        .itclk(Net_685),
        .reset(1'b0),
        .scl(Net_681),
        .scl_i(1'b0),
        .scl_o(Net_688),
        .sda(Net_680),
        .sda_i(1'b0),
        .sda_o(Net_690));

	wire [0:0] tmpOE__Front_Echo_1_net;
	wire [0:0] tmpIO_0__Front_Echo_1_net;
	wire [0:0] tmpINTERRUPT_0__Front_Echo_1_net;
	electrical [0:0] tmpSIOVREF__Front_Echo_1_net;

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
		Front_Echo_1
		 (.oe(tmpOE__Front_Echo_1_net),
		  .y({1'b0}),
		  .fb({Net_654}),
		  .io({tmpIO_0__Front_Echo_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Front_Echo_1_net),
		  .interrupt({tmpINTERRUPT_0__Front_Echo_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Front_Echo_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__SCL_1_net;
	wire [0:0] tmpFB_0__SCL_1_net;
	wire [0:0] tmpINTERRUPT_0__SCL_1_net;
	electrical [0:0] tmpSIOVREF__SCL_1_net;

	cy_psoc3_pins_v1_10
		#(.id("02f2cf2c-2c7a-49df-9246-7a3435c21be3"),
		  .drive_mode(3'b100),
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
		  .pin_mode("B"),
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
		SCL_1
		 (.oe(tmpOE__SCL_1_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__SCL_1_net[0:0]}),
		  .io({Net_681}),
		  .siovref(tmpSIOVREF__SCL_1_net),
		  .interrupt({tmpINTERRUPT_0__SCL_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SCL_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__SDA_1_net;
	wire [0:0] tmpFB_0__SDA_1_net;
	wire [0:0] tmpINTERRUPT_0__SDA_1_net;
	electrical [0:0] tmpSIOVREF__SDA_1_net;

	cy_psoc3_pins_v1_10
		#(.id("22863ebe-a37b-476f-b252-6e49a8c00b12"),
		  .drive_mode(3'b100),
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
		  .pin_mode("B"),
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
		SDA_1
		 (.oe(tmpOE__SDA_1_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__SDA_1_net[0:0]}),
		  .io({Net_680}),
		  .siovref(tmpSIOVREF__SDA_1_net),
		  .interrupt({tmpINTERRUPT_0__SDA_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SDA_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("0755eefd-2af3-42c5-9fa7-e2d24ff7dcae"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("10000000000000"),
		  .is_direct(0),
		  .is_digital(1))
		timer_clock_2
		 (.clock_out(Net_691));


	wire [0:0] tmpOE__Trigger_net;
	wire [0:0] tmpIO_0__Trigger_net;
	wire [0:0] tmpINTERRUPT_0__Trigger_net;
	electrical [0:0] tmpSIOVREF__Trigger_net;

	cy_psoc3_pins_v1_10
		#(.id("44ba8491-e49b-4e5d-9fb5-52ecde5f3edb"),
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
		Trigger
		 (.oe(tmpOE__Trigger_net),
		  .y({1'b0}),
		  .fb({Net_627}),
		  .io({tmpIO_0__Trigger_net[0:0]}),
		  .siovref(tmpSIOVREF__Trigger_net),
		  .interrupt({tmpINTERRUPT_0__Trigger_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Trigger_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__led_green_net;
	wire [0:0] tmpFB_0__led_green_net;
	wire [0:0] tmpIO_0__led_green_net;
	wire [0:0] tmpINTERRUPT_0__led_green_net;
	electrical [0:0] tmpSIOVREF__led_green_net;

	cy_psoc3_pins_v1_10
		#(.id("fde3f9f5-bf5f-4426-80a5-d88ee9754583"),
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
		led_green
		 (.oe(tmpOE__led_green_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__led_green_net[0:0]}),
		  .io({tmpIO_0__led_green_net[0:0]}),
		  .siovref(tmpSIOVREF__led_green_net),
		  .interrupt({tmpINTERRUPT_0__led_green_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__led_green_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Right_Echo_net;
	wire [0:0] tmpIO_0__Right_Echo_net;
	wire [0:0] tmpINTERRUPT_0__Right_Echo_net;
	electrical [0:0] tmpSIOVREF__Right_Echo_net;

	cy_psoc3_pins_v1_10
		#(.id("f269b13e-46a5-406f-8772-5d6964fc791c"),
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
		Right_Echo
		 (.oe(tmpOE__Right_Echo_net),
		  .y({1'b0}),
		  .fb({Net_655}),
		  .io({tmpIO_0__Right_Echo_net[0:0]}),
		  .siovref(tmpSIOVREF__Right_Echo_net),
		  .interrupt({tmpINTERRUPT_0__Right_Echo_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Right_Echo_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    // -- Mux start --
    if (1)
    begin : mux_1
        reg  tmp__mux_1_reg;
        always @(Net_654 or Net_630 or Net_657 or Net_655 or Net_679)
        begin
            case (Net_679[1:0])
                2'b00 :  tmp__mux_1_reg = Net_654;
                2'b01 :  tmp__mux_1_reg = Net_630;
                2'b10 :  tmp__mux_1_reg = Net_657;
                2'b11 :  tmp__mux_1_reg = Net_655;
            endcase
        end
        assign Net_624 = tmp__mux_1_reg;
    end
    // -- Mux end --

    Timer_v2_80_7 Timer_3 (
        .capture(Net_624),
        .capture_out(Net_625),
        .clock(Net_622),
        .enable(Net_624),
        .interrupt(Net_626),
        .reset(Net_627),
        .tc(Net_628),
        .trigger(1'b1));
    defparam Timer_3.CaptureCount = 2;
    defparam Timer_3.CaptureCounterEnabled = 0;
    defparam Timer_3.DeviceFamily = "PSoC5";
    defparam Timer_3.InterruptOnCapture = 1;
    defparam Timer_3.InterruptOnTC = 0;
    defparam Timer_3.Resolution = 16;
    defparam Timer_3.SiliconRevision = "0";

	wire [0:0] tmpOE__IR_input_net;
	wire [0:0] tmpFB_0__IR_input_net;
	wire [0:0] tmpIO_0__IR_input_net;
	wire [0:0] tmpINTERRUPT_0__IR_input_net;
	electrical [0:0] tmpSIOVREF__IR_input_net;

	cy_psoc3_pins_v1_10
		#(.id("68474a38-ab5d-490f-aebe-e85c07cf45f1"),
		  .drive_mode(3'b010),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
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
		IR_input
		 (.oe(tmpOE__IR_input_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__IR_input_net[0:0]}),
		  .io({tmpIO_0__IR_input_net[0:0]}),
		  .siovref(tmpSIOVREF__IR_input_net),
		  .interrupt({tmpINTERRUPT_0__IR_input_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__IR_input_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_3
		 (.int_signal(Net_626));


	wire [0:0] tmpOE__Left_Echo_net;
	wire [0:0] tmpIO_0__Left_Echo_net;
	wire [0:0] tmpINTERRUPT_0__Left_Echo_net;
	electrical [0:0] tmpSIOVREF__Left_Echo_net;

	cy_psoc3_pins_v1_10
		#(.id("34a8b675-1019-47ba-9707-716de9c2d4bb"),
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
		Left_Echo
		 (.oe(tmpOE__Left_Echo_net),
		  .y({1'b0}),
		  .fb({Net_657}),
		  .io({tmpIO_0__Left_Echo_net[0:0]}),
		  .siovref(tmpSIOVREF__Left_Echo_net),
		  .interrupt({tmpINTERRUPT_0__Left_Echo_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Left_Echo_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("b906f24e-8131-407c-855d-3913e2ed7b55"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1000000000"),
		  .is_direct(0),
		  .is_digital(1))
		timer_clock_1
		 (.clock_out(Net_622));


	wire [0:0] tmpOE__led_red_net;
	wire [0:0] tmpFB_0__led_red_net;
	wire [0:0] tmpIO_0__led_red_net;
	wire [0:0] tmpINTERRUPT_0__led_red_net;
	electrical [0:0] tmpSIOVREF__led_red_net;

	cy_psoc3_pins_v1_10
		#(.id("926b033e-2ad1-4f5d-9dd7-7463e6d0a680"),
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
		led_red
		 (.oe(tmpOE__led_red_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__led_red_net[0:0]}),
		  .io({tmpIO_0__led_red_net[0:0]}),
		  .siovref(tmpSIOVREF__led_red_net),
		  .interrupt({tmpINTERRUPT_0__led_red_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__led_red_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    CyControlReg_v1_80 Control_Reg_2 (
        .clock(1'b0),
        .control_0(Net_676),
        .control_1(Net_634),
        .control_2(Net_635),
        .control_3(Net_636),
        .control_4(Net_637),
        .control_5(Net_638),
        .control_6(Net_639),
        .control_7(Net_640),
        .control_bus(Net_679[1:0]),
        .reset(1'b0));
    defparam Control_Reg_2.Bit0Mode = 0;
    defparam Control_Reg_2.Bit1Mode = 0;
    defparam Control_Reg_2.Bit2Mode = 0;
    defparam Control_Reg_2.Bit3Mode = 0;
    defparam Control_Reg_2.Bit4Mode = 0;
    defparam Control_Reg_2.Bit5Mode = 0;
    defparam Control_Reg_2.Bit6Mode = 0;
    defparam Control_Reg_2.Bit7Mode = 0;
    defparam Control_Reg_2.BitValue = 0;
    defparam Control_Reg_2.BusDisplay = 1;
    defparam Control_Reg_2.ExtrReset = 0;
    defparam Control_Reg_2.NumOutputs = 2;

	wire [0:0] tmpOE__Front_Echo_2_net;
	wire [0:0] tmpIO_0__Front_Echo_2_net;
	wire [0:0] tmpINTERRUPT_0__Front_Echo_2_net;
	electrical [0:0] tmpSIOVREF__Front_Echo_2_net;

	cy_psoc3_pins_v1_10
		#(.id("93f01c25-f3ed-468f-a1e9-33eca69bc17c"),
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
		Front_Echo_2
		 (.oe(tmpOE__Front_Echo_2_net),
		  .y({1'b0}),
		  .fb({Net_630}),
		  .io({tmpIO_0__Front_Echo_2_net[0:0]}),
		  .siovref(tmpSIOVREF__Front_Echo_2_net),
		  .interrupt({tmpINTERRUPT_0__Front_Echo_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Front_Echo_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    PWM_v3_30_8 PWM_ColorSensor (
        .capture(1'b0),
        .clock(Net_56),
        .cmp_sel(1'b0),
        .enable(1'b1),
        .interrupt(Net_101),
        .kill(1'b1),
        .ph1(Net_449),
        .ph2(Net_450),
        .pwm(Net_288),
        .pwm1(Net_451),
        .pwm2(Net_452),
        .reset(Net_108),
        .tc(Net_453),
        .trigger(1'b0));
    defparam PWM_ColorSensor.Resolution = 16;

    Counter_v3_0_9 Counter_ColorSensor (
        .capture(Net_288),
        .clock(Net_56),
        .comp(Net_294),
        .count(Net_295),
        .downCnt(1'b0),
        .enable(1'b0),
        .interrupt(Net_298),
        .reset(Net_108),
        .tc(Net_299),
        .up_ndown(1'b1),
        .upCnt(1'b0));
    defparam Counter_ColorSensor.CaptureMode = 1;
    defparam Counter_ColorSensor.ClockMode = 0;
    defparam Counter_ColorSensor.CompareMode = 1;
    defparam Counter_ColorSensor.CompareStatusEdgeSense = 1;
    defparam Counter_ColorSensor.EnableMode = 0;
    defparam Counter_ColorSensor.ReloadOnCapture = 1;
    defparam Counter_ColorSensor.ReloadOnCompare = 0;
    defparam Counter_ColorSensor.ReloadOnOverUnder = 1;
    defparam Counter_ColorSensor.ReloadOnReset = 1;
    defparam Counter_ColorSensor.Resolution = 32;
    defparam Counter_ColorSensor.RunMode = 1;
    defparam Counter_ColorSensor.UseInterrupt = 1;


	cy_clock_v1_0
		#(.id("238c40b9-a46e-4a10-908b-a241f1f2d19a"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("10000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_7
		 (.clock_out(Net_56));


	wire [0:0] tmpOE__led_blue_net;
	wire [0:0] tmpFB_0__led_blue_net;
	wire [0:0] tmpIO_0__led_blue_net;
	wire [0:0] tmpINTERRUPT_0__led_blue_net;
	electrical [0:0] tmpSIOVREF__led_blue_net;

	cy_psoc3_pins_v1_10
		#(.id("10b612a0-9ac3-4069-9e20-e037dcdb4300"),
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
		led_blue
		 (.oe(tmpOE__led_blue_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__led_blue_net[0:0]}),
		  .io({tmpIO_0__led_blue_net[0:0]}),
		  .siovref(tmpSIOVREF__led_blue_net),
		  .interrupt({tmpINTERRUPT_0__led_blue_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__led_blue_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_6
		 (.int_signal(Net_101));


    CyControlReg_v1_80 Control_Reg_1 (
        .clock(1'b0),
        .control_0(Net_108),
        .control_1(Net_305),
        .control_2(Net_306),
        .control_3(Net_307),
        .control_4(Net_308),
        .control_5(Net_309),
        .control_6(Net_310),
        .control_7(Net_311),
        .reset(1'b0));
    defparam Control_Reg_1.Bit0Mode = 0;
    defparam Control_Reg_1.Bit1Mode = 0;
    defparam Control_Reg_1.Bit2Mode = 0;
    defparam Control_Reg_1.Bit3Mode = 0;
    defparam Control_Reg_1.Bit4Mode = 0;
    defparam Control_Reg_1.Bit5Mode = 0;
    defparam Control_Reg_1.Bit6Mode = 0;
    defparam Control_Reg_1.Bit7Mode = 0;
    defparam Control_Reg_1.BitValue = 0;
    defparam Control_Reg_1.BusDisplay = 0;
    defparam Control_Reg_1.ExtrReset = 0;
    defparam Control_Reg_1.NumOutputs = 1;

	wire [0:0] tmpOE__S1_net;
	wire [0:0] tmpFB_0__S1_net;
	wire [0:0] tmpIO_0__S1_net;
	wire [0:0] tmpINTERRUPT_0__S1_net;
	electrical [0:0] tmpSIOVREF__S1_net;

	cy_psoc3_pins_v1_10
		#(.id("a8e700a1-4ba9-4e23-992d-80fa185bbb5b"),
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
		S1
		 (.oe(tmpOE__S1_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__S1_net[0:0]}),
		  .io({tmpIO_0__S1_net[0:0]}),
		  .siovref(tmpSIOVREF__S1_net),
		  .interrupt({tmpINTERRUPT_0__S1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__S1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__S2_net;
	wire [0:0] tmpFB_0__S2_net;
	wire [0:0] tmpIO_0__S2_net;
	wire [0:0] tmpINTERRUPT_0__S2_net;
	electrical [0:0] tmpSIOVREF__S2_net;

	cy_psoc3_pins_v1_10
		#(.id("b0d4a57b-1d6c-4113-9e81-f0695af1e0b4"),
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
		S2
		 (.oe(tmpOE__S2_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__S2_net[0:0]}),
		  .io({tmpIO_0__S2_net[0:0]}),
		  .siovref(tmpSIOVREF__S2_net),
		  .interrupt({tmpINTERRUPT_0__S2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__S2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__S0_net;
	wire [0:0] tmpFB_0__S0_net;
	wire [0:0] tmpIO_0__S0_net;
	wire [0:0] tmpINTERRUPT_0__S0_net;
	electrical [0:0] tmpSIOVREF__S0_net;

	cy_psoc3_pins_v1_10
		#(.id("30431082-c72b-4142-864c-7fe3b7753fc2"),
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
		S0
		 (.oe(tmpOE__S0_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__S0_net[0:0]}),
		  .io({tmpIO_0__S0_net[0:0]}),
		  .siovref(tmpSIOVREF__S0_net),
		  .interrupt({tmpINTERRUPT_0__S0_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__S0_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__S3_net;
	wire [0:0] tmpFB_0__S3_net;
	wire [0:0] tmpIO_0__S3_net;
	wire [0:0] tmpINTERRUPT_0__S3_net;
	electrical [0:0] tmpSIOVREF__S3_net;

	cy_psoc3_pins_v1_10
		#(.id("fb252ce1-583c-45fe-a505-1bb0a056e00a"),
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
		S3
		 (.oe(tmpOE__S3_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__S3_net[0:0]}),
		  .io({tmpIO_0__S3_net[0:0]}),
		  .siovref(tmpSIOVREF__S3_net),
		  .interrupt({tmpINTERRUPT_0__S3_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__S3_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__CS_LED_net;
	wire [0:0] tmpFB_0__CS_LED_net;
	wire [0:0] tmpIO_0__CS_LED_net;
	wire [0:0] tmpINTERRUPT_0__CS_LED_net;
	electrical [0:0] tmpSIOVREF__CS_LED_net;

	cy_psoc3_pins_v1_10
		#(.id("9e5abc8d-9fd2-4cf6-b1c2-cc7ce4856bc1"),
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
		CS_LED
		 (.oe(tmpOE__CS_LED_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__CS_LED_net[0:0]}),
		  .io({tmpIO_0__CS_LED_net[0:0]}),
		  .siovref(tmpSIOVREF__CS_LED_net),
		  .interrupt({tmpINTERRUPT_0__CS_LED_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__CS_LED_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__CS_out_net;
	wire [0:0] tmpIO_0__CS_out_net;
	wire [0:0] tmpINTERRUPT_0__CS_out_net;
	electrical [0:0] tmpSIOVREF__CS_out_net;

	cy_psoc3_pins_v1_10
		#(.id("403a55cc-fd65-4b22-a87a-2610479d61b0"),
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
		CS_out
		 (.oe(tmpOE__CS_out_net),
		  .y({1'b0}),
		  .fb({Net_295}),
		  .io({tmpIO_0__CS_out_net[0:0]}),
		  .siovref(tmpSIOVREF__CS_out_net),
		  .interrupt({tmpINTERRUPT_0__CS_out_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__CS_out_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    PWM_v3_30_10 PWM_SmallServo (
        .capture(1'b0),
        .clock(Net_566),
        .cmp_sel(1'b0),
        .enable(1'b1),
        .interrupt(Net_1088),
        .kill(Net_463),
        .ph1(Net_1089),
        .ph2(Net_1090),
        .pwm(Net_851),
        .pwm1(Net_1091),
        .pwm2(Net_1092),
        .reset(Net_463),
        .tc(Net_1093),
        .trigger(1'b0));
    defparam PWM_SmallServo.Resolution = 16;


	cy_clock_v1_0
		#(.id("702b4ae9-5f30-42be-bc87-0f8d06de74d8"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("20000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_4
		 (.clock_out(Net_566));


    assign Net_463 = 1'h0;

    PWM_v3_30_11 PWM_BigServo (
        .capture(1'b0),
        .clock(Net_566),
        .cmp_sel(1'b0),
        .enable(1'b1),
        .interrupt(Net_1098),
        .kill(Net_567),
        .ph1(Net_1099),
        .ph2(Net_1100),
        .pwm(Net_840),
        .pwm1(Net_1101),
        .pwm2(Net_1102),
        .reset(Net_567),
        .tc(Net_1103),
        .trigger(1'b0));
    defparam PWM_BigServo.Resolution = 16;

    assign Net_567 = 1'h0;

	wire [0:0] tmpOE__small_servo_net;
	wire [0:0] tmpFB_0__small_servo_net;
	wire [0:0] tmpIO_0__small_servo_net;
	wire [0:0] tmpINTERRUPT_0__small_servo_net;
	electrical [0:0] tmpSIOVREF__small_servo_net;

	cy_psoc3_pins_v1_10
		#(.id("2fc3648a-7829-4032-b028-cc67ef89350f"),
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
		small_servo
		 (.oe(tmpOE__small_servo_net),
		  .y({Net_851}),
		  .fb({tmpFB_0__small_servo_net[0:0]}),
		  .io({tmpIO_0__small_servo_net[0:0]}),
		  .siovref(tmpSIOVREF__small_servo_net),
		  .interrupt({tmpINTERRUPT_0__small_servo_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__small_servo_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__big_servo_net;
	wire [0:0] tmpFB_0__big_servo_net;
	wire [0:0] tmpIO_0__big_servo_net;
	wire [0:0] tmpINTERRUPT_0__big_servo_net;
	electrical [0:0] tmpSIOVREF__big_servo_net;

	cy_psoc3_pins_v1_10
		#(.id("1802cc23-2d5e-4428-b7e7-bf2fdf21f586"),
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
		big_servo
		 (.oe(tmpOE__big_servo_net),
		  .y({Net_840}),
		  .fb({tmpFB_0__big_servo_net[0:0]}),
		  .io({tmpIO_0__big_servo_net[0:0]}),
		  .siovref(tmpSIOVREF__big_servo_net),
		  .interrupt({tmpINTERRUPT_0__big_servo_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__big_servo_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    UART_v2_50_12 UART_1 (
        .clock(1'b0),
        .cts_n(1'b0),
        .reset(1'b0),
        .rts_n(Net_611),
        .rx(Net_612),
        .rx_clk(Net_613),
        .rx_data(Net_614),
        .rx_interrupt(Net_615),
        .tx(Net_616),
        .tx_clk(Net_617),
        .tx_data(Net_618),
        .tx_en(Net_619),
        .tx_interrupt(Net_620));
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

	wire [0:0] tmpOE__Rx_BT_net;
	wire [0:0] tmpIO_0__Rx_BT_net;
	wire [0:0] tmpINTERRUPT_0__Rx_BT_net;
	electrical [0:0] tmpSIOVREF__Rx_BT_net;

	cy_psoc3_pins_v1_10
		#(.id("5aa9c49c-545e-4a15-a624-609b178a03be"),
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
		Rx_BT
		 (.oe(tmpOE__Rx_BT_net),
		  .y({1'b0}),
		  .fb({Net_612}),
		  .io({tmpIO_0__Rx_BT_net[0:0]}),
		  .siovref(tmpSIOVREF__Rx_BT_net),
		  .interrupt({tmpINTERRUPT_0__Rx_BT_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Rx_BT_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Tx_BT_net;
	wire [0:0] tmpFB_0__Tx_BT_net;
	wire [0:0] tmpIO_0__Tx_BT_net;
	wire [0:0] tmpINTERRUPT_0__Tx_BT_net;
	electrical [0:0] tmpSIOVREF__Tx_BT_net;

	cy_psoc3_pins_v1_10
		#(.id("8c56fec9-1bde-4cff-8c75-ffd7989b6727"),
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
		Tx_BT
		 (.oe(tmpOE__Tx_BT_net),
		  .y({Net_616}),
		  .fb({tmpFB_0__Tx_BT_net[0:0]}),
		  .io({tmpIO_0__Tx_BT_net[0:0]}),
		  .siovref(tmpSIOVREF__Tx_BT_net),
		  .interrupt({tmpINTERRUPT_0__Tx_BT_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Tx_BT_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_7
		 (.int_signal(Net_615));


    ZeroTerminal ZeroTerminal_2 (
        .z(Net_693));

    Timer_v2_80_13 Timer_2 (
        .capture(1'b0),
        .capture_out(Net_695),
        .clock(Net_691),
        .enable(1'b1),
        .interrupt(Net_697),
        .reset(Net_693),
        .tc(Net_698),
        .trigger(1'b1));
    defparam Timer_2.CaptureCount = 2;
    defparam Timer_2.CaptureCounterEnabled = 0;
    defparam Timer_2.DeviceFamily = "PSoC5";
    defparam Timer_2.InterruptOnCapture = 0;
    defparam Timer_2.InterruptOnTC = 1;
    defparam Timer_2.Resolution = 8;
    defparam Timer_2.SiliconRevision = "0";


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_2
		 (.int_signal(Net_697));


	wire [0:0] tmpOE__Sharp_IR_net;
	wire [0:0] tmpFB_0__Sharp_IR_net;
	wire [0:0] tmpIO_0__Sharp_IR_net;
	wire [0:0] tmpINTERRUPT_0__Sharp_IR_net;
	electrical [0:0] tmpSIOVREF__Sharp_IR_net;

	cy_psoc3_pins_v1_10
		#(.id("7b139a3c-535f-49e4-9587-a48c758369e2"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
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
		  .pin_mode("A"),
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
		Sharp_IR
		 (.oe(tmpOE__Sharp_IR_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Sharp_IR_net[0:0]}),
		  .analog({Net_714}),
		  .io({tmpIO_0__Sharp_IR_net[0:0]}),
		  .siovref(tmpSIOVREF__Sharp_IR_net),
		  .interrupt({tmpINTERRUPT_0__Sharp_IR_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Sharp_IR_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    ADC_SAR_v3_10_14 ADC_SAR_1 (
        .aclk(1'b0),
        .eoc(Net_717),
        .eos(Net_720),
        .soc(1'b0),
        .vdac_ref(Net_719),
        .vminus(Net_715),
        .vplus(Net_714));

	wire [0:0] tmpOE__Motor_Flicker_IN_1_net;
	wire [0:0] tmpFB_0__Motor_Flicker_IN_1_net;
	wire [0:0] tmpIO_0__Motor_Flicker_IN_1_net;
	wire [0:0] tmpINTERRUPT_0__Motor_Flicker_IN_1_net;
	electrical [0:0] tmpSIOVREF__Motor_Flicker_IN_1_net;

	cy_psoc3_pins_v1_10
		#(.id("b8e3b4e2-5939-48f1-b525-c4c1f4a734da"),
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
		Motor_Flicker_IN_1
		 (.oe(tmpOE__Motor_Flicker_IN_1_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Motor_Flicker_IN_1_net[0:0]}),
		  .io({tmpIO_0__Motor_Flicker_IN_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_Flicker_IN_1_net),
		  .interrupt({tmpINTERRUPT_0__Motor_Flicker_IN_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_Flicker_IN_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Motor_Flicker_IN_2_net;
	wire [0:0] tmpFB_0__Motor_Flicker_IN_2_net;
	wire [0:0] tmpIO_0__Motor_Flicker_IN_2_net;
	wire [0:0] tmpINTERRUPT_0__Motor_Flicker_IN_2_net;
	electrical [0:0] tmpSIOVREF__Motor_Flicker_IN_2_net;

	cy_psoc3_pins_v1_10
		#(.id("51bf94ff-565d-44c7-8d9a-40dec7eb4cec"),
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
		Motor_Flicker_IN_2
		 (.oe(tmpOE__Motor_Flicker_IN_2_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Motor_Flicker_IN_2_net[0:0]}),
		  .io({tmpIO_0__Motor_Flicker_IN_2_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_Flicker_IN_2_net),
		  .interrupt({tmpINTERRUPT_0__Motor_Flicker_IN_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_Flicker_IN_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("e9db848d-19b0-4cbc-b019-67eed739ca6b"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_2
		 (.clock_out(Net_752));


    assign Net_754 = 1'h0;

	wire [0:0] tmpOE__Motor_Flicker_ENA_1_net;
	wire [0:0] tmpFB_0__Motor_Flicker_ENA_1_net;
	wire [0:0] tmpIO_0__Motor_Flicker_ENA_1_net;
	wire [0:0] tmpINTERRUPT_0__Motor_Flicker_ENA_1_net;
	electrical [0:0] tmpSIOVREF__Motor_Flicker_ENA_1_net;

	cy_psoc3_pins_v1_10
		#(.id("76bfbb52-624c-434a-972c-bc1985db0523"),
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
		Motor_Flicker_ENA_1
		 (.oe(tmpOE__Motor_Flicker_ENA_1_net),
		  .y({Net_755}),
		  .fb({tmpFB_0__Motor_Flicker_ENA_1_net[0:0]}),
		  .io({tmpIO_0__Motor_Flicker_ENA_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Motor_Flicker_ENA_1_net),
		  .interrupt({tmpINTERRUPT_0__Motor_Flicker_ENA_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Motor_Flicker_ENA_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    PWM_v3_30_15 PWM_Flicker (
        .capture(1'b0),
        .clock(Net_752),
        .cmp_sel(1'b0),
        .enable(1'b1),
        .interrupt(Net_782),
        .kill(1'b1),
        .ph1(Net_784),
        .ph2(Net_785),
        .pwm(Net_755),
        .pwm1(Net_786),
        .pwm2(Net_787),
        .reset(Net_754),
        .tc(Net_788),
        .trigger(1'b0));
    defparam PWM_Flicker.Resolution = 16;

    Debouncer_v1_0 Debouncer_1 (
        .clock(Net_566),
        .d(Net_813[1:0]),
        .either(Net_825[1:0]),
        .neg(Net_826[1:0]),
        .pos(Net_827[1:0]),
        .q(Net_883[1:0]));
    defparam Debouncer_1.EitherEdgeDetect = 0;
    defparam Debouncer_1.NegEdgeDetect = 0;
    defparam Debouncer_1.PosEdgeDetect = 0;
    defparam Debouncer_1.SignalWidth = 2;

	wire [0:0] tmpOE__Limit_2_net;
	wire [0:0] tmpIO_0__Limit_2_net;
	wire [0:0] tmpINTERRUPT_0__Limit_2_net;
	electrical [0:0] tmpSIOVREF__Limit_2_net;

	cy_psoc3_pins_v1_10
		#(.id("0e0426aa-6aa7-4692-8a82-bdfa7af3ea92"),
		  .drive_mode(3'b010),
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
		Limit_2
		 (.oe(tmpOE__Limit_2_net),
		  .y({1'b0}),
		  .fb({Net_813[1]}),
		  .io({tmpIO_0__Limit_2_net[0:0]}),
		  .siovref(tmpSIOVREF__Limit_2_net),
		  .interrupt({tmpINTERRUPT_0__Limit_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Limit_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Limit_1_net;
	wire [0:0] tmpIO_0__Limit_1_net;
	wire [0:0] tmpINTERRUPT_0__Limit_1_net;
	electrical [0:0] tmpSIOVREF__Limit_1_net;

	cy_psoc3_pins_v1_10
		#(.id("55864963-bc51-4728-b7b5-5a7a370e4517"),
		  .drive_mode(3'b010),
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
		Limit_1
		 (.oe(tmpOE__Limit_1_net),
		  .y({1'b0}),
		  .fb({Net_813[0]}),
		  .io({tmpIO_0__Limit_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Limit_1_net),
		  .interrupt({tmpINTERRUPT_0__Limit_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Limit_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_limit_2
		 (.int_signal(Net_883[1]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_limit_1
		 (.int_signal(Net_883[0]));




endmodule

