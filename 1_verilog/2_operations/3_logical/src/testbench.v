`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk;     // "reg" type signals are  controlled
   reg [7:0] a;  // by the testbench
   reg [7:0] b;  // by the testbench

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

   

   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:    %d", clk_count);      
      $write("\ta:    %b", a);
      $write("\tb:    %b", b);
      $write("\ta&&b: %b", a&&b);
      $write("\ta||b: %b", a||b);
      $write("\ta==b: %b", a==b);

      if ((a[3] == b[3]) && (a[2] != b[2]) || (|a == 0))
      $write(" condition met ");

      $write("\n");
      
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\ta:  %b", a);
      $fwrite(fid,"\tb:  %b", b);
      $fwrite(fid,"\ta&&b: %b", a&&b);
      $fwrite(fid,"\ta||b: %b", a||b);
      $fwrite(fid,"\ta==b: %b", a==b);   
      if ((a[3] == b[3]) && (a[2] != b[2]) || (|a == 0))
      $fwrite(fid, " condition met ");   
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
