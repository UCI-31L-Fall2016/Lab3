`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 09:40:46 PM
// Design Name: 
// Module Name: shifter_tb
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


module shifter_tb;

logic [2:0] A;
logic [2:0] SHIFT_L;
logic [2:0] SHIFT_R_LOGICAL;
logic [2:0] SHIFT_R_ARITH;

shifter DUT(
    A,
    SHIFT_L,
    SHIFT_R_LOGICAL,
    SHIFT_R_ARITH
    );
    
initial begin
    A = 'd0;
    #10;
    A = 3'b101;
end // end of initial
    
endmodule
