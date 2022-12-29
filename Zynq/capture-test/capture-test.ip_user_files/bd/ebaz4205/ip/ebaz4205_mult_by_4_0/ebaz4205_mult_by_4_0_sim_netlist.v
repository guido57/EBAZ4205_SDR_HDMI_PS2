// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Dec 27 13:21:11 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/EBAZ4205_SDR/Zynq/capture-test/capture-test.gen/sources_1/bd/ebaz4205/ip/ebaz4205_mult_by_4_0/ebaz4205_mult_by_4_0_sim_netlist.v
// Design      : ebaz4205_mult_by_4_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_mult_by_4_0,mult_gen_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_17,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module ebaz4205_mult_by_4_0
   (A,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 16}" *) output [15:0]P;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:2]\^P ;
  wire [1:0]NLW_U0_P_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  assign P[15:2] = \^P [15:2];
  assign P[1] = \<const0> ;
  assign P[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "100" *) 
  (* C_B_WIDTH = "3" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ebaz4205_mult_by_4_0_mult_gen_v12_0_17 U0
       (.A({1'b0,1'b0,A[13:0]}),
        .B({1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(1'b1),
        .P({\^P ,NLW_U0_P_UNCONNECTED[1:0]}),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DKwuQ0aO1o4xPWv3S7X2cQqcGZzRcHdILcDz5vFiiL+gKhHJ8EmLqT+obUmKFllosTfWWPfw6o3W
EKYijlr22e4tsyftrP5Ih1htSs5AUS9J+ITMIu7ifuRAa3P6969W8N26ZMayyL4kkcKVGKN2+V1C
EWOo+ySD86Dq4uTey7s=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aqM4G1eN04rHMaC8dEp3T/UB2ShUS+ZTZwphdITgIxVjSglVesOcBWUX4H0PsKXFPcrMSYKBM00q
St3XVkf4drCO5UvaKpQy7cUv5ibJB8r34nEZhWLbTky0zBrOBFRfq7Uwig59sqovSN1xahMIAENz
wUbvWdnMBJJkCLY1VloiJSJn0jGCKdRX2ygt8/zTJSEcHLIVqJY7ZkONI9AO4k220pXbdMC3CV5p
FZfxKmE7Vz5B7Po3n50llghcIFjWmsWPyKuUN0TII6bE/YWZtaJSc1DDuIwZ7dUkMs3znU5ZWmfX
vfA5KpFoFhQAitqrvx+XocD+ncnK5umzxfaA9Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Ype2ywNiYBXzN1iZQECBgP2i6SrYunJy26pUNb1ybpjvE9rrB8zVifRkVKzsA7TxlKrkdIbz5gf5
UoZnyozLVF40I3gSh7+ELuZZdRvRsRbEKm7E+BYUxgfCNX+6eGBskiPW7T+/a9P4HaYmvFvNrxKE
JkkXUp2ZEtgqnToxSoA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OfiaJt80KOLyjWTQXazqAPYmtf9Lhrm9yq6orR9DcIoVyic4vuIqanWgU9z9axkww4ZXeOe/rGx4
MWfhvnU/S1x0bMtHhdBEL9f0saR0/Bo9XvXu6PVfHA0qzsjOZpLSyICwVtwAMC/kDTYxHC4JXWc+
9U51kkq5kLykUj1RHUQD9C0cWNvboTZVdFT8YRi8BainccoghSTgmsQwiEfjRyCGxVxiOCJBP66J
op5bdGwwxCLVo0SSHbxtIJ+texL7T3V/AuNqWFX11SpSaKgPTuhIKuCdt7fcD558s8Kvhv2XaqWK
HXEIk0gB/0biGjMdmu77OvtqpVuoaUBA3RECtg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GAZu0sZ3H6bB1x7QA9PnZrXP5ytYTLR6AyMXzjtnNPeIuZwuMSXsJKfa8boTcLWX4PTOiRousiX+
MkSA8SyC1LklSsGtdw2dT5nkWhNTLUC2hkda3nTdLKeUdQB0uFZet1YP34ETkJvEu84qk+8ZhCf1
OFoZJE9wC6mXj9i7bWVYaDoC7dZ1vGWaA3ispjcy8cRn6rHqnemOrr3XqjhqqXSocecO6G6cPeDn
c2X7HbK5mxvNquvWm7h1rtbXLCiouuXY1dpBRkpBfwxtEbuyZCebDK1v68VlKa2IHjFrxfXUdy/m
bh2vF1gXJdYYz+bzFYNivhlihyhlNknv6gNL1Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TBjqZD8oi2AcKjw6iu/gXbnfB0Dbb/mLSKiruFcTjny2EE6BVUMqqkqLon3+m1WDjCEYJG8TkTBT
0uhAWnMkiynyLKt/cYDgdpRDD1iTT1Kyo1afxYrb+0xopdGNdTjZbY2WLwxQ2f1rJgdm10w4F7mf
bsKl7LuczR5UT54nAJVsXLqgc6Gg5LTU5XIsF2X63nSpNnfGv9vwxJcr/ZOO8erM05SY5xKqDI6k
Nifa3mIOziue42T9ydV5f5FzZDuoIxwC5u6XCQG5phskysXna0YHtCvTrNGaGCIRrBbXt3Zw6jYi
o3TgMMbFQzglMlfA+i+o8L3vYteDQhvvVpDjDQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PFhF3YUeMn8Z6JD0iZT2JSKLHEQ6pneGVVZDtBqANmoc80MpV5jfAs1PcO6Es+Uzo4SvwX4DuQMp
55yYLsgETICw9nBFknffC++KC5xUSO4srJpckAilF0doP4Yt+sUvqaUGGoM3X2//b5PK7kEW3sF0
CX3G98OGHzG1TINaGqHo+QoYKxdGBOelZKxsa5Vmc2Wdui7ywLa1ESp5CAh9zU6OLG5qS+9FoivM
t1wjLZgLoblCeUjFR9Zo9AsAsZf4pnPMVWhuAHVfwABicVJ/zeE8Sr/vG3iLEinLmePaZ4cRc+7c
JXbxLkJNfwTCk2q1HHnv43ImGo41GtSC8gbtRg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
F3MJyXRNsShA4O1pkfdP1+3LFymNSmMgUmD41fPmFw2FTmlNplDfy76rxe+V9euf+V0Rf204q94P
zSvQuREQI5J98HA7i0d9BFOsktiReC+6iuu6GGLpV3ibUAbcJLevD3GqNPlgMkzZbz5xehOcht6X
G26h1C+cqZ7dgydCx57tUlE+KgvHDC4+7arPkyn2/+G/t025wy4ilGgD3NcSJjnxpX6xxtW4VGxl
g+kX08/gPxUbUsZhFZ7xYz588YBwQPPNDuDwwQapBHqs8C11vFOSIJ8NovvyeceFe6ZGb5herR5/
hh5KlaW/r+XYjkzP9Rv8uNgxFp9gw5KweP/DUn4bXmZM3TzsIZpbiWcmi2GjtGD5Ufm+cpu+3t5J
kgI8ioWPUCy3GM7vVNDmqcEQifR+ujkl+pDQyQwMI0/sPx86ayNthszNF/UmL3pnuUKu0q+FiuHe
Gcp5kq2qC0nPy2PHexipzJ/sAUZT77515/TrSq8vJjPbpV8EvqAyE/tl

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GZhGCeBM6/VimBKe4YMng3rXDM/FrhYvQy96160w9zP+pTr46M3ISuLle+Zvqx1gB3Knhrgr4MsG
NP0nMs5NJxBYYEksBLNU8Wt+DIdyy32F3aN8+Dm/zppNw/UPGR7sNhcxTBEhDMOzdxLEXpVdjLe7
pQeo1ZEPTqfkqVNkzs9I2LcLxcJV0n9cBDj7dH8/Ny2q/99ExQn0lcTMRmXh4omAnaDRWL6nLoWw
ukL4BGdSYFRfqvyxm+GpqMefW39OJyAftww3pV2qR9kZk5r7p1uWWdO4dl4Cli3AjEJAfuEcySQ/
w+o+bXfXx2DKhPZ3pYjPmLeTXOdw6Kz23NzY5A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aO5cQ1O4yHmsMdqMOIIvHKe2EYgr220918L97ZNWI13WJc9Hy/za/qTIVF5r/B6+WwfLSD29uVcE
xO1sNfbehjjBX4IGfJJq5eS0sevimIs2d9w+7dTlhCjprIPP0NH+QBEEuILwE7iBT5gHhZ7LWo6X
56Cb73x+0uuilVN83atsIUcl7U8tirtZe6LzV9HMdjeAs1ZACrT0x+sEf34KBAt4zYvfRDO8HmDB
y+QVeKaor8IQh7k/PSdJlNVGS3HRifUB2bA8N9MjO8KpcmmQ3+yu2b0CYNhxsGgs6/T6eNlbLkW3
r5wxAKmMAt0MJ10lgsKF58iurJOkbxvqT7h2qA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiLi1qNBtdMypFqOMjAZMxsjQFhQBLfsWOkL0Q1JN8UW15z94meS1EJCNDtuYgTWL0OZi8ULBj2a
cfKY5VVpIuUkFt06TuoasDxBQ7xG3JRGnq6bIcEqiPnW0IPC5sWtjx6XFYX1piuSZwNsIQl9XB2T
rcQQyigvZg1VXy8y84oChzjZMZv4YFFh2EjvC1J7QlasK8Cr3+ZTnUr+OqL326dj1A6eX7IlYr4z
4PL3d2/1p2tB/F8BM8aWbkOTAkutJEHlommOx8GLn0ZYWkjjUP9lTc/fAUbeWuVDQlQ1JNF0cv6S
uMdFU3tZ4j+ibyCXCcacvUaqu62WS1vt+0v5aA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6816)
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
