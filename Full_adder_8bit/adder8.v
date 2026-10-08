`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:16:44 09/18/2026 
// Design Name: 
// Module Name:    adder8 
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
module adder8(s,cout,a,b,cin);
input [7:0] a;
input [7:0] b;
input cin;
output [7:0] s;
output cout;

wire c1,c2,c3,c4,c5,c6,c7;

fulladd fa0(s[0],c1,a[0],b[0],cin);
fulladd fa1(s[1],c2,a[1],b[1],c1);
fulladd fa2(s[2],c3,a[2],b[2],c2);
fulladd fa3(s[3],c4,a[3],b[3],c3);
fulladd fa4(s[4],c5,a[4],b[4],c4);
fulladd fa5(s[5],c6,a[5],b[5],c5);
fulladd fa6(s[6],c7,a[6],b[6],c6);
fulladd fa7(s[7],cout,a[7],b[7],c7);

endmodule

//submodule for full adder

module fulladd(s,cout,a,b,cin);

output s;
output cout;
input a;
input b;
input cin;

xor (s,a,b,cin);

assign s = a ^ b ^ cin;
assign cout = (a&b) | (b&cin) | (a&cin);

endmodule
