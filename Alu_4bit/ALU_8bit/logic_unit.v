`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:02 09/28/2026 
// Design Name: 
// Module Name:    logic_unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module logic_unit(
    input  [7:0] a,
    input  [7:0] b,
    output [7:0] and_out,
    output [7:0] or_out,
    output [7:0] xor_out,
    output [7:0] nor_out,
    output [7:0] not_out
);

assign and_out = a & b;
assign or_out  = a | b;
assign xor_out = a ^ b;
assign nor_out = ~(a | b);
assign not_out = ~a;

endmodule