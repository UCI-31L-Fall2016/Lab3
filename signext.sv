`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 09:20:17 PM
// Design Name: 
// Module Name: signext
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


module signext(
    input signed [2:0] A,
    output signed [4:0] EXT_BY_2
    );
    
    wire [1:0] ext_part;
    
    assign ext_part = {2{A[2]}}; // Replicate A[2] by 2 before concatenation
    assign EXT_BY_2 = { ext_part, A}; // Concatenation
    
endmodule
