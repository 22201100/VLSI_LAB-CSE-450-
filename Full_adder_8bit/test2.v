`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:55:37 09/18/2026
// Design Name:   adder8
// Module Name:   /home/ise/Full_adder_8bit/test2.v
// Project Name:  Full_adder_8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test2;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	// Outputs
	wire [7:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	adder8 uut (
		.s(s), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.cin(cin)
	);

initial begin

    // Initialize Inputs
    a = 0;
    b = 0;
    cin = 0;

    #100;        

		// Add stimulus here

    a = 8'b00000001;
    b = 8'b00000001;
    cin = 1'b0;
    #100;

    a = 8'b00000101;
    b = 8'b00000011;
    cin = 1'b0;
    #100;

    a = 8'b00001111;
    b = 8'b00000001;
    cin = 1'b0;
    #100;
	 
	  a = 8'b11111111;
    b = 8'b00000001;
    cin = 1'b0;
    #100;

    a = 8'b00000101;
    b = 8'b00000011;
    cin = 1'b1;
    #100;

    a = 8'b11111111;
    b = 8'b11111111;
    cin = 1'b1;
    #100;
	 
	end
      
endmodule

