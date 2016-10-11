`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 09:36:03 PM
// Design Name: 
// Module Name: shifter
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


module shifter(
    input signed [2:0] A,   // Treats A as a signed value
    output signed [2:0] SHIFT_L,    // Left shift. Same for logical and arithmetic
    output signed [2:0] SHIFT_R_LOGICAL,    // Right logical shift
    output signed [2:0] SHIFT_R_ARITH       // Right arithmetic shift
    );
    
    assign SHIFT_L = A << 1;
    assign SHIFT_R_LOGICAL = A >> 1;    // no sign extension
    assign SHIFT_R_ARITH = A >>> 1; //sign extension

    
endmodule
