`timescale 1ns/1ps

module thermometer_decoder
  #(
    parameter K = 3,
    parameter W = 7   // 2^3 - 1
  )
  (
   input      [W-1:0] a,  // wide input
   output reg [K-1:0] q   // narrow output
   );

   integer         idx;  // loop index
   
   // ================================================
   // FOR and WHILE operations are BEHAVIORS, they
   // can go inside ALWAYS or INITIAL blocks
   // ================================================
   always @(a) begin   // This block is COMBINATIONAL
                       // (i.e. no clock) 
      idx = W-1;
      while ((a[idx-1] == 0)&&(idx > 0))
        idx = idx - 1;                    // BLOCKING
      q = idx;                            // ASSIGNMENTS
   end

endmodule // thermometer_decoder