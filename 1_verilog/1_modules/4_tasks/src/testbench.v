`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk;     // "reg" type signals are  controlled
   reg [7:0] a;  // by the testbench
   reg [7:0] b;  // by the testbench

   wire [7:0] q;
   wire [7:0] w;

   integer clk_count = 0;   

   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      a   = 0;
      b   = 0;
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // CREATE STIMULI:
   always @(posedge clk) begin
      a <= $random();
      b <= $random();
   end

   
/*task automatic reverse_bits_task;
   input   [7:0]  in;
   output  [7:0]  out;

   integer          idx;
   
   begin
      for (idx=0; idx<8; idx=idx+1) begin
         out[7-idx] = in[idx];
      end
   end
endtask*/

   //integer idx;
   
   /*`include "inc/reverse_bits_task.v"
   always @(a,b) begin
      
	reverse_bits_task(.in(a),.out(q));
   reverse_bits_task(.in(b),.out(w));
   
   end*/

   reverse_bits_module RBM(
      .a(a),
      .b(b),
      .q(q),
      .w(w)
   );


   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:   %d",     clk_count);      
      $write("\ta:   %b->%b", a,q);
      $write("\tb:   %b->%b", b,w);
      $write("\n");
      
      $fwrite(fid,"clk:   %d",     clk_count);      
      $fwrite(fid,"\ta:   %b->%b", a,q);
      $fwrite(fid,"\tb:   %b->%b", b,w);
      $fwrite(fid,"\n");
   end

   // DEFINE WHEN TO TERMINATE SIMULATION:

   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 8) begin
	 $fclose(fid);
	 $finish;
      end
   end

   
   
endmodule // testbench
