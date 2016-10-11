`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2016 08:16:09 PM
// Design Name: 
// Module Name: mux4to1_tb
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


module mux4to1_tb; // semi-colon

logic a;
logic b;
logic c;
logic d;
logic [1:0] sel; // sel[1] and sel[0]
logic y;

mux4to1 DUT(    // Instntiate the design and connect the ports
    .A(a),
    .B(b),
    .C(c),
    .D(d),
    .sel(sel),
    .Y(y)
    );

initial begin // Try some inputs as the simulation begins
    a = 1'b0;
    b = 1'b1;
    c = 1'b0;
    d = 1'b1;
    sel = 2'b00;
    #10;
    sel = 2'b01;
    #10;
    sel = 2'b10;
    #10;
    sel = 2'b11;
    #10;
    a = 1'b1;
    b = 1'b0;
    c = 1'b1;
    d = 1'b0;
    sel = 2'b00;
    #10;
    sel = 2'b01;
    #10;
    sel = 2'b10;
    #10;
    sel = 2'b11;
end // end of initial block

endmodule
