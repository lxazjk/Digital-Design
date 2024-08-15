# Filename: constraints_lab8.xdc
## Constraints file for Lab8

# Main clock
set_property PACKAGE_PIN AC18 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]

create_clock -period 10.000 -name clk [get_ports "clk"]

set_property PACKAGE_PIN N26 [get_ports {sclk_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {sclk_1}]
set_property PACKAGE_PIN N24 [get_ports {sclrn_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {sclrn_1}]
set_property PACKAGE_PIN M26 [get_ports {sout_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {sout_1}]
set_property PACKAGE_PIN P18 [get_ports {EN_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {EN_1}]


set_property PACKAGE_PIN M24 [get_ports {sclk_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {sclk_2}]
set_property PACKAGE_PIN M20 [get_ports {sclrn_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {sclrn_2}]
set_property PACKAGE_PIN L24 [get_ports {sout_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {sout_2}]
set_property PACKAGE_PIN R18 [get_ports {EN_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {EN_2}]
