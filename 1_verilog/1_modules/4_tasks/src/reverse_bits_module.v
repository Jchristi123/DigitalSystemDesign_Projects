`timescale 1ns/1ps

module reverse_bits_module
  (
   input [7:0]      a,
   input [7:0]      b,
   output reg [7:0] q,
   output reg [7:0] w
   );

`include "inc/reverse_bits_task.v"
   
   always @(a,b) begin
      reverse_bits_task(a,q);
      reverse_bits_task(b,w);
   end
   
endmodule