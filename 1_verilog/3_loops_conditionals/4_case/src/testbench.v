`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg              clk;     
   reg signed [3:0] A;  
   reg signed [3:0] B;  
   reg        [1:0] sel;

   wire signed [3:0] Q;
   wire              overflow;
   
   integer clk_count = 0;   

   // DEVICE UNDER TEST
   arithmetic_unit DUT
     (
      .A(A),
      .B(B),
      .sel(sel),
      .Q(Q),
      .overflow(overflow)
      );
   

   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      A   = 0;
      B   = 0;
      sel = 0;      
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // CREATE STIMULI:
   always @(posedge clk) begin
      // Iterate through all possible values of A, B, and sel
      for (A = -8; A <= 7; A = A + 1) begin
         for (B = -8; B <= 7; B = B + 1) begin
            for (sel = 0; sel <= 1; sel = sel + 1) begin
               #10; // Wait for one clock cycle
               
               // Print the current test case
               $write("Test case: A=%d, B=%d, sel=%d\n", A, B, sel);
               
               // Perform the assignment and wait for one clock cycle
               // Assignments go here
               
               #10; // Wait for one clock cycle
            end
         end
      end
   end

   

   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:  %d", clk_count);      
      $write("\tsel: %b", sel);
      $write("\ta:  %d", A);
      $write("\tb:  %d", B);
      $write("\tq:  %d", Q);
      $write("\tov: %b", overflow);
      $write("\n");
      
      $fwrite(fid,"clk:  %d", clk_count);
      $fwrite(fid,"\tsel: %b", sel);
      $fwrite(fid,"\ta:  %d", A);
      $fwrite(fid,"\tb:  %d", B);
      $fwrite(fid,"\tq:  %d", Q);
      $fwrite(fid,"\tov: %b", overflow);
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
