`timescale 1ns/1ps

module decoder2_4(
    input [1:0] d,
    input en,
    output reg [3:0] o
    );
        always @(*) begin
    if(en)begin
    case (d)
        2'b00: o=4'd1;
        2'b01: o=4'd2;
        2'b10: o=4'd4;
        2'b11: o=4'd8;
    endcase
    end
    else
        o = 4'd0;
    end
endmodule