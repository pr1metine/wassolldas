// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Wed Dec 14 12:47:28 2022
// Host        : DESKTOP-OUSEAHU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/WSOLARAM/WSOLARAM_stub.v
// Design      : WSOLARAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1.2" *)
module WSOLARAM(clka, wea, addra, dina, douta, clkb, web, addrb, dinb, 
  doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[9:0],dina[15:0],douta[15:0],clkb,web[0:0],addrb[9:0],dinb[15:0],doutb[15:0]" */;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input [0:0]web;
  input [9:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
endmodule
