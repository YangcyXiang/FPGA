#ʱ��Լ��
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U18} [get_ports sys_clk]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports sys_rst_n]

#ad_data1
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W16} [get_ports {ad_data_1[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T15} [get_ports {ad_data_1[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y16} [get_ports {ad_data_1[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U17} [get_ports {ad_data_1[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V18} [get_ports {ad_data_1[8]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R18} [get_ports ad_otr_1]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y19} [get_ports ad_clk_1]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V16} [get_ports {ad_data_1[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T14} [get_ports {ad_data_1[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y17} [get_ports {ad_data_1[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T16} [get_ports {ad_data_1[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V17} [get_ports {ad_data_1[9]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T17} [get_ports {ad_oe_1}]
#ad_data2
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P16} [get_ports {ad_data_2[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W19} [get_ports {ad_data_2[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R17} [get_ports {ad_data_2[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V20} [get_ports {ad_data_2[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N17} [get_ports {ad_data_2[8]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N18} [get_ports ad_otr_2]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U20} [get_ports ad_clk_2]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P15} [get_ports {ad_data_2[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W18} [get_ports {ad_data_2[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R16} [get_ports {ad_data_2[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W20} [get_ports {ad_data_2[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P18} [get_ports {ad_data_2[9]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P19} [get_ports {ad_oe_2}]