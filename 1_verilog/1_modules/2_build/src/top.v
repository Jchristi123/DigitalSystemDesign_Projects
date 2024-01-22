module top_v(
                      input clk,
                      input en,
                      input d,
		      output reg q
                      );
wire _q;

simple_module SM1(
	.clk(clk),
	.en(en),
	.d(d),
	.q(_q)
);

always @(posedge clk) begin
	q <= _q;
end


endmodule
                          


