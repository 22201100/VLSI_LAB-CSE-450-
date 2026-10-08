`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:01:16 09/28/2026 
// Design Name: 
// Module Name:    adder_8bit 
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
module adder_8bit(
    input  [7:0] a,
    input  [7:0] b,
    input        sub,
    output [7:0] sum,
    output       cout
);

wire c1, c2, c3, c4, c5, c6, c7;

wire [7:0] b_xor;

assign b_xor = b ^ {8{sub}};


// Bit 0
full_adder FA0(
    .a(a[0]),
    .b(b_xor[0]),
    .cin(sub),
    .sum(sum[0]),
    .cout(c1)
);

// Bit 1
full_adder FA1(
    .a(a[1]),
    .b(b_xor[1]),
    .cin(c1),
    .sum(sum[1]),
    .cout(c2)
);

// Bit 2
full_adder FA2(
    .a(a[2]),
    .b(b_xor[2]),
    .cin(c2),
    .sum(sum[2]),
    .cout(c3)
);

// Bit 3
full_adder FA3(
    .a(a[3]),
    .b(b_xor[3]),
    .cin(c3),
    .sum(sum[3]),
    .cout(c4)
);
// Bit 4
full_adder FA4(
    .a(a[4]),
    .b(b_xor[4]),
    .cin(c4),
    .sum(sum[4]),
    .cout(c5)
);

// Bit 5
full_adder FA5(
    .a(a[5]),
    .b(b_xor[5]),
    .cin(c5),
    .sum(sum[5]),
    .cout(c6)
);

// Bit 6
full_adder FA6(
    .a(a[6]),
    .b(b_xor[6]),
    .cin(c6),
    .sum(sum[6]),
    .cout(c7)
);
// Bit 7
full_adder FA7(
    .a(a[7]),
    .b(b_xor[7]),
    .cin(c7),
    .sum(sum[7]),
    .cout(cout)
);

endmodule