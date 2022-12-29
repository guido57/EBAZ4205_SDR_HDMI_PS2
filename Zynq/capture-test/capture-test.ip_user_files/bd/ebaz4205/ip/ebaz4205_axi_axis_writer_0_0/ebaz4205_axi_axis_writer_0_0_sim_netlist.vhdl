-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Sun Dec 25 22:00:58 2022
-- Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/EBAZ4205_SDR/Zynq/capture-test/capture-test.gen/sources_1/bd/ebaz4205/ip/ebaz4205_axi_axis_writer_0_0/ebaz4205_axi_axis_writer_0_0_sim_netlist.vhdl
-- Design      : ebaz4205_axi_axis_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebaz4205_axi_axis_writer_0_0_axi_axis_writer is
  port (
    int_wready_reg_reg_0 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    int_awready_reg_reg_0 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ebaz4205_axi_axis_writer_0_0_axi_axis_writer : entity is "axi_axis_writer";
end ebaz4205_axi_axis_writer_0_0_axi_axis_writer;

architecture STRUCTURE of ebaz4205_axi_axis_writer_0_0_axi_axis_writer is
  signal int_awready_reg_i_1_n_0 : STD_LOGIC;
  signal \^int_awready_reg_reg_0\ : STD_LOGIC;
  signal int_bdone_wire : STD_LOGIC;
  signal int_bvalid_reg_i_1_n_0 : STD_LOGIC;
  signal int_wdata_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_wready_reg_i_1_n_0 : STD_LOGIC;
  signal \^int_wready_reg_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_INST_0\ : label is "soft_lutpair4";
begin
  int_awready_reg_reg_0 <= \^int_awready_reg_reg_0\;
  int_wready_reg_reg_0 <= \^int_wready_reg_reg_0\;
  s_axi_bvalid <= \^s_axi_bvalid\;
int_awready_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4F4444FFFFFFFF"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^int_awready_reg_reg_0\,
      I2 => \^int_wready_reg_reg_0\,
      I3 => s_axi_wvalid,
      I4 => int_bdone_wire,
      I5 => aresetn,
      O => int_awready_reg_i_1_n_0
    );
int_awready_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      O => int_bdone_wire
    );
int_awready_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => int_awready_reg_i_1_n_0,
      Q => \^int_awready_reg_reg_0\,
      R => '0'
    );
int_bvalid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F755F700000000"
    )
        port map (
      I0 => int_bdone_wire,
      I1 => \^int_awready_reg_reg_0\,
      I2 => s_axi_awvalid,
      I3 => \^int_wready_reg_reg_0\,
      I4 => s_axi_wvalid,
      I5 => aresetn,
      O => int_bvalid_reg_i_1_n_0
    );
int_bvalid_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => int_bvalid_reg_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\int_wdata_reg[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\int_wdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(0),
      Q => int_wdata_reg(0),
      R => p_0_in
    );
\int_wdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(10),
      Q => int_wdata_reg(10),
      R => p_0_in
    );
\int_wdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(11),
      Q => int_wdata_reg(11),
      R => p_0_in
    );
\int_wdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(12),
      Q => int_wdata_reg(12),
      R => p_0_in
    );
\int_wdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(13),
      Q => int_wdata_reg(13),
      R => p_0_in
    );
\int_wdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(14),
      Q => int_wdata_reg(14),
      R => p_0_in
    );
\int_wdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(15),
      Q => int_wdata_reg(15),
      R => p_0_in
    );
\int_wdata_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(16),
      Q => int_wdata_reg(16),
      R => p_0_in
    );
\int_wdata_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(17),
      Q => int_wdata_reg(17),
      R => p_0_in
    );
\int_wdata_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(18),
      Q => int_wdata_reg(18),
      R => p_0_in
    );
\int_wdata_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(19),
      Q => int_wdata_reg(19),
      R => p_0_in
    );
\int_wdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(1),
      Q => int_wdata_reg(1),
      R => p_0_in
    );
\int_wdata_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(20),
      Q => int_wdata_reg(20),
      R => p_0_in
    );
\int_wdata_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(21),
      Q => int_wdata_reg(21),
      R => p_0_in
    );
\int_wdata_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(22),
      Q => int_wdata_reg(22),
      R => p_0_in
    );
\int_wdata_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(23),
      Q => int_wdata_reg(23),
      R => p_0_in
    );
\int_wdata_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(24),
      Q => int_wdata_reg(24),
      R => p_0_in
    );
\int_wdata_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(25),
      Q => int_wdata_reg(25),
      R => p_0_in
    );
\int_wdata_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(26),
      Q => int_wdata_reg(26),
      R => p_0_in
    );
\int_wdata_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(27),
      Q => int_wdata_reg(27),
      R => p_0_in
    );
\int_wdata_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(28),
      Q => int_wdata_reg(28),
      R => p_0_in
    );
\int_wdata_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(29),
      Q => int_wdata_reg(29),
      R => p_0_in
    );
\int_wdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(2),
      Q => int_wdata_reg(2),
      R => p_0_in
    );
\int_wdata_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(30),
      Q => int_wdata_reg(30),
      R => p_0_in
    );
\int_wdata_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(31),
      Q => int_wdata_reg(31),
      R => p_0_in
    );
\int_wdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(3),
      Q => int_wdata_reg(3),
      R => p_0_in
    );
\int_wdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(4),
      Q => int_wdata_reg(4),
      R => p_0_in
    );
\int_wdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(5),
      Q => int_wdata_reg(5),
      R => p_0_in
    );
\int_wdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(6),
      Q => int_wdata_reg(6),
      R => p_0_in
    );
\int_wdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(7),
      Q => int_wdata_reg(7),
      R => p_0_in
    );
\int_wdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(8),
      Q => int_wdata_reg(8),
      R => p_0_in
    );
\int_wdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^int_wready_reg_reg_0\,
      D => s_axi_wdata(9),
      Q => int_wdata_reg(9),
      R => p_0_in
    );
int_wready_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4F4444FFFFFFFF"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^int_wready_reg_reg_0\,
      I2 => \^int_awready_reg_reg_0\,
      I3 => s_axi_awvalid,
      I4 => int_bdone_wire,
      I5 => aresetn,
      O => int_wready_reg_i_1_n_0
    );
int_wready_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => int_wready_reg_i_1_n_0,
      Q => \^int_wready_reg_reg_0\,
      R => '0'
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => int_wdata_reg(0),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => int_wdata_reg(10),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => int_wdata_reg(11),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => int_wdata_reg(12),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => int_wdata_reg(13),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => int_wdata_reg(14),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => int_wdata_reg(15),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => int_wdata_reg(16),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => int_wdata_reg(17),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => int_wdata_reg(18),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => int_wdata_reg(19),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => int_wdata_reg(1),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => int_wdata_reg(20),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => int_wdata_reg(21),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => int_wdata_reg(22),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => int_wdata_reg(23),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => int_wdata_reg(24),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => int_wdata_reg(25),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => int_wdata_reg(26),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => int_wdata_reg(27),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => int_wdata_reg(28),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => int_wdata_reg(29),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => int_wdata_reg(2),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => int_wdata_reg(30),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => int_wdata_reg(31),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(31)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => int_wdata_reg(3),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => int_wdata_reg(4),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => int_wdata_reg(5),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => int_wdata_reg(6),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => int_wdata_reg(7),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => int_wdata_reg(8),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => int_wdata_reg(9),
      I2 => \^int_wready_reg_reg_0\,
      O => m_axis_tdata(9)
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BBB0BB0000B0BB"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^int_wready_reg_reg_0\,
      I2 => s_axi_awvalid,
      I3 => \^int_awready_reg_reg_0\,
      I4 => \^s_axi_bvalid\,
      I5 => s_axi_bready,
      O => m_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebaz4205_axi_axis_writer_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ebaz4205_axi_axis_writer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ebaz4205_axi_axis_writer_0_0 : entity is "ebaz4205_axi_axis_writer_0_0,axi_axis_writer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ebaz4205_axi_axis_writer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ebaz4205_axi_axis_writer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ebaz4205_axi_axis_writer_0_0 : entity is "axi_axis_writer,Vivado 2021.2";
end ebaz4205_axi_axis_writer_0_0;

architecture STRUCTURE of ebaz4205_axi_axis_writer_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 64000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 64000000, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 64000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
begin
  s_axi_arready <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.ebaz4205_axi_axis_writer_0_0_axi_axis_writer
     port map (
      aclk => aclk,
      aresetn => aresetn,
      int_awready_reg_reg_0 => s_axi_awready,
      int_wready_reg_reg_0 => s_axi_wready,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
