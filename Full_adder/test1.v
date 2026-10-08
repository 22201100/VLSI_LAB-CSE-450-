`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:43:24 09/17/2026
// Design Name:   Full_adder1
// Module Name:   /home/ise/Full_adder/test1.v
// Project Name:  Full_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_adder1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg x;
	reg y;
	reg z;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	Full_adder1 uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		z = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
      x = 0;
		y = 0;
		z = 1;

		// Wait 100 ns for global reset to finish
		#100;

      x = 0;
		y = 1;
		z = 0;

		// Wait 100 ns for global reset to finish
		#100;
		x = 0;
		y = 1;
		z = 1;

		// Wait 100 ns for global reset to finish
		#100;
		x = 1;
		y = 0;
		z = 0;

		// Wait 100 ns for global reset to finish
		#100;
		x = 1;
		y = 0;
		z = 1;

		// Wait 100 ns for global reset to finish
		#100;
		x = 1;
		y = 1;
		z = 0;

		// Wait 100 ns for global reset to finish
		#100;
		x = 1;
		y = 1;
		z = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

