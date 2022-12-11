set_property SRC_FILE_INFO {cfile:c:/Users/derth/projects/fpga/wsolated/wsolated/wsolated.gen/sources_1/ip/AudioClock/AudioClock.xdc rfile:../wsolated.gen/sources_1/ip/AudioClock/AudioClock.xdc id:1 order:EARLY scoped_inst:clock/inner/inst} [current_design]
current_instance clock/inner/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
