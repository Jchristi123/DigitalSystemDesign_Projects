`timescale 1ns/1ps

module pwm_0 (
  input clk,
  input wire [7:0] din,
  output reg sout
);

  reg [7:0] counter;

  initial begin
    counter = 0;
  end

  always @(posedge clk) begin
    if (counter < din) begin
      sout <= 1;
    end else begin
      sout <= 0;
    end

    if (counter == 255) begin
      counter <= 0;
    end else begin
      counter <= counter + 1;
    end
  end


endmodule
