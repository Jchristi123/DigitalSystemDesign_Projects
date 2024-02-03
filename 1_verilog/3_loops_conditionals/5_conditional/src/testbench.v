`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk; 
   reg a;  
   reg b;  
   reg en;
   wire q;

   
   integer clk_count = 0;   
   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      a   = 0;
      b   = 0;
      en  = 0;
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // CREATE STIMULI:
   always @(posedge clk) begin
      {en,a,b} <= clk_count;      
   end


   // Demonstrate the conditional operator:
   // always @(*) begin
   //    q = en ? a^b : 0;      
   // end

   assign q = en ? a^b : 0; 

   
   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:  %d", clk_count);      
      $write("\ta:  %b", a);
      $write("\tb:  %b", b);
      $write("\ten: %b", en);
      $write("\tq:  %b", q);
      $write("\n");
      
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\ta:  %b", a);
      $fwrite(fid,"\tb:  %b", b);
      $fwrite(fid,"\ten: %b", en);
      $fwrite(fid,"\tq:  %b", q);
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
