`timescale 1ns/1ps

// This module uses behavioral Verilog.
//
// Behavior:
//    If "en" (enable) is 1, then input d is 
//    written to output q with a one-cycle delay.
//
//    If "en" is 0, then q is reset to 0 with
//    a one-cycle delay.
//      
module simple_module (
		      input clk,
		      input en,
		      input d,
		      output reg q
		      );
initial begin
	q = 0;
end

   always @(posedge clk) begin
      if (en)
	q <= d;   // NON-BLOCKING ASSIGNMENT specifies D Flip Flop
      else        // The flip-flop creates a one-cycle delay before
	q <= q^d;   // q is changed
   end
endmodule // simple_module
