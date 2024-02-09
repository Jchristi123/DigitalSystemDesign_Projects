`timescale 1ns/1ps

module random_timer
(
   input clk,
   output reg t
);

reg [1:0] r; // random number

always @(posedge clk) begin
   r <= $random();
   if (r == 0)
       t <= 1;
   else
       t <= 0;
end
endmodule