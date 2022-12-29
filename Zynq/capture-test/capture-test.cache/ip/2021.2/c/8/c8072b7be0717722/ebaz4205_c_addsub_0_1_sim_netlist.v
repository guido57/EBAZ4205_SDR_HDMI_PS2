// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Dec 26 20:19:23 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ebaz4205_c_addsub_0_1_sim_netlist.v
// Design      : ebaz4205_c_addsub_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_c_addsub_0_1,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 64000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 16}" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iNiDb0ekPhRUbs/MzEotkv91aS3Hn7NpPOvNwhBA71ib54e/iuFgxDWsHQhG//uPFNOQcsw48NJ/
Jex9v3jJpOAvrsbpE1xtyr06RPHTtBrhLn5oy/JPLRnDikCjDL7pl2nz8/4NFppZ4IOdMQSsgZ6s
7cLy3ssFtw8YHgZpBBI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xMdWfJ9yC+dW7Z4tqvPOuJC1+I94TxwMeGVXcRxTpVQudL778iGxfViPG7+xFYupI1L28MxOHog5
8UcMSrFy49thnK0phUnIHj0aC6gyX5BTyX9O2yqRn+Tb0ViZwaw8RNb32PlwlnlwQ/6N6ZU9Y9aG
YFAdhmgN+2Xk4zUSzRuS4Fkh8aeMb+9XdKOXvagJC/n45GdxH8sqkEUbk/QiV8gGerqj5/G5/GwS
QvuOB3Sq1YSyUp1D7w4IQ4bJiFJESFOi5U2UE7u1h+1gzpJDnRrR1s84sELZRdUDynvMahqLleXZ
IWFY2+0qfSJmtHyzvV5D7u27zKevnVVSjKft+g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BXcxoAPS0tOe7iNiaiBkfnEQ6RK9h9ZdYl0ZQZ9gD+ivSxvHRqUQaNUJXADK+j/yHS3kFc9O9bHv
9apdYXON7IMZ9RLTfkh4tIbx4BGrm/PD1bNIEZES7Ggj/xNmgG+KoydQMFTsML7SQ21p7edBUfV2
az9eYYO2SbJM4Vnex/4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PWOAiRdoP7UJP31mBYgem1wyfxKBGPCYYuy7qK1OPyroUHrsrRm0rZWFQbakJzsfCiqiBbes1Pdp
FoS53FX/0oO/nGzrbleR9IKNRGwjSKaUMfAwPhBe3I31YsUwdVUMEm0draA/0Bu0frhCP/0jFhKQ
HicTG99WiRHsLh+F6Xz6QXtxjRhNhWEmp7tK+Z+a7g+N8LWRI2JpIQ272d9VQ61BaLlYfCqHUkHw
ThTl6gfzihr1Ngg2QM5mtIXn8OB6+fq3s9W2CR6TBAvGrx17Z8ej+u3fxiXxC+hBvQjWJ6ri0Top
bA0fhxTpucHxWUd+X+DhmNLTh/f+O3HV2Qpcsw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
botoKE8YfJkzZ/fegvRBoauY+UFblsqeTMPajI8WL2DBCRzCZJ9Qk/AYzzg+PUnrWUsoMrTJBGyn
gi8WNpzpMX8vvcpKlw8goBzVjdTNmI1s9S0E+VsI1yVv6BIJNCpUF+5EMLdX8/DiJlnuRanoMrvC
KGgBmcKqG7oRhK8xe5pzt7tMew5ocXeCa73sQSLmXuEgUF3UVgaIEpZcsxwiXmE2Av9Y6V+8CSvq
+Kfe/xfivs0EagmHnRhzTM0RvsI3OWHwM7UoosrQd3SFdhg0MFJga+3RHNAK/K7GDL4b3RHD5bQj
9a1gFdowA72kPKeFSBiYlgX6Vk9Uwm2F+V/kSg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lihXgVbpHCLec3zc0ec/06bvVG8syHdsLieKcT9rurQvsbFuEgs53hupuKiQVpUO75Rlflsu9Uv7
M1kUEvj0hLqSwp51FfBdIFyDn69Y/AR9B3nk5K135817Ii5ef0MMxeTSV36GglTaxPcxRJbXKlei
Nh0/cGeo0C8fqlrdb7l2aLKeeo9GaYgnzabE/VAGK3Kvr/UJbmK2eRfLlPygyEE2Hz4VYkVXisIZ
MLfZuqs0KBE7OdqwtqhW0cv/zMjRCl+Ton6KCq1NDbf5iAJGaVns2C8FlvsDnvW98hupBmOnntWx
+cSxLW5CnVkSSDuLYwSmB/VDFDZoKbAAPHcKWg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bslnbMuzuE/h0dU1KUmyBtZ9YobdFoUvmIJOrSIMm1QHKHywokHfs/tstG3kbnleE5Ro3QbFvkee
MAslPB9/9GMe/K/9oy/NUwk7CdOKMDnWe6bjAzHdnN6rqGH8LyHfwibusv1+Ggl/dI+eT7fXvxNf
GalIV+qeXkw58Q8O8q/FoJMuwbuwcSGXWGWU+qSZ44Vj4aHHqMw6AvrJ3nWXG1Aa99MNUc7H9KAC
fL/xXWAYYUs0Aqqfj7hdBSkcTp8RLAb0NH2e/+ve6WJ5Y8lWNAyNlqNz/PW/FvxJwZvYCN5ALqAn
XPV0+dZ+1F6SjA2qB8uYqVSHe2sF4AgOSUb0Yg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
KUnwEk0xEpdk2Q3CoTxn9CRe6h/F7eWo/AjrPR0pRlPkFpPN084BeB9Y0fdrjgkq+3HXC4zvjgDR
HGtLYulQ/DDCcVou7MBx+WsobjDsPw4aytnHFJhdPl1/gu90mG3irpFwUndHqHd5KOIno4hRyyVj
ntNaLqfhtx97ZFT7dzeS4sr9hR5umMXx8eagFMAL0SKuooqN5ma5Kn5yRTlFXeVZaOVeeodaDaTe
u+OLoCcbLeOyuraazX0w05ROt1RWuQhiAHJr5D+PdtFH6PTheFQIQp72F4YJVS/Xw+0kGSBAkqw0
FleW7Pxa+YHT/FS6kuvwJ5uAhLIHGM1453HF6YOB/1TCDOa2ntNezXMJIFtsfvAAHyaSJ2XMNrD3
feFFBLqTImohKBoaNkp7O7foRfLi5R/oAlMMzRg83P/99YLyjfIm3xkD3eia2CAK/2qk4ZtC2JQ3
4aJcd5YcoSYGjVfXix9p+pfKHaa/jbY+Vh5Z3dVT8Romtkzvu5jg+UbJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P0U2cnGBY9QMyeqr0dOgxj1qNLQ9oatsneQM/zp8ImZGMa9l89mK7lP6/iTxsbrSbC19vRKLXHpw
FTJYNfqvgRZhS7DxQb5OwgYRsbNrhsqUkrU6fD4YcLCVJvUsq4FGf2GMp0SBEmXMlu0H57IA3Ycx
grGxw4dQSY2pM7fKezkaKsACbitFQrg/Q6XzNrg49L/dKrBnQzoDIcgA4wyQrdpLLWdScsi34/UM
96uXBX5B4OAKjIMOlIKwRQov3zD06mx28NQD4VizPa1T5UyqFMRb5eW6zlTHzEI6+x7KVH1IEyUn
4tcbk3Sz3i/RmX3lguEbJEV6kLotF8iEhuyTHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fEuPrddW8MTBfsRmUiquVi7t+S3qrYXmRHjf8iz72JQw0PaUyT+4SD49mY1mx9jnDHvz4zeQ38t1
ni+/4Nl3OAzNa9hG91ADpy38XxQjnQCbTcVC6hjzo4LWuHeq2olDdocLU4LKNEFURf/QV1lpejSw
vdRunN/3CbfVJz73iN7FSV89gMUkz3E8HfeNq7rzxZEelwntPmaFezzyRFl8klMc31HMUtfslFfJ
hqBBHU6w1sq0PxCZBvtVFo0KMKFlfNPrOxLJoAzH7KcKI9J0oyry7DGn41KaUhunRzOolj2lxwAe
Jw09apqWRXIvprrtfj0vG+BUGXKguxzmelGZwQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WByfQasE3u9djaroSII+uYZ2DU7GxZGke9c9OkaxGE/0ypEJs0NEy7sNBxgqCzrwviQ85xlW1kuJ
AyN4ZHz9T2eA3hz4F/zBJywQ6peCJ3wpxh3Z08hpcJlW05lOwzbDTNd3lxfJhVnQLhLgyAkKYKSp
p9+Fd607hp2zVdThSQ2QmLwKmZTrxvdCSrJUFg8lSVZFh6rfI9a1Jt58rkC0wQWrkhp7X6+2CWGz
t1MUcxMuoigSNWGpLYbRCpWWEEmHUaGPFqEMZXIRnMB5LClvuV3D3fFLKcjZTTJI7vXSMRzOhGUT
jsq/3e++bJWXY2wTgS2b9JBJpx/hJtxP0zMLow==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15104)
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
