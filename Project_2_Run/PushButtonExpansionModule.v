`timescale 1ns / 1ps

// Push Button Module demo code
// Numato Lab
// http://www.numato.com
// http://www.numato.cc
// License : CC BY-SA (http://creativecommons.org/licenses/by-sa/2.0/)

module PushButtonExpansionModule(

  // Assuming 100MHz input clock. My need to adjust the counter below
  // if any other input frequency is used
    input Clk,
	 
  // Inputs from the Push Buttons.When a Switch is pressed it is pull down to zero otherwise it's in pull up state
    input [3:0]SW,
  
  // Output is shown on LED with different functionality.
    output reg [7:0]LED  
    );

// Register used internally	
reg [24:0]count;
reg enable;

// Provide the initial value to give a kick start.
initial 
  begin
    LED = 8'h01;
  end
  
// Scale down the clock so that output is easily visible.
always @(posedge Clk) begin
  count <= count+1'b1;
  enable <= count[24];
end  

// On every rising edge of enable check for the Push Button input.
always @(posedge enable)
   begin
     LED <= !SW[0] ? 8'd1   :  
	         !SW[1] ? 8'd2   :
				!SW[2] ? 8'd4   :
				!SW[3] ? 8'd8   :
				{LED[0],LED[7:1]};
   end
endmodule
