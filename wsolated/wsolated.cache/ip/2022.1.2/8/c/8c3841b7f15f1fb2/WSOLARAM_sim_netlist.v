// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Wed Dec 14 12:36:48 2022
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
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
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
  wire ena;
  wire enb;
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
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
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
        .ena(ena),
        .enb(enb),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20032)
`pragma protect data_block
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
mb+UfVMPU8o6FcK7ZMoKxGLyMIfFtz4DNw==
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
