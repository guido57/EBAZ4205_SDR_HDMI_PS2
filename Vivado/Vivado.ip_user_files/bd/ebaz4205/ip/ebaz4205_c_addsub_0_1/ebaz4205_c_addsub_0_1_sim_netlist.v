// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Feb 23 10:50:02 2023
// Host        : guido-UM690 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top ebaz4205_c_addsub_0_1 -prefix
//               ebaz4205_c_addsub_0_1_ ebaz4205_c_addsub_0_1_sim_netlist.v
// Design      : ebaz4205_c_addsub_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_c_addsub_0_1,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ebaz4205_c_addsub_0_1
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 6.4e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input CLK;
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KdkdvVsuosc8qR9X5PxQ/ghTeTrEz4qKVuenhDR9wRSL/BO/mhSwQtiFj74UO0sGv0zvjAntaq/3
l2/v8gOiVKmM666gbk/2UCISA4OFA3FDR9jYmiXdNXb2qHeS1ywQz5n/sTR5iu4KFEfwrl3IXtQw
aEiGegL+CQMaovJsto4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pZCj3qT3VD1SCS5RiZExsqqu16KpMtHXilQL9p5/eBl7qrfQjT1VhFtVbYUusepbChjsCCmCn7hr
72SuHmOmDWG78UARN7MLdO/+sePuyS06ak4nAw5xwjT0g+9970uMWYKvTeeYqoz2i+k+zX60Cuvu
iwBfxWM22DqukHlYzbEFWhNyXIkgJe71p67vGdXBmqu4/2wmlwGApqBxlwR+alwZ9UGHlxNQS4N5
z1wHu3Cp8LwGRjlaXjElcY8RDpvyz5l59ey8ar5HXR9Zqf6e1unE2NdhzHhEGRerRFXoKZppk1HB
6kIEY4EHAWz+HvPcqoP9eoYKDazoAGkJRVP6YA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gLgm7VvY3cNcNvdXvikCQd2nRniE4ae4hePOcAUlPDMoHDzQAD7Ngo12MGFns9JNPcCaUXfAmxL2
JNGojjrDRUWrv8FPV6FOEbDHs96fef8+gqLF4OqLck4kWpKhnJwaJjjzQirvXEzZxP+GsBKnkSp8
ceVlZJwP0F6XRv+RpQA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GeZP242oKQSNuofqDs4oIIXZEufPhRVrlFFeRSLY4VCxhMEMwfPrNXe33xO0zIEBoPW2X9mvUoTY
izdWQEtWImFzjzPCjkSLhEdIMmUBH02Y+Tw3eW5x23T0cK96pmoV2MH8kl99I27MN6stVd977fuB
Mjao5MnSXIGZ/uXGtgfUO9Zjs4/2wGmsI2/lANN2WOL9Sz4xeA8k40c2dNYgxgHoCwx8Ya/RYIZS
Cpuvzq4ZyFSNT/kMXnUmqj75/flpXT3mmyW+frexux3j9PxpKHmxAE9crvDx85rMamGiA4ftl+ac
H0FtL2cBqdlP60x+FjqleWCJoN6AYdxA0YZaeg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
URmEGftuxvv0+tViRUdsFNnPXucZlVDfUQpjjXkpOA38QUzsIL9j1pGGp9doC4jcg/9MD149BTSw
vAG8684a3k+Tx/8sFGl/viK1q8ty9nktEABSahv8Etm5ZJVAzQJT7EaOzrYqyywSwabogvGUmN/7
DE3eOn6+sMCiMl6BLUhYyK39ntTWNFYVPiheclbBb36V1vzMOQl0mvPuS4hDXqba/+qBZXhqeYWK
ceNfwci6SsRRef6hLF/1S+20r2uBxJeYJjyfWGGFEGfxlAOz1MiYUUR/bEHWnbjwIcJTBHQNRdq4
4Ryb+iPuKcsXU/8ApD14i6ScW+VBPWSqnH9w+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NtQgA3rUKfJt+21sTot44yr4gmte57FoFl8Q/327tsRJeEyNAiwWZaZN2mbo2NFcvyN2GhDw6avJ
NsF1Oxs36P8shoqOOiloWWrdTcyAdMhdk+UjeZgKcNSqd4Js87w/5LVQTwjB2mcBDfe1jrivv+IW
ZRBC8NvlW5z/1wF7+vzXRMziLQYeOkLB0OkpIY+eT5cZXDKuZ+4l0FMPjd+El96JGAEHG7Q0qS3F
OEApYEp8+nSZnragoytq4pkhVJEC22ye0hBhoBClJpszCcg0u+Ugf+mYZsj8BC2uqSY6Hh/gpjjw
enQ7aEYBaUR7GCwQN7fZmNhZYtBkyvNqydRQcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CpIFM8Y8dBmpjtOVnOKcfppEFV+c1cRgsQtewNUe+5apiLDoRCdMyTqoCay7nz+Xagc0OvfZDg/Y
jSTsDjKVcEIyxOfix7iwjKW8Rz+a5wBIatI8wfCo7uLtuucz9otOWWI7BFQ2gn4VdQ73HJJlZMMY
OyEOd33tGjNSjxz3W07knDr1FwTE3BOfhq+Qj2ErnuV1dQbrTb3MiQMTnHaTCwtz6ip0pD6b5G4K
kBRUYe+UNXCMvSfNIN9MPSmolO4MjNwM5gnZZqLcR1hGuzH/Yeb/jPnhsZ7jFvlTT3nsM9JzMRAE
QwlzVuulHKQDS2I96arFosYPYMsalmn6CQW0gg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qinIxHFISC9r9LS7OKOuYVGM5EBkuuQNV1nDRui+QVNLn2QFCrWPeEClQIlNViKOt8MX9urHvu4e
l2L+eZKw6+St9cW9yUsYu36yoB4LqwG+vKvfR9CW82LGPyMAxdgk/p3n+F0Xp9Y2HaERwWDL99tW
V7cDvLLhyIwz7w4rI0BWWV+KMjXP2F5MNgykzZn7tzV8oY6MxOykFqRdI8DLAdlYGAs90wjJ3x84
S3fHciSox97FYpDi64v31Vb4RmRrwueXcvCc3w8gzjuwg7qraWLMYyPB+mERB2v1htX80PsWWVHE
QXkWiHWYvvrXEykUS04MmLNHpV8ZgBXO/NBEGn7mrITDEswk3u1Yviqy7CW2wLPQBoo5xW+uiu2e
8YZV/E+bAt+P/EH5RsC9alBgtuVKU1s9DaiEH8eUPEgJQ/TXwQW01pg8ECTYgiBS+IQSbld23aq3
goVo0ZMzRu/SA00Jmwt7upvsMkh9Q+2732ahu1FmlSNmyNGB1+bYf782

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T1jqx5hmzZZMhPApzUC1oZLMAkHma8Ki4b2CvLNqxSn+MNWoTPomvQ775DMBEDai/gahYALsohdX
0f/e6LuPqt4zYtyAzmH+nRgOG/tilS1J674KsaHxudAfo4sM3awB/C4Q3VdYsO9FgvPQylnYKSGE
gJ46W+1Y789VQqPbt4dpnprhix6sLlwfww7We6cq2wu4PilFzovejouUBZqNMZHYi4suKcMcenp3
C7QRKloo8IF9yKrhGPcRJLQt2nus3bI0Q3ICxRk13Nrfhh/z4cdm0OGXz42q44snFEVy1lLxPOs7
W9tSe5ag3923oCT4NGGgK/gMTx5qXxFhV2MJUw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PEEeUQIpbd+MOtyaNNq1DpJQiYzJFy0mImOHTbJyZSH7hTO+vi/iYI6DFghBtu1jU9HV3EQLJg/F
JxrCPYHGf/Jsg+aprvbE/iP4j+jrc6RXqeY4wIogKgo+F+T5znpcW/8/3U61cbWlqYq4qfiAl3Dj
nkwPWZYtF+AnstJPemsWEY3ykiwzSDmOZf78h49IU1l1MJj1Glmo/78DVVNOcK1FaWq248Qddggu
/vPWHZOMP+MjmLtk1h+wiCaSYdV5SEwrVBI+daGZyTRZqx1RgAkXixZtzLxZtoSBpeoeZA2xHTLV
r8X0L17I2ci3aOekux7vC0z6FgkoKTsgsFqKWg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1u+JzTtOE8fjDHeVIWFfqfQzGubxMTmRgW7fq8Sz2d30I71pxgXrK1QntzLUoAeTDpVIpuY1zS/P
RIUmf0Ag6j/2ovZe2RNhQisgUPsD2iXhce2s+mIOgnHqTx8pTCIEng9o6cy++hb6ZIbdFx4VYe8P
zOFOo3iQtfRgUc/ZW3EatymTcN+G+zYYZET7diMfotN1IgXxKcCmTqB2T1iOR9HbulqUJxkNQyCP
C3oUB1axdDBOEEZGUcQO0AqPBsPeZxz6huidSk1POtYhFawrad3BJa8uc+LJ40Vu6U6EYZ5GJ/bl
I12WNUog+exrjppQ1VOyam9TJaCHt7b3rmHSZA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14880)
`pragma protect data_block
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
hRPS
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
