`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 09:11:38 PM
// Design Name: 
// Module Name: add_sub_tb
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


module add_sub_tb;

logic [2:0] A;
logic [2:0] B;
logic [2:0] SUM;
logic [2:0] DIFF;

int i,j; // for for-loop

add_sub DUT(
    .A,
    .B,
    .SUM,   // Note there is an additional bit to prevent overflow
    .DIFF
    );

initial begin
    A = 3'd0;
    B = 3'd0;
    
    for (i = 0; i < 8; i++) begin
        A = i;
        for (j = 0; j < 8; j++) begin
            B = j;
            #10;
        end
    end

end // end of initial

endmodule
