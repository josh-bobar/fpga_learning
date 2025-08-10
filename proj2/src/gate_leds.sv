`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 02:57:33 PM
// Design Name: 
// Module Name: and_gate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gate_leds(
    input i_switch_1,
    input i_switch_2,
    input i_switch_3,
    input i_switch_4,
    input i_switch_5,
    input i_switch_6,    
    output o_led_1,
    output o_led_2,
    output o_led_3
    );
    
    assign o_led_1 = i_switch_1 & i_switch_2;
    assign o_led_2 = i_switch_3 | i_switch_4;
    assign o_led_3 = i_switch_5 ^ i_switch_6;
    
endmodule
