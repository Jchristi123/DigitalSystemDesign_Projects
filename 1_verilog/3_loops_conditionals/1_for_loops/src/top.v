`timescale 1ns/1ps

module top_v (
    input clk,  
    input load,
    input [7:0] a,
    output reg [3:0] q
);

reg [7:0] _a;
wire [3:0] _q;

add_bits add_bits_instance (
    .a(_a),
    .q(_q)
);

always@(posedge clk) begin
 q <= _q;

    if (load)
    begin
        _a <= a;
    end
end    

endmodule