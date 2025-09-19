//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2025 04:00:13 PM
// Design Name: 
// Module Name: blinking_led
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
`timescale 1ns / 1ps

module blinking_led(
    input i_switch_1,
    input clk,
    
    output o_led_1);
    
// Goal: Have the button switch and hold state when you press the button
    reg led_1_state    = 1'b0;
    reg switch_1_state = 1'b0;
    
    // NOTE: this solution does not account for button debouncing
    always @(posedge clk) begin
        // updates every clock cycle
        switch_1_state <= i_switch_1;
        
        // looking for falling edge of button press
        // this means we see an instant switch (falling / unpressing) of i_switch_1 input
        // while seeing the previous state of switch 1 from the start of always being HIGH.
        // REMEMBER: This all happens in Parallel which is extremely hard to wrap the head around
        if ( (i_switch_1 == 1'b0) && (switch_1_state == 1'b1) ) begin
            led_1_state <= ~(led_1_state);
        end
    end
    
    // assign led to match output continuously
    assign o_led_1 = led_1_state;
    
endmodule
