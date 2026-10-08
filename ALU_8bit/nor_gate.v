`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:56:32 09/28/2026 
// Design Name: 
// Module Name:    nor_gate 
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
module nor_gate(
    input a,
    input b,
    output y
);

assign y = ~(a | b);

endmodule
