`timescale 1ns/1ps


module testbench ();

   // DECLARE SIGNALS
   reg clk; // "reg" type signals are  controlled
   reg en;  // by the testbench
   reg d;

   wire q;  // "wire" type signals are controlled
            // by the module being tested
   
       
   // INSTANTIATE the DEVICE UNDER TEST (DUT)
   simple_module DUT(
		      .clk(clk),
		      .en(en),
		      .d(d),
		      .q(q)
		     );

   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      en  = 0;
      d   = 0;      
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // DEFINE WHEN TO TERMINATE SIMULATION:
   integer clk_count = 0;   
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 10)
	$finish;
      
   end
   
   // CREATE STIMULI:
   always @(posedge clk) begin
      
      // A simple state machine that cycles through
      // all input values:

      /* if ({en,d} == 2'b00)  // {en,d} CONCATENATES en,d into
	{en,d} <= 2'b01;    // a 2-bit vector
      else if ({en,d} == 2'b01)
	{en,d} <= 2'b10;
      else if ({en,d} == 2'b10)
	{en,d} <= 2'b11;
      else if ({en,d} == 2'b11)
	{en,d} <= 2'b00; */ 

	en <= d;
       d <= ~en;      
   end 

   // WRITE OUTPUT TO CONSOLE:
integer fid;
initial fid = $fopen("test_result.txt","w");

   always @(posedge clk) begin
      $fwrite(fid,"clk: %d",clk_count);      
      $fwrite(fid,"\ten: %b", en);
      $fwrite(fid,"\td: %b", d);
      $fwrite(fid,"\tq: %b", q);
      $fwrite(fid,"\n");      
   end

   
endmodule // testbench
