`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 10:05:47 PM
// Design Name: 
// Module Name: complementer_tb
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


module complementer_tb;

logic [3:0] A;
logic [3:0] Y;

int i;

complementer DUT(
    A,
    Y
    );

initial begin
    A = 'd0;
    #10;
    
    for (i = 0; i < 16; i++) begin
        A = i;
        #10;
    end
end


endmodule
