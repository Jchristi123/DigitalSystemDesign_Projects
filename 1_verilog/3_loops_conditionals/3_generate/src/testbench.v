`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk;     
   reg [3:0] a;  
   reg [3:0] b;  
   reg       c_in;
   
   wire [3:0] s;
   wire       c_out;
   
   integer clk_count = 0;   
   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk  = 0;      
      a    = 0;
      b    = 0;
      c_in = 0;      
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // CREATE STIMULI:
   always @(posedge clk) begin
      // put your assignments here
      {a,b,c_in} <= clk_count;
   end

   adder DUT 
     (
      .a(a),
      .b(b),
      .c_in(c_in),
      .s(s),
      .c_out(c_out)
      );
   

   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:  %d", clk_count);      
      $write("\ta:  %d", a);
      $write("\tb:  %d", b);
      $write("\tc_in:  %b", c_in);
      $write("\ts: %d", s);
      $write("\tc_out: %b", c_out);
         $write("\t%b+%b+%b=%b+%b0",  // format string: a+b+c_in=s+c_out
          DUT.myadder[0].fa.a,  // submodule.generate_block.instance.signal
          DUT.myadder[0].fa.b,
          DUT.myadder[0].fa.c_in,
          DUT.myadder[0].fa.s,
          DUT.myadder[0].fa.c_out
         );      
            
      $write("\n");
      
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\ta:  %d", a);
      $fwrite(fid,"\tb:  %d", b);
      $fwrite(fid,"\tc_in:  %b", c_in);
      $fwrite(fid,"\ts: %d", s);
      $fwrite(fid,"\tc_out: %b", c_out);
         $fwrite(fid, "\t%b+%b+%b=%b+%b0",  // format string: a+b+c_in=s+c_out
          DUT.myadder[0].fa.a,  // submodule.generate_block.instance.signal
          DUT.myadder[0].fa.b,
          DUT.myadder[0].fa.c_in,
          DUT.myadder[0].fa.s,
          DUT.myadder[0].fa.c_out
         );
      
      $fwrite(fid,"\n");
   end

   // DEFINE WHEN TO TERMINATE SIMULATION:
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 2**9) begin
	 $fclose(fid);
	 $finish;
      end
   end

   
endmodule // testbench
