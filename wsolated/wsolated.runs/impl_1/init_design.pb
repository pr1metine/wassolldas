
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
q
Command: %s
53*	vivadotcl2@
,link_design -top Top -part xc7a35ticsg324-1L2default:defaultZ4-113h px? 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px? 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px? 
X
Loading part %s157*device2%
xc7a35ticsg324-1L2default:defaultZ21-403h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2x
dc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/AudioClock/AudioClock.dcp2default:default2
clock/inner2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2p
\c:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/PCMROM/PCMROM.dcp2default:default2
rom/rom2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2t
`c:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/WSOLARAM/WSOLARAM.dcp2default:default2#
transformer/ram2default:defaultZ1-454h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0282default:default2
1276.1912default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1622default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
z
Netlist was created with %s %s291*project2
Vivado2default:default2
2022.1.22default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt21
clock/inner/inst/clkin1_ibufg2default:default2

CLK_100MHZ2default:defaultZ31-35h px? 
?
?Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2)
clock/inner/clk_in12default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
jc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/AudioClock/AudioClock_board.xdc2default:default2&
clock/inner/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
jc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/AudioClock/AudioClock_board.xdc2default:default2&
clock/inner/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2z
dc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/AudioClock/AudioClock.xdc2default:default2&
clock/inner/inst	2default:default8Z20-848h px? 
?
%Done setting XDC timing constraints.
35*timing2z
dc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/AudioClock/AudioClock.xdc2default:default2
572default:default8@Z38-35h px? 
?
Deriving generated clocks
2*timing2z
dc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/AudioClock/AudioClock.xdc2default:default2
572default:default8@Z38-2h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:102default:default2
00:00:092default:default2
1464.7972default:default2
188.6052default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2z
dc:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/AudioClock/AudioClock.xdc2default:default2&
clock/inner/inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
jC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/constrs_1/imports/new/Arty-A7-35-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
jC:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.srcs/constrs_1/imports/new/Arty-A7-35-Master.xdc2default:default8Z20-178h px? 
l
2%s XPM XDC files have been applied to the design.
665*project2
22default:defaultZ1-1714h px? 
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
00:00:00.0022default:default2
1464.7972default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
162default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:172default:default2
00:00:162default:default2
1464.7972default:default2
188.6052default:defaultZ17-268h px? 


End Record