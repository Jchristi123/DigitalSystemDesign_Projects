`timescale 1ns/1ps

module thermometer_encoder
  (
   input      [3:0]  a,
   output reg [14:0] q
   );

   integer 	    idx;
   
   always @(a) begin
      for (idx=0; idx<15; idx=idx+1) begin
	 if (idx < a)
	   q[idx] = 1;
	 else
	   q[idx] = 0;
      end
   end

endmodule // thermometer_decoder
