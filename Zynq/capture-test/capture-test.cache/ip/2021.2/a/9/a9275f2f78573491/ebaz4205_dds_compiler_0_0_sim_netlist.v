// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Oct  6 19:30:00 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ebaz4205_dds_compiler_0_0_sim_netlist.v
// Design      : ebaz4205_dds_compiler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_dds_compiler_0_0,dds_compiler_v6_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_21,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_cosine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cosine} enabled {attribs {resolve_type generated dependency cosine_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency cosine_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency cosine_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} field_sine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value sine} enabled {attribs {resolve_type generated dependency sine_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency sine_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency sine_offset format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency sine_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [7:0]m_axis_data_tdata;

  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [26:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [26:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [26:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "27" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "101000111101011100001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_21 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[26:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[26:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[26:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C3FJCcOXv/ooHWXTaSsUzuG3LCea1kFLhxiMEs1WHRvlllAUbVeovr7CzPBNjUvjqE0CwBr5JiFE
C98wCkBbnKHiuK1l2Cju06e2FnPQSqFZEpJIDaNx4eFQT1Ntf21Z6FxvgyiC/lwA4L+CeSQ4t/AB
PPa1c5L1IbgGQyC6BPc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PR+lz4aMEKM9jrwzh+cxLBb7oOFENpi6VKQVg5Z/auNLefQHlDN37vC6NupkmzIMOQaMv4vwG5ED
ypm8ux97czVF/jpdAnLCui3yHt0tfpn3xaR8pw3L9GLqjc13xG8b2ADdgq5W73HbR5XAixq+jrWz
T6ZmunIwF7WjiPPBo+ApufR0FldATHNyygYVALlmAuzYNw47XQHFauhl7hvjYJMA5vASevWa9fgO
3hXOQ9C/ifBoIzCb9ro18xQmSPsQMQiuBGFPOAWPF04725QKrFBqFd31Pnf0BzSL+Q+NUi+HqP1N
aV1w8YhH42UnpawE+OIBz2tJ0gTuoerzm5z0sg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p9SKDXb40dnTTd2nvmR4vnYN/ML2bYNHea2usUOM2yTyTFZFzFMjOAuCEaoV3BxLFthJz7U/9u0U
KkHHY5Gbiajc7hxRdFMD9jV3lwJzhgLJ3YNKDuH4+LnTNPiRPOvbiIe1F41R20K91mj8kbc+nVML
6hebVzjaOUp7NyToXK0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FgimluZxnvdEwXNzvxOrVzW6WbGn97hS1VfgtcQyrR5x1hRzh5UzLLAiE05ffMyxrm5sudFSqsQl
ycovUBKRSzp8iO9QRHi/b9c2qvT7BwbP2MC7XmpNUBZASI9zbxFvlqbPg3y7FzY8IvGL3RRmfsOh
akAIp1EedMdbi8uJEdip0Ui0Z7xM8RKU7mVbeFVXwkThF6mKbdlhGEE9mjrbJHHXfXOe6CRDTf8g
6Bvuvx1w7n7z6h9ct6+qFvPooLI00LdIS8rcZTO05DOVMx+jfnFBAmRcgZLSJfpcTAbkgOjQ1Usq
vFnsxHK0EdaH0+wQIf/MK3BUAKsv0R3qW5/bjw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QnAu/tvx0LgmGaZYyZOz27UGo+0WqoxABx9zk70WodyIaYuhIEUVlt3043lkL23jtD0uvchd2/Ac
VjmGdVWwwebMzniiO6xZhPWxSI7Lk3pvad59I3SSwW8SOxujEXMEcNZxL6vykjhziYAEBIfnjcOt
HvDrINdsZMgk6VyntHh2Yxvb5UPBpsOgFp/XNvSx730KyZoUhEhPUwaPiEWe6Cz0yvOJQ1zzfuqI
zp0UxCp84Y5spIU4Nr7U+gfQKcjVtTJTSG9sQvrUAOWchemR0+X+RGHfnPe8DptbKpeS51osQvxN
JkldgdZJSWeUxc9qwScfwvGEZ82dwe3on8SiwA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFGvd84O+J1dml9ZOPmc3ZO76c7DMotBGPA3S4MXl8w595G/S/aV23N90H91I71VDP80staPsAD7
6qyBWuIulcHOkyr6QHFtAeL9BiDKEBvKcKY8LkKYc0Jqtgq9oYpqDsQ0V8bBc2C3kv33H3Z7Fn2r
ZwGokq9JZBaSF7o2GG5oNPrDokq3szauslCcju/cA5pVAyUdolPNrNTOhqLUPdIjTt9XFtFviRsO
oghSId+t+3tKN31FYcSjLvAXWQAdCJKZ3s/5Kr2M5km/njceqoXY/nFIFXx6B3W6RLuNMEH5i43S
kTGZWORNUuElamGzToa/NQtTZTU+JgEuzdOYgw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C+cTCnJcow6trrWkCuGK/j2MpXSbgGSqEZH77Bvr15o/N0MlEzb3EhgIwtR0is4cHe2OFfXgcuh9
cxJpBZ6f346B8x6uuUDbQrZPIcUalCIoMih/AEMoYWsj6k+LZLdozPAspnWe3qdSIEMZh30audRL
9nLm78MkNBjnP/9MTHQcmkBYY12c+8IFip0PAqa/EbdgHLpVGrwbOElGyw8QRKozgds5bgMzdXIH
5qr6PVpCEQNjVqF2UFS6bFbar3hfrzvHVd0ZXCIuwwiNiigd798rUJMiLJO5uFjA3Ma2I0qpxSOw
wXKGHfw0hEjZ98b5GEuu6cBsoSEkWnjmece64w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NSTrEXT7eTCefIQjxNa6ganxpjQjVP1sXenVfL93XqcEWQ2ZZCBWi3EPevkgxkI2Jiz/RBNi6lGO
3L8us7xA7HC/dI8Dp+XiZ2qxBDh0CGPH3J+CYSkhK8OeOIc+RZjsbVtrxAZr1bbwvRt17s/d4RYN
dXwCucBL2EWMOkXFqZatHDEY5y4CLM0sIx/U1jiFJ43Y9hmApftEXaiayjzX7WJS41EqhT4qwVXZ
riwhDgibLNTZEBZpQZIXuzzcAUEIxVRXoAJbrwmOVr1gBUN8TlOzNmuvr3WkkSoK+OQEp9OSJK4D
RvkifSbyJx2IQbOcJ06qKz3A3g0OYpmASsoTzHi7J9Kn6+64KZynxncdO25+7nXbNflRa1qH3Uo+
2bZtRJXbBMPdd9n5N5willAtidC4Jken6AsCDOeym3s7ie9xyNzSvH87Wxrej7IA59c5rxK0IYO4
mqnuv/1J/21N0VIqtKopjgOdB6pZj1B7abfaqjMm+g/iXa1QPffrMawC

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e24Ac2eoCzH4d2MGDNjllrsz302JWX7SHmHY4ZeqELsJGYMPdwmKEbabeI3yvuORUVgvLtlk0dCL
2ksTyI8O69mMICGIwp6B/1FoqxHpr8UH8nRiFk2Ljy7ZwrtKbSNgbf9yGCY8ly/53F4WV5PRjv8I
zmU3oN+s0krwTrhWYXE81mI5k96nJHt15YTTIYDgDU7ysC+gLLHYgkkKlqeavAZWInINVY5pNruw
mIllybKlTMyeuO5hnECXVAq3TCgO8xBlsIEZd7GQASsc6GIlFuQqAW/vknNbsU1n02oklkdvqp3+
2Vym+T4DrCmmDbzEhHEANWvGEa2cG0C9fW3sjg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DhBV2PnvLfxUbNXvhSnWmHR/Z3yHRrl9AHmb9LgQhjnI73o6KeRjzlw9+remVOCkaP2lsAVtty9d
urFxnRJREt8iYyJ+80JkuSUH1ldF2mrtVlAsjjBV5dfPwgaB8/EDaCWtP3mFPFK7gOr5kDmSo4n4
iJsfy/roTW/EEGKDz4shFTw+1XDZRmhxtelbjQsvlfZMcp84EkpjDHtx8RMXauiJAy1aR5axBZEx
NlG9DokoQ/5VPOxKnSVbrDBb5DTUGqCTYNkgMlEpyiEVKJHm7jNQ0IbvKqvvi7MAwG9YrqxQgjo2
QHl3DmtT4XfxIgjREUK1J5O9nhZEkGLLpDRS8A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DTS3mIdyAH+nfssrO0phcNiMmwvp52eMBKKZktmfMAB1bY9caNlpWen462+Vvg+424d0jT7ZZV7j
Op1jIXzPYI51uV7PkmNpn96aGWYwaUDbISilp8ZsiZ031nCweIaIhOOIT7QvarQpGDzc6YM0Oobu
thA48GuXl6JJkIZK6os6+sh1ov1AfR+4MI0PoqoJdch4tmmkv67ExU3ZnCotOgrV/5DywjGR48nK
KpaBNaHiZE19d7dWKfwjNEWa+uGpwE3fG8C/qd1d1g973U8ZKmD8qlGBCjyRrx5Km1Zcna7XWtDQ
kN5/YPgZZarThDLH5qMMGT+1vyu2Ni/HmSbqqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47008)
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
