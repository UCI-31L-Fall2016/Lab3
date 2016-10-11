`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 08:55:31 PM
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
    input [7:0] A,
    output logic [2:0] Y,   // you need logic to use it in always_comb
    output logic VALID  
    );
    
    always_comb begin
        if (A[7]) begin
            Y = 3'd7;
            VALID = 1'b1;
        end // end of if
        else if (A[6]) begin
            Y = 3'd6;
            VALID = 1'b1;
        end
        else if (A[5]) begin
            Y = 3'd5;
            VALID = 1'b1;
        end
        else if (A[4]) begin
            Y = 3'd4;
            VALID = 1'b1;
        end        
        else if (A[3]) begin
            Y = 3'd3;
            VALID = 1'b1;
        end
        else if (A[2]) begin
            Y = 3'd2;
            VALID = 1'b1;
        end
        else if (A[1]) begin
            Y = 3'd1;
            VALID = 1'b1;
        end
        else if (A[0]) begin
            Y = 3'd0;
            VALID = 1'b1;
        end
        else begin      // You always need 'else', or you will see weird behavior that is not combinational
            Y = 3'd0;
            VALID = 1'b0;
        end
    end // end of always_comb
    
    
endmodule
