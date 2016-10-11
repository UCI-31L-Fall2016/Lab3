`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 09:24:22 PM
// Design Name: 
// Module Name: signext_tb
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


module signext_tb;

logic [2:0] A;
logic [4:0] EXT_BY_2;


signext DUT(
    A,
    EXT_BY_2
    );

initial begin
    A = 'd0;
    #20;
    // positive sign extension
    A = 3'b011;
    #20;
    // Negative sign extension
    A = 3'b101;
    

end // end of initial


endmodule
