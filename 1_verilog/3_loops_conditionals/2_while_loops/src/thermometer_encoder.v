`timescale 1ns/1ps

module thermometer_encoder
  #(
    parameter K = 3,
    parameter W = 7   // 2^3 - 1
  )
  (
   input      [K-1:0]  a,  // Narrow input
   output reg [W-1:0]  q   // Wide output
   );

   integer         idx;   // Loop index

   // ================================================
   // FOR and WHILE operations are BEHAVIORS, they
   // can go inside ALWAYS or INITIAL blocks
   // ================================================
   always @(a) begin   // This block is COMBINATIONAL
                       // (i.e. no clock) 
      for (idx=0; idx<W; idx=idx+1) begin
         if (idx < a)
            q[idx] = 1;  // BLOCKING ASSIGNMENT 
         else            // in COMBINATIONAL
            q[idx] = 0;  // context
      end
   end
   
endmodule // thermometer_decoder