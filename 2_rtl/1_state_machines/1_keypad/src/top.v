`timescale 1ns/1ps

module top
  (
   input         clk,
   input         rst,
   input  [3:0]  row,
   output [3:0]  col,
   output [15:0] keys
   );

   wire       rst_l;
   assign rst_l = ~rst;

   keypad #(.N(300_000)) kypd
     (
      .clk(clk),
      .rst_l(rst_l),
      .row(row),
      .col(col),
      .keys(keys)
      );
   

endmodule // top