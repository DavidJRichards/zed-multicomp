# This file is specific for the Zedboard board.


set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports videoR1]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports videoR0]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports videoG1]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports videoG0]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports videoB1]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports videoB0]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports hSync]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports vSync]

#NET BTNC          LOC = P16  | IOSTANDARD=LVCMOS18;  # "BTNC"
# review A17
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports reset] 
set_property PULLUP true [get_ports reset]

#JA PMOD has a ps2 pmod
set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVCMOS33} [get_ports ps2Data] 
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports ps2Clk]
set_property PULLUP true [get_ports ps2Clk]
set_property PULLUP true [get_ports ps2Data]

#UART JB
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33 } [get_ports {rxd1}]
#NET JB1           LOC = W12  | IOSTANDARD=LVCMOS33;  # "JB1"
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33 } [get_ports {txd1}]
#NET JB2           LOC = W11  | IOSTANDARD=LVCMOS33;  # "JB2"
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33 } [get_ports {rts1}]
#NET JB3           LOC = V10  | IOSTANDARD=LVCMOS33;  # "JB3"

#JD PMOD has a sd card pmod, led 0 is drive led
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33 } [get_ports otherLED]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33 } [get_ports driveLED]

set_property -dict { PACKAGE_PIN M20 IOSTANDARD LVCMOS33 } [get_ports {sdMOSI}]
set_property PULLUP true [get_ports sdMOSI]
#NET JD1_N         LOC = W7   | IOSTANDARD=LVCMOS33;  # "JD1_N"
set_property -dict { PACKAGE_PIN M18 IOSTANDARD LVCMOS33 } [get_ports {sdCS}]
#NET JD1_P         LOC = V7   | IOSTANDARD=LVCMOS33;  # "JD1_P"
set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports {sdSCLK}]
#NET JD2_N         LOC = V4   | IOSTANDARD=LVCMOS33;  # "JD2_N"
set_property -dict { PACKAGE_PIN K19 IOSTANDARD LVCMOS33 } [get_ports {sdMISO}]
set_property PULLUP true [get_ports sdMISO]
#NET JD2_P         LOC = V5   | IOSTANDARD=LVCMOS33;  # "JD2_P"

# Configuration Bank Voltage Select
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

set_property PACKAGE_PIN N18 [get_ports sys_clock]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]

# Clock definition
#create_clock -name sys_clk -period 10.00 [get_ports {sys_clock}];                          # 100 MHz
create_clock -name sys_clk -period 30.00 [get_ports {sys_clock}];                          # 33.333 MHz
