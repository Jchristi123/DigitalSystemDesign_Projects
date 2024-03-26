`timescale 1ns/1ps


module decoder4_16(
    input [3:0] d,
    input en,
    output [15:0] o
    );
    wire en1, en2;
    
    assign en2 = en&~d[3];
    assign en1 = en&d[3];
    
    decoder3_8 low (
    .en(en1),
    .d(d[2:0]),
    .o(o[7:0]));
    
    decoder3_8 high (
    .en(en2),
    .d(d[2:0]),
    .o(o[15:8])
    );
    
endmodule