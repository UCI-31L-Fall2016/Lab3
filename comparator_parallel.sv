`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 08:30:13 PM
// Design Name: 
// Module Name: comparator_parallel
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


module comparator_parallel(
    input [2:0] A,
    input [2:0] B,
    output GT,  // A > B
    output GEQ, // A >= B
    output EQ,  // A == B
    output NEQ, // A != B
    output LT,  // A < B
    output LEQ  // A <= B
    );
    
    // Note that these operations are performed in parallel like in hardware
    assign GT = (A > B)? 1'b1 : 1'b0;
    assign GEQ = (A >= B)? 1'b1 : 1'b0;
    assign EQ = (A == B)? 1'b1 : 1'b0;
    assign NEQ = (A != B)? 1'b1 : 1'b0;
    assign LT = (A < B)? 1'b1 : 1'b0;
    assign LEQ = (A <= B)? 1'b1 : 1'b0;
    
endmodule
