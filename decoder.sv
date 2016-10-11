`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 08:44:19 PM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [2:0] A,
    output logic [7:0] Y    // You need logic statement to use it in always_comb
    );
    
    always_comb begin
        case (A)
        3'd0 : Y = 8'b0000_0001;    // '_' is ignored. Just for easy reading
        3'd1 : Y = 8'b0000_0010;
        3'd2 : Y = 8'b0000_0100;
        3'd3 : Y = 8'b0000_1000;
        3'd4 : Y = 8'b0001_0000;
        3'd5 : Y = 8'b0010_0000;
        3'd6 : Y = 8'b0100_0000;
        default : Y = 8'b1000_0000; // for 3'd7
        //You always need default to take care of X and Z values
        endcase
    
    end // end of always_comb
    
endmodule
