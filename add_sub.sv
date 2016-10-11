`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 09:09:31 PM
// Design Name: 
// Module Name: add_sub
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


module add_sub(
    input [2:0] A,
    input [2:0] B,
    output [2:0] SUM,   // Note that the output will overflow and underflow
    output [2:0] DIFF
    );
    
    assign SUM = A + B;
    assign DIFF = A - B;
    
endmodule
