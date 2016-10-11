`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 09:01:31 PM
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder_tb;

logic [7:0] A;
logic [2:0] Y;
logic VALID;

int i;

priority_encoder DUT(
    A,
    Y,   
    VALID  
    );
    
initial begin
    A = 8'b0000_0000;
    #20;
    for (i = 0; i < 8; i++ ) begin
        A = 8'b0000_0001 << i;  // Shift left by i
        #20;
    end
end // end of initial
    
endmodule
