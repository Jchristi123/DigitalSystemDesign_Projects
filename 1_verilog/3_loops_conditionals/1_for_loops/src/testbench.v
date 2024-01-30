`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk;      // "reg" signals are  controlled
   reg [7:0] a;  // by the testbench
   reg [7:0] b;  

   integer clk_count = 0;   
   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      a   = 0;
      b   = 0;
   end

   wire [3:0] q;

   top_v DUT (
       .clk(clk),
       .load(1'b1),
       .a(a),
       .q(q)
   );
   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // CREATE STIMULI:
   always @(posedge clk) begin
      a <= $random();
      b <= $random();
   end

   

   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:  %d", clk_count);      
      $write("\ta:  %b", a);
      $write("\tb:  %b", b);
      $write("\tq:  %b", q);
      $write("\n");
      
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\ta:  %b", a);
      $fwrite(fid,"\tb:  %b", b);
      $fwrite(fid, "\tq:  %b", q);
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
