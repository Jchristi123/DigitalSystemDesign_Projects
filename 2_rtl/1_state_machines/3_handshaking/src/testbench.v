`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg  clk;
   reg 	rst;
   
   reg  ready;
   wire start;
   wire done;

   // State for the "ready" signal:
   reg  state;

   // Random timer for the "ready" signal:
   wire      t;
   random_timer rt1(.clk(clk),.t(t));
   
   
   integer clk_count = 0;   

   // RACE OFFICIAL 
   race_official starter
     (
      .clk(clk),
      .rst(rst),
      .rst_l(rst_l),
      .ready(ready),
      .start(start),
      .done(done)
      );
   
   // RACE OBSERVER
   race_observer finisher
     (
      .clk(clk),
      .rst(rst),
      .rst_l(rst_l),
      .start(start),
      .done(done)
      );
   

   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk   = 0;
      rst   = 0;  // start up in reset condition
      state = 0;      
      ready = 0;
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   

   // CREATE STIMULI:
   always @(posedge clk) begin
      // Control the reset behavior:
      if (!rst) begin
	 rst <= 1;
	 state <= 0;	 
      end
      else begin
	 case (state)
	   0: begin
	      if (!done && !start && t) begin
		 ready <= 1;
		 state <= 1;
	      end
	   end
	   1: begin
	      if (start) begin
		 ready <= 0;
		 state <= 0;
	      end
	   end
	 endcase // case (state)
	 
      end
   end

   

   

   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:  %3d", clk_count);      
      $write("\tready: %b", ready);
      $write("\tstart: %b", start);
      $write("\tdone:  %b", done);
      $write("\tstart_state: %d", starter.state);
      $write("\tdone_state: %d", finisher.state);
      $write("\n");
      
      $fwrite(fid,"clk:  %3d", clk_count);
      $fwrite(fid,"\tready: %b", ready);
      $fwrite(fid,"\tstart: %b", start);
      $fwrite(fid,"\tdone:  %b", done);
      $fwrite(fid,"\tstart_state: %d", starter.state);
      $fwrite(fid,"\tdone_state: %d", finisher.state);
      $fwrite(fid,"\n");
   end

   // DEFINE WHEN TO TERMINATE SIMULATION:
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 200) begin
	 $fclose(fid);
	 $finish;
      end
   end

   
endmodule // testbench
