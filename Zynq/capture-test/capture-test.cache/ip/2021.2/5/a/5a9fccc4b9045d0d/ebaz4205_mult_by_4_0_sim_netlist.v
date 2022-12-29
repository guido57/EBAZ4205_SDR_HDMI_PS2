// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Dec 27 13:21:11 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ebaz4205_mult_by_4_0_sim_netlist.v
// Design      : ebaz4205_mult_by_4_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_mult_by_4_0,mult_gen_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_17,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_17 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6800)
`pragma protect data_block
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
/qLpKxNd4OjQDTS8zzDsTFs=
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
