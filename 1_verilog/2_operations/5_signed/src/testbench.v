`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk;     // "reg" type signals are  controlled
   reg signed [7:0] a;  // by the testbench
   reg signed [7:0] b;  // by the testbench
   reg rst;
   reg up;
   reg dn;
   wire signed [7:0] q; 
   wire signed overflow;

   integer clk_count = 0;   
   
   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // CREATE STIMULI:
   // always @(posedge clk) begin
   //    a <= $random();
   //    b <= $random();
   // end


   // test overflow
   initial begin
   clk = 0;      
   a = 8'sd29;
   b = -8'sd17;
   up = 1;
   dn = 0;
   rst = 1;
   #15 rst = 0;
   end

   // test underflow
   // initial begin
   // clk = 0;      
   // a = 29;
   // b = -17;
   // up = 0;
   // dn = 1;
   // rst = 1;
   // #15 rst = 0;
   // end



  up_down_counter DUT (
      .clk(clk),
      .a(a),
      .b(b),
      .up(up),
      .dn(dn),
      .rst(rst),
      .q(q)
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
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\ta:  %b", a);
      $fwrite(fid,"\tb:  %b", b);
      $fwrite(fid,"\n");
end

   // DEFINE WHEN TO TERMINATE SIMULATION:
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 30) begin
	 $fclose(fid);
	 $finish;
      end
   end

   
endmodule // testbench


//ORIGINAL TESTBENCH
/*`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk;     
   reg signed [2:0] a;  
   reg signed   [3:0] b;  
   reg signed       [4:0] c;
   
   integer clk_count = 0;   
   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      a   = 0;
      b   = 0;
      c   = 0;
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;

   always @(a) begin
      b = a;
      c = b;
   end

   // CREATE STIMULI:
   always @(posedge clk) begin
      a <= a + 1;
   end

   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:  %d", clk_count);      
      $write("\ta:  %b(%d)", a,a);
      $write("\tb:  %b(%d)", b,b);
      $write("\tc:  %b(%d)", c,c);
      $write("\n");
      
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\ta:  %b(%d)", a,a);
      $fwrite(fid,"\tb:  %b(%d)", b,b);
      $fwrite(fid,"\tc:  %c(%d)", c,c);
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

   
endmodule // testbench*/
