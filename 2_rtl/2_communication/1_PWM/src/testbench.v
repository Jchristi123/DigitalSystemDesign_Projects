`timescale 1ns/1ps

module testbench;
   reg clk;
   reg rst_n;
   reg [7:0] volume;
   reg [9:0] N;
   wire sout;
   
   integer clk_count = 0;

      always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 1000) begin
	 $finish;
      end
   end

   pwm_audio DUT (
      .clk(clk),
      .rst_n(rst_n),
      .volume(volume),
      .N(N),
      .sout(sout)
   );
   
  initial forever #10 clk = ~clk;

   initial begin
      clk = 0;
      rst_n = 1;
      volume = 8'b00000111;
      N = 40;
   end

   always @(posedge clk) begin
	 $write("clk: %d", clk_count);      
	 $write("\tsout: %d", sout);
	 $write("\tdc_count: %d", DUT.dc_count);
	 $write("\tf_count: %d", DUT.f_count);
	 $write("\n");
   end
  


endmodule // pwm_audio_testbench