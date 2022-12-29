// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Dec 26 20:19:24 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/EBAZ4205_SDR/Zynq/capture-test/capture-test.gen/sources_1/bd/ebaz4205/ip/ebaz4205_c_addsub_0_1/ebaz4205_c_addsub_0_1_sim_netlist.v
// Design      : ebaz4205_c_addsub_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_c_addsub_0_1,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module ebaz4205_c_addsub_0_1
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
  ebaz4205_c_addsub_0_1_c_addsub_v12_0_14 U0
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
i8oEN70QUGl6nKLK8pLxc9ay1NQyi0HtKDWJzo05I1OXpK+DXvM2jfb+ugSdX8MC784/2oS21TYh
Xkz8oRH4C7XEC4dOs1K+BJe0hpjyz2IyjkQ+cCqJQKqO/DzfupOdTaSK1PwxlgKu6vZYPCOXlhly
xVBjTpADUNBDx4Dw9B1e8nSj4kigXRtnNOBR5+hdRpklVsj+nxC6dRTrmRkD9PxpOhcp4VCSvz9q
tWGOsYfZcGomu+hZLEShgbZ7SG7JnMr8xRujvD8IdSReDzAyhcLIieH7RCSSW9bb63LUlcf8SF2V
IKYMF4fOlruNeNSaMiaHgoE4GbMpFKSWgnAX3w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BEo6swvwagig8Xk0PbuERD6s5iDsRnyexhv8E3AnCmw4lC8LAupeTCE2gHZGo1K6TZ3HwzepcEw1
apLn3o9zPsw2vH5LG049k/yC7WOwi3rzpq38Yd70j9J4Wq0oc1BvSU5ua1St6w1Cb/gAcsUHdYi8
i7zAE8X9f2ixZB9R+qQHZlDldwIMJUZppKjI8THu0epKN+wEQaSKAGbSr+jVLq6lBy0KusxKlinV
IOXk+b0Am6OIa+7+D4bLFxzU0vwiYiEfuKo4gBisFGxc0KXxwHbcYUt+q9VOoEW5z2TN4v5Cw8hl
PubGSWwLZwwkQ3jRlepFh62Y1ZpJrEW0jDS0Aw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15184)
`pragma protect data_block
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
FyGg8O67nfOiQPZPtzJ25kKrzYu7ag==
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
