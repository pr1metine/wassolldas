// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Wed Dec 14 12:47:27 2022
// Host        : DESKTOP-OUSEAHU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ WSOLARAM_sim_netlist.v
// Design      : WSOLARAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "WSOLARAM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19472)
`pragma protect data_block
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
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
