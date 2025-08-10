//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2025 04:47:51 PM
// Design Name: 
// Module Name: switches_to_leds
// Project Name: Josh Bobar
// Target Devices: basys3
// Tool Versions: 2025.1
// Description: Showing relation between peripheral switches and LED, learning how to
//              program on actual FPGA hardware rather than just simulations.
// 
// Dependencies: N/A
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module blinking_led(
    input i_switch_1,
    input i_switch_2,
    input i_switch_3,
    input i_switch_4,
    input i_switch_5,
    input i_switch_6,

    output o_led_1,
    output o_led_2,
    output o_led_3,
    output o_led_4,
    output o_led_5,
    output o_led_6 
);

assign o_led_1 = i_switch_1;
assign o_led_2 = i_switch_2;
assign o_led_3 = i_switch_3;
assign o_led_4 = i_switch_4;
assign o_led_5 = i_switch_5;
assign o_led_6 = i_switch_6;

endmodule
