`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk;     // "reg" type signals are  controlled
   reg [7:0] a;  // by the testbench
   reg [7:0] b;  // by the testbench
   reg rst;
   reg up;
   reg dn;
   wire [7:0] q; 
   wire overflow;

   integer clk_count = 0;   
   
   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // CREATE STIMULI:
   // always @(posedge clk) begin
   //    a <= $random();
   //    b <= $random();
   // end


   // test overflow
   // initial begin
   // clk = 0;      
   // a = 250;
   // b = 10;
   // up = 1;
   // dn = 0;
   // rst = 1;
   // #15 rst = 0;
   // end

   // test underflow
   initial begin
   clk = 0;      
   a = 5;
   b = 10;
   up = 0;
   dn = 1;
   rst = 1;
   #15 rst = 0;
   end



  up_down_counter DUT (
      .clk(clk),
      .a(a),
      .b(b),
      .up(up),
      .dn(dn),
      .rst(rst),
      .q(q),
      .overflow(overflow)
      
   );

   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:  %d", clk_count);      
      $write("\ta:  %b", a);
      $write("\tb:  %b", b);
      $write("\tq:  %b", q);
      $write("\n");
      //if (overflow) $display("Overflow occurred");
      if (overflow) $display("Underflow occurred");
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\ta:  %b", a);
      $fwrite(fid,"\tb:  %b", b);
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
