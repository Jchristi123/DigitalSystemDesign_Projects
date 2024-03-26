`timescale 1ns/1ps

module mux4_1(
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input [1:0] sel,
    output reg [3:0] y
);

always@(sel)
begin
    case(sel)
        2'b00: y = a;
        2'b01: y = b;
        2'b10: y = c;
        2'b11: y = d;
    endcase
end



endmodule