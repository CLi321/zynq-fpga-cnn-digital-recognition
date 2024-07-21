
#set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
#set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
#set_property SEVERITY {Warning} [get_drc_checks RTSTAT-1]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets camera_pclk_IBUF]

#set_property PULLUP true [get_ports cmos1_sda]
#set_property PULLUP true [get_ports cmos1_scl]
#set_property SLEW FAST [get_ports cmos1_scl]
#set_property SLEW FAST [get_ports cmos1_sda]



set_property IOSTANDARD LVCMOS33 [get_ports cmos1_reset]
set_property PACKAGE_PIN N20 [get_ports cmos1_reset]

set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {camera_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports camera_href]
set_property IOSTANDARD LVCMOS33 [get_ports camera_pclk]
set_property IOSTANDARD LVCMOS33 [get_ports camera_sclk]
set_property IOSTANDARD LVCMOS33 [get_ports camera_sdat]
set_property IOSTANDARD LVCMOS33 [get_ports camera_vsync]
#set_property IOSTANDARD LVCMOS33 [get_ports camera_xclk]
set_property PACKAGE_PIN P18 [get_ports {camera_data[0]}]
set_property PACKAGE_PIN W16 [get_ports {camera_data[1]}]
set_property PACKAGE_PIN R17 [get_ports {camera_data[2]}]
set_property PACKAGE_PIN T17 [get_ports {camera_data[3]}]
set_property PACKAGE_PIN R18 [get_ports {camera_data[4]}]
set_property PACKAGE_PIN P19 [get_ports {camera_data[5]}]
set_property PACKAGE_PIN U18 [get_ports {camera_data[6]}]
set_property PACKAGE_PIN R16 [get_ports {camera_data[7]}]
set_property PACKAGE_PIN N18 [get_ports camera_href]
set_property PACKAGE_PIN U20 [get_ports camera_pclk]
set_property PACKAGE_PIN T16 [get_ports camera_sclk]
set_property PACKAGE_PIN V16 [get_ports camera_sdat]
set_property PACKAGE_PIN T20 [get_ports camera_vsync]
#set_property PACKAGE_PIN A20 [get_ports camera_xclk]



set_property IOSTANDARD LVCMOS33 [get_ports reset_n]
set_property PACKAGE_PIN M19 [get_ports reset_n]



set_property IOSTANDARD TMDS_33 [get_ports {hdmi_dat_p[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_dat_p[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_dat_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports hdmi_clk_p]
set_property PACKAGE_PIN H16 [get_ports hdmi_clk_p]
set_property PACKAGE_PIN D19 [get_ports {hdmi_dat_p[0]}]
set_property PACKAGE_PIN C20 [get_ports {hdmi_dat_p[1]}]
set_property PACKAGE_PIN B19 [get_ports {hdmi_dat_p[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_OUT_EN1]
set_property PACKAGE_PIN F17 [get_ports HDMI_OUT_EN1]








