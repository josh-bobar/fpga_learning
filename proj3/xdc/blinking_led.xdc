## Switches
set_property PACKAGE_PIN U18 [get_ports i_switch_1]
set_property IOSTANDARD LVCMOS33 [get_ports i_switch_1]

## LEDs
set_property PACKAGE_PIN U16 [get_ports o_led_1]
set_property IOSTANDARD LVCMOS33 [get_ports o_led_1]

## DONT FORGET THE CLOCK WHEN SETTING UP CONSTRAINTS FILE
## Clock
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

