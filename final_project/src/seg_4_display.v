`timescale 1ns/1ps

module seg_4_display(
    input clk,
    input rst_l,
    input [3:0] a1,
    input [3:0] a2,
    input [3:0] a3,
    input [3:0] a4,
    output [6:0] seg,
    output [3:0] ANout

);

wire mclk;
wire [3:0] in;
wire [3:0] AN;
reg [1:0] anode;
assign ANout = ~AN;

clock_divider #(.N(25000)) clock_divider_1(
    .clk(clk),
    .rst_l(rst_l),
    .div_clk(mclk)
);

decoder2_4 decoder2_4_1(
    .d(anode),
    .en(1'b1),
    .o(AN)
);

always@(posedge mclk) begin
    if (anode < 3)
        anode <= anode + 1;
    else
        anode <= 0;
end

mux4_1 mux4_1_1(
    .a(a1),
    .b(a2),
    .c(a3),
    .d(a4),
    .sel(anode),
    .y(in)
);

new_seven_seg new_seven_seg_1(
    .in(in),
    .seg(seg)
);

endmodule