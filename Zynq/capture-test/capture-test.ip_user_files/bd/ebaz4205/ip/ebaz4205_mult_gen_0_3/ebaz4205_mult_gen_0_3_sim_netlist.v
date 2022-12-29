// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Dec 27 13:21:11 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ebaz4205_mult_gen_0_3 -prefix
//               ebaz4205_mult_gen_0_3_ ebaz4205_mult_by_4_0_sim_netlist.v
// Design      : ebaz4205_mult_by_4_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_mult_by_4_0,mult_gen_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_17,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module ebaz4205_mult_gen_0_3
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
  ebaz4205_mult_gen_0_3_mult_gen_v12_0_17 U0
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
LFSUB/jxTc70eeYwdulLtEYWU4dyYrNPfHLq7aJrFK70cnvWjrN0i+25bJr/IyMY1mDoyzzWTjVB
wNq1KQ+yb+rdseR37Dw2Z0qOAudEseGDmcnwSMDNjzhoQC1lVzgjEHwyhZAAGcMEh2qjQAqnUaoc
nYf3Ct0h3QWa5C4eaYR8uStles9N2I6RW3Kn9kZbDyT7KK9l8cKmWMw6oJa1A3OBoyu61HuTVHEx
N/mxtAdnrWu139rGusayzHyfFim4NsWqRh8xF3zhzBo05cm9MgJ3Cmn2c/Xc9PDkh6WWHnLSbi7K
gyQqB/BwJ9tyILZ06cFRymlScyUKb40hMWY04A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XcZknY+9oXkSS6z+sIqi07s1MmXKgLmKeY0LtWh/01Ua07acoGaLcDjkhKpY0ABoCVLEq1EH9Rmj
1qZuZj1j/2LUF878ajVc2JBhbvo+Amz3KUROrPzOoLAZmabNBolKp2ubpkoERw/NkMnufMPiQ8jw
2n7l5+ejqaNQ1CKK0CyiSs7XDvQGJEsDqgzgOld2We86ntSuG51VK9j+tQKRaL/63gAgzt3ul2jX
z3ODV2ih+l7b78QwIefCn71Laj1ZctMKigoF0L+fvtQJ+/hscQP7aoM+9KpjiidRHeZFrbkWQrKL
3OMG+wNWD9Ga/XYJyeq+qTE19ryvf/t/eSpa2w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6736)
`pragma protect data_block
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
E69AQ1sYIfXxdA==
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
