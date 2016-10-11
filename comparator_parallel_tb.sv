`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 08:33:27 PM
// Design Name: 
// Module Name: comparator_parallel_tb
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


module comparator_parallel_tb;

logic [2:0] A;
logic [2:0] B;
logic GT;
logic GEQ;
logic EQ;
logic NEQ;
logic LT;
logic LEQ;

int i,j; // for for-loop

comparator_parallel comp1(
    A,
    B,
    GT,  // A > B
    GEQ, // A >= B
    EQ,  // A == B
    NEQ, // A != B
    LT,  // A < B
    LEQ  // A <= B
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
