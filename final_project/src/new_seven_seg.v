`timescale 1ns/1ps

module new_seven_seg(
   input [3:0] in,
   output [6:0] seg

);

wire [15:0] d;

decoder4_16 decoder4_16_1(
    .d(in),
    .en(1),
    .o(d)
);
    assign seg[0] = ~|(d & 16'hb7eb);
    assign seg[1] = ~|(d & 16'hf9e4);
    assign seg[2] = ~|(d & 16'hdff4);
    assign seg[3] = ~|(d & 16'hb6de);
    assign seg[4] = ~|(d & 16'ha2bf);
    assign seg[5] = ~|(d & 16'h8efb);
    assign seg[6] = ~|(d & 16'h3ef7);


endmodule