
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2?
+c:/Users/derth/projects/fpga/vivado-library2default:defaultZ19-1700h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/derth/projects/fpga/wassolldas/wsolated.srcs/utils_1/imports/synth_1/Top.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2i
UC:/Users/derth/projects/fpga/wassolldas/wsolated.srcs/utils_1/imports/synth_1/Top.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
r
Command: %s
53*	vivadotcl2A
-synth_design -top Top -part xc7a35ticsg324-1L2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-349h px? 
X
Loading part %s157*device2%
xc7a35ticsg324-1L2default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
60962default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1285.480 ; gain = 0.000
2default:defaulth px? 
?
Uactual for formal port '%s' is neither a static name nor a globally static expression5370*oasys2$
increment_enable2default:default2j
TC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/Top.vhd2default:default2
1222default:default8@Z8-9112h px? 
?
Uactual for formal port '%s' is neither a static name nor a globally static expression5370*oasys2
tx2default:default2j
TC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/Top.vhd2default:default2
1652default:default8@Z8-9112h px? 
?
synthesizing module '%s'638*oasys2
Top2default:default2j
TC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/Top.vhd2default:default2
522default:default8@Z8-638h px? 
Z
%s
*synth2B
.	Parameter RATIO bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
I2SClockGenerator2default:default2v
bC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/I2SClockGenerator.vhd2default:default2
342default:default2
clock2default:default2%
I2SClockGenerator2default:default2j
TC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/Top.vhd2default:default2
1082default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2%
I2SClockGenerator2default:default2x
bC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/I2SClockGenerator.vhd2default:default2
432default:default8@Z8-638h px? 
Z
%s
*synth2B
.	Parameter RATIO bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

AudioClock2default:default2?
?C:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.runs/synth_1/.Xil/Vivado-34400-DESKTOP-OUSEAHU/realtime/AudioClock_stub.vhdl2default:default2
52default:default2
inner2default:default2

AudioClock2default:default2x
bC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/I2SClockGenerator.vhd2default:default2
562default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

AudioClock2default:default2?
?C:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.runs/synth_1/.Xil/Vivado-34400-DESKTOP-OUSEAHU/realtime/AudioClock_stub.vhdl2default:default2
152default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2%
I2SClockGenerator2default:default2
02default:default2
12default:default2x
bC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/I2SClockGenerator.vhd2default:default2
432default:default8@Z8-256h px? 
b
%s
*synth2J
6	Parameter ROM_SIZE bound to: 100000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BURST_LENGTH bound to: 480 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	ROMReader2default:default2n
ZC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/ROMReader.vhd2default:default2
352default:default2
rom2default:default2
	ROMReader2default:default2j
TC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/Top.vhd2default:default2
1162default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	ROMReader2default:default2p
ZC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/ROMReader.vhd2default:default2
452default:default8@Z8-638h px? 
b
%s
*synth2J
6	Parameter ROM_SIZE bound to: 100000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BURST_LENGTH bound to: 480 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PCMROM2default:default2?
?C:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.runs/synth_1/.Xil/Vivado-34400-DESKTOP-OUSEAHU/realtime/PCMROM_stub.vhdl2default:default2
52default:default2
rom2default:default2
PCMROM2default:default2p
ZC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/ROMReader.vhd2default:default2
572default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
PCMROM2default:default2?
?C:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.runs/synth_1/.Xil/Vivado-34400-DESKTOP-OUSEAHU/realtime/PCMROM_stub.vhdl2default:default2
142default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	ROMReader2default:default2
02default:default2
12default:default2p
ZC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/ROMReader.vhd2default:default2
452default:default8@Z8-256h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter WINDOW_LENGTH bound to: 480 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter STANDARD_WINDOW_OFFSET bound to: 240 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
WSOLATransformer2default:default2u
aC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/WSOLATransformer.vhd2default:default2
362default:default2
transformer2default:default2$
WSOLATransformer2default:default2j
TC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/Top.vhd2default:default2
1252default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2$
WSOLATransformer2default:default2w
aC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/WSOLATransformer.vhd2default:default2
522default:default8@Z8-638h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter WINDOW_LENGTH bound to: 480 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter STANDARD_WINDOW_OFFSET bound to: 240 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
WSOLARAM2default:default2?
?C:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.runs/synth_1/.Xil/Vivado-34400-DESKTOP-OUSEAHU/realtime/WSOLARAM_stub.vhdl2default:default2
52default:default2
ram2default:default2
WSOLARAM2default:default2w
aC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/WSOLATransformer.vhd2default:default2
822default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
WSOLARAM2default:default2?
?C:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.runs/synth_1/.Xil/Vivado-34400-DESKTOP-OUSEAHU/realtime/WSOLARAM_stub.vhdl2default:default2
212default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
WSOLATransformer2default:default2
02default:default2
12default:default2w
aC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/WSOLATransformer.vhd2default:default2
522default:default8@Z8-256h px? 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 4 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter INIT_SYNC_FF bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
xpm_cdc_gray2default:default2N
:C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2832default:default2 
xpm_cdc_Data2default:default2 
xpm_cdc_gray2default:default2j
TC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/Top.vhd2default:default2
1372default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2 
xpm_cdc_gray2default:default2
 2default:default2P
:C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2832default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 4 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter INIT_SYNC_FF bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
xpm_cdc_gray2default:default2
 2default:default2
02default:default2
12default:default2P
:C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2832default:default8@Z8-6155h px? 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter SRC_INPUT_REG bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
xpm_cdc_single2default:default2N
:C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
1522default:default2%
xpm_cdc_Increment2default:default2"
xpm_cdc_single2default:default2j
TC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/Top.vhd2default:default2
1492default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2"
xpm_cdc_single2default:default2
 2default:default2P
:C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
1522default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter SRC_INPUT_REG bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
xpm_cdc_single2default:default2
 2default:default2
02default:default2
12default:default2P
:C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
1522default:default8@Z8-6155h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
I2STransmitter2default:default2s
_C:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/I2STransmitter.vhd2default:default2
342default:default2
transmitter2default:default2"
I2STransmitter2default:default2j
TC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/Top.vhd2default:default2
1592default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2"
I2STransmitter2default:default2u
_C:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/I2STransmitter.vhd2default:default2
452default:default8@Z8-638h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
I2STransmitter2default:default2
02default:default2
12default:default2u
_C:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/I2STransmitter.vhd2default:default2
452default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
Top2default:default2
02default:default2
12default:default2j
TC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/Top.vhd2default:default2
522default:default8@Z8-256h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
isOverwriting_reg2default:default2w
aC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/sources_1/new/WSOLATransformer.vhd2default:default2
1362default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2'
dest_out_bin_ff_reg2default:default2P
:C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
4172default:default8@Z8-6014h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:09 . Memory (MB): peak = 1285.480 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1285.480 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1285.480 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
1285.4802default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
nc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/PCMROM/PCMROM/PCMROM_in_context.xdc2default:default2
rom/rom	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
nc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/PCMROM/PCMROM/PCMROM_in_context.xdc2default:default2
rom/rom	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
zc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/AudioClock/AudioClock/AudioClock_in_context.xdc2default:default2!
clock/inner	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
zc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/AudioClock/AudioClock/AudioClock_in_context.xdc2default:default2!
clock/inner	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
tc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/WSOLARAM/WSOLARAM/WSOLARAM_in_context.xdc2default:default2%
transformer/ram	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
tc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/WSOLARAM/WSOLARAM/WSOLARAM_in_context.xdc2default:default2%
transformer/ram	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
jC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/constrs_1/imports/new/Arty-A7-35-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
jC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/constrs_1/imports/new/Arty-A7-35-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2~
jC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/constrs_1/imports/new/Arty-A7-35-Master.xdc2default:default2)
.Xil/Top_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2k
UC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2k
UC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2T
@C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2)
.Xil/Top_propImpl.xdc2default:defaultZ1-236h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2V
BC:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2)
.Xil/Top_propImpl.xdc2default:defaultZ1-236h px? 
l
2%s XPM XDC files have been applied to the design.
665*project2
22default:defaultZ1-1714h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1335.2112default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
1335.2112default:default2
0.0002default:defaultZ17-268h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2
rom/rom2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2#
transformer/ram2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:20 ; elapsed = 00:00:18 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Loading part: xc7a35ticsg324-1L
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:20 ; elapsed = 00:00:18 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:18 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2%
currReadState_reg2default:default2$
WSOLATransformer2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2&
currWriteState_reg2default:default2$
WSOLATransformer2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
currState_reg2default:default2"
I2STransmitter2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_             state_reset |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_state_wait_for_increment |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_         state_increment |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
currReadState_reg2default:default2

sequential2default:default2$
WSOLATransformer2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_             state_reset |                            10000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_        state_warming_up |                            00010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_       state_transfering |                            01000 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_      state_cooling_down |                            00100 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_state_wait_for_next_load |                            00001 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2&
currWriteState_reg2default:default2
one-hot2default:default2$
WSOLATransformer2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_             state_reset |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_         state_load_word |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_     state_transmit_word |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
currState_reg2default:default2

sequential2default:default2"
I2STransmitter2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:20 ; elapsed = 00:00:19 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit         XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 15    
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:22 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:31 ; elapsed = 00:00:29 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:30 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:32 ; elapsed = 00:00:30 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:37 ; elapsed = 00:00:35 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:37 ; elapsed = 00:00:35 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:37 ; elapsed = 00:00:35 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:37 ; elapsed = 00:00:35 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:37 ; elapsed = 00:00:35 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:37 ; elapsed = 00:00:35 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |AudioClock    |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#|2     |PCMROM        |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#|3     |WSOLARAM      |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|      |Cell            |Count |
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|1     |AudioClock_bbox |     1|
2default:defaulth px? 
M
%s*synth25
!|2     |PCMROM_bbox     |     1|
2default:defaulth px? 
M
%s*synth25
!|3     |WSOLARAM_bbox   |     1|
2default:defaulth px? 
M
%s*synth25
!|4     |BUFG            |     1|
2default:defaulth px? 
M
%s*synth25
!|5     |CARRY4          |    84|
2default:defaulth px? 
M
%s*synth25
!|6     |LUT1            |    29|
2default:defaulth px? 
M
%s*synth25
!|7     |LUT2            |   162|
2default:defaulth px? 
M
%s*synth25
!|8     |LUT3            |    33|
2default:defaulth px? 
M
%s*synth25
!|9     |LUT4            |    50|
2default:defaulth px? 
M
%s*synth25
!|10    |LUT5            |    15|
2default:defaulth px? 
M
%s*synth25
!|11    |LUT6            |    12|
2default:defaulth px? 
M
%s*synth25
!|12    |FDRE            |   285|
2default:defaulth px? 
M
%s*synth25
!|13    |FDSE            |    11|
2default:defaulth px? 
M
%s*synth25
!|14    |IBUF            |     1|
2default:defaulth px? 
M
%s*synth25
!|15    |OBUF            |     7|
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:37 ; elapsed = 00:00:35 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:33 . Memory (MB): peak = 1335.941 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:37 ; elapsed = 00:00:35 . Memory (MB): peak = 1335.941 ; gain = 50.461
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0152default:default2
1335.9412default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
842default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
g
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
12default:defaultZ31-140h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1335.9412default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
f
$Synth Design complete, checksum: %s
562*	vivadotcl2
c335b4e2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
602default:default2
72default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:432default:default2
00:00:412default:default2
1335.9412default:default2
50.4612default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2b
NC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.runs/synth_1/Top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file Top_utilization_synth.rpt -pb Top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Dec 17 19:47:44 20222default:defaultZ17-206h px? 


End Record