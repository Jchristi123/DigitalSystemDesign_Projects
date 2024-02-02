`timescale 1ns/1ps

module full_adder
  (
      input      a,
      input      b,
      input      c_in,
      output reg s,
      output reg c_out
   );

   always @(*) begin
      s     = (a ^ b) ^ c_in;                     // sum
      c_out = (a & b) | (b & c_in) | (a & c_in);  // carry bit 
   end
endmodule