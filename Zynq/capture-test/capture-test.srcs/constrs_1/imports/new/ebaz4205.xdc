##
## @file        ebaz4205.xdc
## @brief       Xilinx Design Constraints for EBAZ4205
## @author      Keitetsu
## @date        2021/03/21
## @copyright   Copyright (c) 2021 Keitetsu
## @par         License
##              This software is released under the MIT License.
##

# Clock for Ethernet Transceiver
set_property IOSTANDARD LVCMOS33 [get_ports FCLK_CLK3_0]
set_property PACKAGE_PIN U18 [get_ports FCLK_CLK3_0]

# Ethernet Transceiver
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RX_CLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TX_CLK_0]
set_property PACKAGE_PIN U14 [get_ports ENET0_GMII_RX_CLK_0]
set_property PACKAGE_PIN U15 [get_ports ENET0_GMII_TX_CLK_0]

set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_GMII_TX_EN_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_txd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_txd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_txd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_txd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RX_DV_0]
set_property IOSTANDARD LVCMOS33 [get_ports MDIO_ETHERNET_0_0_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports MDIO_ETHERNET_0_0_mdio_io]
set_property PACKAGE_PIN Y17 [get_ports {enet0_gmii_rxd[3]}]
set_property PACKAGE_PIN V17 [get_ports {enet0_gmii_rxd[2]}]
set_property PACKAGE_PIN V16 [get_ports {enet0_gmii_rxd[1]}]
set_property PACKAGE_PIN Y16 [get_ports {enet0_gmii_rxd[0]}]
set_property PACKAGE_PIN W19 [get_ports {ENET0_GMII_TX_EN_0[0]}]
set_property PACKAGE_PIN Y19 [get_ports {enet0_gmii_txd[3]}]
set_property PACKAGE_PIN V18 [get_ports {enet0_gmii_txd[2]}]
set_property PACKAGE_PIN Y18 [get_ports {enet0_gmii_txd[1]}]
set_property PACKAGE_PIN W18 [get_ports {enet0_gmii_txd[0]}]
set_property PACKAGE_PIN W16 [get_ports ENET0_GMII_RX_DV_0]
set_property PACKAGE_PIN W15 [get_ports MDIO_ETHERNET_0_0_mdc]
set_property PACKAGE_PIN Y14 [get_ports MDIO_ETHERNET_0_0_mdio_io]

# Green LED
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property PACKAGE_PIN W13 [get_ports {LED[1]}]

# Red LED
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
set_property PACKAGE_PIN W14 [get_ports {LED[0]}]

#EBAZ4205 DATA3 connector 
set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[0]}]  ; # DATA3_5                                                                                      
set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { ADC_clk_64M}]; # DATA3_6
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[2]  }]; # DATA3_7 
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[1]  }]; # DATA3_8
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[4]  }]; # DATA3_9
set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[3]  }]; # DATA3_11 
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[6]  }]; # DATA3_13
set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[5]  }]; # DATA3_14 
set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[8]  }]; # DATA3_15 
set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[7]  }]; # DATA3_16
set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[10] }]; # DATA3_17
set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[9]  }]; # DATA3_18 
set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports { OTR        }]; # DATA3_19 
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { ADC_in[11] }]; # DATA3_20
