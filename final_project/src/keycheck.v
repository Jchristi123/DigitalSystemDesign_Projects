`timescale 1ns/1ps

module keycheck(
    input [15:0] keys,
    output reg [3:0] a
);

initial begin
    a = 0;
end

integer i;

always@(keys)begin
for (i = 0; i < 16; i = i + 1) begin
    if (keys[i] == 1) begin
        a <= i;
    end
end
end



endmodule