`timescale 1ns/1ps

module reverse_bits_module
  (
   input [7:0]      a,
   input [7:0]      b,
   output reg [7:0] q,
   output reg [7:0] w
   );

`include "inc/reverse_bits_function.v"
   
   always @(a,b) begin
      q = reverse_bits_function(a);
      w = reverse_bits_function(b);
   end
   
endmodule