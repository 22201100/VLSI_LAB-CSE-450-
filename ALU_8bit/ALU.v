`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:41 09/28/2026 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input        clk,
    input        reset,

    input  [7:0] A,
    input  [7:0] B,

    input  [2:0] OP,

    output [7:0] RESULT,
    output       CARRY
);


// ========================================
// Internal wires
// ========================================

wire [7:0] arithmetic_result;
wire       arithmetic_carry;

wire [7:0] and_result;
wire [7:0] or_result;
wire [7:0] xor_result;
wire [7:0] nor_result;
wire [7:0] not_result;

wire [7:0] mux_result;

wire [7:0] registered_result;

wire subtract;


// ========================================
// SUBTRACT CONTROL
// ========================================

// OP = 000 → Addition
// OP = 001 → Subtraction

assign subtract = (OP == 3'b001);

// ========================================
// 8-bit Adder / Subtractor
// ========================================

adder_8bit ADDER(
    .a(A),
    .b(B),
    .sub(subtract),
    .sum(arithmetic_result),
    .cout(arithmetic_carry)
);


// ========================================
// Logic Unit
// ========================================

logic_unit LOGIC(
    .a(A),
    .b(B),

    .and_out(and_result),
    .or_out(or_result),
    .xor_out(xor_result),
    .nor_out(nor_result),
	    .not_out(not_result)
);


// ========================================
// 8-to-1 MUX
// ========================================

mux_8to1 MUX(
    .d0(arithmetic_result),   // 000 → A + B
    .d1(arithmetic_result),   // 001 → A - B
    .d2(xor_result),          // 010 → A XOR B
    .d3(nor_result),          // 011 → A NOR B
    .d4(not_result),          // 100 → NOT A
    .d5(and_result),          // 101 → A AND B
	     .d6(or_result),           // 110 → A OR B
    .d7(B),                   // 111 → B

    .sel(OP),

    .y(mux_result)
);


// ========================================
// 8-bit Register
// ========================================

register_8bit REG(
    .clk(clk),
    .reset(reset),
    .d(mux_result),
    .q(registered_result)
);


// ========================================
// Output
// ========================================

assign RESULT = registered_result;

assign CARRY = arithmetic_carry;


endmodule
