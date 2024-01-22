`timescale 1ns/1ps


module testbench ();

   // DECLARE SIGNALS
   reg clk; // "reg" type signals are  controlled
   reg en;  // by the testbench
   reg d;

   wire q;  // "wire" type signals are controlled
            // by the module being tested
   
       
   // INSTANTIATE the DEVICE UNDER TEST (DUT)
   top_v DUT(
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
      if (clk_count == 8)
	$finish;
      
   end
   
   // CREATE STIMULI:
   always @(posedge clk) begin

      case(clk_count)
	2: begin
	   d <= 1;
	end
	5: begin
	   en <= 1;
	   d<=0;
	end
	8: begin
	   d<=1;
	end
      endcase // case (clk_count)
   end


   // WRITE OUTPUT TO CONSOLE:
   always @(posedge clk) begin
      $write("clk: %d",clk_count);      
      $write("\ten: %b", en);
      $write("\td: %b", d);
      $write("\tq: %b", q);
      $write("\n");      
   end

   
endmodule // testbench
