`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:59 09/28/2026 
// Design Name: 
// Module Name:    register_8bit 
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
module register_8bit(
    input        clk,
    input        reset,
    input  [7:0] d,
    output reg [7:0] q
);

always @(posedge clk or posedge reset) begin

    if (reset)
        q <= 8'b00000000;

    else
        q <= d;

end

endmodule