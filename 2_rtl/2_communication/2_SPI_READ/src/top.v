module top(
    input clk,
    input rst,
   // SPI hardware ports:
   input SDO,
   output CS,
   output SCLK,

   // Application handshaking ports:

    output [15:0] led
);

reg   rd;
wire  d_ready;
wire rst_l = ~rst;

simpleSPI SPI(
    .clk(clk),
    .rst_l(rst_l),
    .SDO(SDO),
    .SCLK(SCLK),
    .rd(rd),
    .d_ready(d_ready),
    .d(led),
    .CS(CS)
);

parameter refresh_period  = 40_000;

always@(negedge SCLK)begin
    if(d_ready == 0)begin
        rd <= 1;
    end
   else 
   rd <= 0;
end




endmodule