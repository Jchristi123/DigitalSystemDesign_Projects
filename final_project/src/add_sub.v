`timescale 1ns/1ps
module add_sub (
    input clk,
    input [7:0] a,
    input [7:0] b,
    input up,
    input dn,
    input rst,
    output reg [7:0] q,
    output reg overflow
);

initial begin
    overflow = 0;
    q = 0;
end

always @(posedge clk) begin
    if (rst) begin
        overflow <= 0;
    end else begin
        if (up) begin
            if (a + b > 255) begin
                overflow <= 1;
            end else begin
                overflow <= 0;
                q <= a + b;
            end
        end else if (dn) begin
            if (a < b) begin
                overflow <= 1;
            end else begin
                overflow <= 0;
                q <= a - b;
            end
            
        end
    end
end
  


endmodule
