`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 08:50:03 PM
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
logic [2:0] A;
logic [7:0] Y;

int i;

decoder DUT(
    A,
    Y    
    );

initial begin
    A = 'd0;    //
    for (i = 0; i < 8; i++) begin
        A = i;
        #10;
    end // end of for
end // end of initial


endmodule
