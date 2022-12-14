// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Wed Dec 14 12:47:28 2022
// Host        : DESKTOP-OUSEAHU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/derth/projects/fpga/wassolldas/wsolated/wsolated.gen/sources_1/ip/WSOLARAM/WSOLARAM_sim_netlist.v
// Design      : WSOLARAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "WSOLARAM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1.2" *) 
(* NotValidForBitStream *)
module WSOLARAM
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.744882 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "WSOLARAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  WSOLARAM_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rwYdhNNJ53nPphbLvD77j21Oeonbq6Z0erAiqk1RpPXb0zp7pHBtqKJw2C5LzglScReglQK59vz1
e9nFqqqDUxPf09eNrABSjjyDdXG5nvsvptpVnGf3CRCuzW+BAOmx1NfRIwF2CnQO14BklTUJNi44
Dn7FcUkW0a4jUsV5mW0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ECFh14XLZtdbJi0fMKhe373qBJ/VQeNvJfLsF29/k8lNiDltxMI/hw4N8eayMNU19NYT80nndeu4
b4GE5EogbeMZIyu4Qcr4BB27Zuf9xbMlyuLyuRxoP6fL/eDsdEfc77rluuayTPUvFb07ZGq8myXt
w6+Re9sDG/xabZOZelcQN9yU3kzn9wk5mOm/6P0adRmwTBPuVEnpoppskA5nqDk0UpZ02ziITfp+
2J6kzsZjQCqgAbcj+BpiPGs0n5x+cwL1D93iVy0SNuh5lUafOyzNjAaOXVqPDjw96RZjdhGSYpOL
2dXKgqr3joOjpVMLGW3isCNSsZEe/4V7KKiZnA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VrO5fv2mXVBtwSRHdYHeDI+bGCTzz5uuC48jX9sVTvrCxt2koF8MsmjeeYrC7UZ6RRRZ3zzgXD0c
l3ghcUOMI6oWxyi48FT3M+Nu4RVBBmEQrDAOat8owqPVE3ozzqBYv1s5gfQ3L2bI3D7/yaS7LivV
Pb8qlaO7PuMFyP02eJw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IRu0p6C0L+AS2viaIAbi/TDCeVzss0yEzVqUS1b4tKdGmvxkd+S+qyPW9gG0i6LkZlDD1xSobE6V
0og/wz7lUuGVcQaKnHiHXsYUklzME+MjwbMlMT1SJWWHVTjhcm88ItccTThRIXT/P8pkgx2SUdsz
WX7EqTD3lVF18LFSMSY/s2nLMR3pe2vAsQFR69oC8uYHX+4hU00GEoHLNSLRnK1iwb/PkArDOdRu
/DM2GYBulBB39GwYqqaSmcCKQ1tIHUa6y2ffLsJqWIzY+NFu9ZsMn//HBZTtQODKuufJB5iagxpq
u85V8dfguTBDdfOcO/fDhG2A2EyY0Zu3S2GSiQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H/I+AHHeY8qJXTVA3X8DYTeCjAB35iG/LGdUhoM/Y4CDrM44fGEsFPP0ZbuSuZg/xZvDhkCBslxX
VAe/feUvtziL0kL+CIvCJtYJIWiHLEnNT2UXimYNR8yN84Z2/6444oZaAGvO0CEYnWpvgMYbs4zj
AmbC2Gd29yqEChWTsEsiEvEBXH0otAp98Z9Y+XKN+X6oterbhzzSz/QKCbYGjm4x+cSHutlTGVq3
nHieAszAMNPhqJVXof9EAQZoY3Iyo1U6gY39eKIZWd2h0Agl8YPwm1936n3md/c6nnujGUMhEKCC
UIPIjLDop06G88p+gRMlPBZ5ndgFFKyUWVF4EQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fKqSi9wP3ZeVSKI+0RVmajc0tn4Q+JUGHUpXla85NhP4hNOdB0SCI3C/2YXCEgx7UPg8+RMFUs/K
wLZA84vKtQ3BWlRw1VHLjsFgid1L/Jmd+QPyrJGyekykTAAfmkw66RQfETXPmtE7Ee31npye9L2y
jIYM74AVUotjRoALQcAohBD+IeG3+AL5FyYxMx9zP84rrM8vUAiHI9R8eswrRlAH/pY2VcptGUgs
3K/03V4nWUFWLAwt83HlJjveZY08KeQBe+Pg3OHiSseAMCfGy1tNGoLOGb3GzuAUSLSB8h5lUGyT
nhltowHy3IcGhmMr5vChsPYtJynOMvwtW1idCA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LebntE3a3PqT0OsperEkmRKEtGk6d9j65tJMG4b/ujTejJ8v5xwCUZKAozK6rvF1x6gd9OrhBfm5
0vrRMbFipICTE1egQTlyzGjR0uCigNkEcYO8OPnRAFiTs4eBQWp2CZgwXVgHNmZDIT61wcZ3LhYX
K8mBMUKdk3y3Paivg/quDoHRWSQzgz7kcJG0FKj+50/tQK9pt78w7u1tzbPEG9S7Ke44OQvDL+ry
RZme2qI3k1OOc0A9hx7K7KFcZvC+wyPLZ93d3p4eCNAVBDzUD2NTv1w+3J84r9V/PTco42jmHLpn
DGDWmNTcQaDkwbJx027mqL92V2d2fdmTAlKuhw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
XIqNihqUBm4hjS5HpDfYm96yUATy0DbzEdTupVjcXu4iR+GOI0dSij8tdgBfZfJZuy/hZ5J6Q/CD
krTskZw9LmV+BGgB7CGJpA4yYSdo0CM0UNZJejYEavzaJ9vcx/1RdTSb/veiWG/38Y60+tSASZYe
P7nSwTZkmSvpgxSolSZiYLqupbb7RM0NZ3S6Zrl6vNrlNsdLPgM35DZ2y8t2UlNjCjgjOvetmWWK
PmOw1XGOO2Ii9TrupHMZtTpAzZ3iQjm7ifEQM/FnVutWRl0WiID5nrLohEaaXH8X8BpfB6+fgBRQ
3QGkB5AcJNRqpzkkeqsR9xUkwGvzeh+EsQbfj0dVXsCafO/PKigtQaGBJp9FnnZo8Sc5iK2+goqv
QvWnVHUYv2/M8otXsBwG2pPoY3P2hpewr2+LUXnOgJb8riGXMex/ks2EUNrzWoF338IjYtrqaGil
xT/aMGc8e8OabiEmKQvnTXQjX8sOJ5D2jzZCz/DkP6h63EbCfU1RB7rB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DgfwbhRWuCEhZNNv15BvOLEIflIisRGXUogTw29yfIjSPqANY+I2PMwg/6EPqxvQl9OAnNn5DxBj
9KiIEucWffEXWkRTYwbBvcRvTnP7i/fuplUyCbXGJ7Almyt7XDZiWw3N3weoCDSzRBcBHwafiMfc
oJWE/fkRPV7KSvNFx8T63nLmTNppdUvaLIraUUBPv8hx6fwFhlEmKFCkOI0CIwR+jjtpOleUtykI
XAobxkLNq1gekwN3CScXV6MZJZ4sM4A7NTl6j9UoY9M7iRQO6yhfblmxe09zssM+bLJ6Hevo/TRe
ytQD4Q5AUsylOvE/pzx0mjwQJPSBoJyG8BA/UQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
22//zdssm7vE375GAuIHPBF5XitUi9NzsuPTXi03dsB69BE7M+3lk9JAf2l214rs5vQPm1Nj/SZk
s0EXjj0WgJZGDy8nWaANfePjmfAGqoPy1+nuzth458Qrf7qxugo2qeycRlgQbwsyB1T2q5ycN5x0
+gcrhGUo+QOOeCnVCdEgP0aRRQ0BZQ7BbIxa6BBdPjrDMVPWKDKrO6gngKto6sGpXUGzToYE7B54
sQfgxna22AiWabNzU4KDfbwOp+XIWs8GtSIgOCUDkaVb5KSTgqLdMBBE8mU7ZjGicqIHzaeF+IDv
IYG6/OUxAfNKjRtleGKs5a+ZIFNvZnNV67iKoQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eDCV5f1nkAIvKCut3rKuLrHfjeMdq0N2T6AKwp/ZIO6/qZciWp4zC6hOMmbF6VSVGmweIyaztoRx
FaP4RONylsW7ONgRkEu23TV7mNhjsgpRDV8+J+Gn/z4AQ/DKqscqdF26dVGFJnZgN7HD2XoDXh9w
HSwGGSxfGjWgssnYSB7w+yzGDfrMk5lRotH0xkFPsF3a2rA1NeR6MQAAy9PcAm79+DmRZYbPbijn
dYubUXLY/sJMo/vlAS9cJ3u8LdOBKJYVfrI2UrvtfF/FcgIEnBLZ+wvyqEw0s6WkzgH7NoegNHEE
d010UvGsllyL71w/HKcebiiwlqjq9o1NwfKnwA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19408)
`pragma protect data_block
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
61D867Q6kPmETApwmquMVNOx/wKlw8ZU90Z3jA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
