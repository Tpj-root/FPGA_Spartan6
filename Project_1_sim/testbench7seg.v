`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:05:46 12/07/2024
// Design Name:   s7seg
// Module Name:   /home/sab/Documents/xli/SevenSeg/testbench7seg.v
// Project Name:  SevenSeg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: s7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench7seg;

	// Inputs
	reg [3:0] bcd;
	// Outputs
	wire [6:0] seg;
   integer i;
	// Instantiate the Unit Under Test (UUT)
	s7seg uut (
		.bcd(bcd), 
		.seg(seg)
	);

    initial begin
        for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
            bcd = i; 
            #10; //wait for 10 ns
        end     
    end
      
endmodule

