`timescale 1ns/1ps

module top (
	    input 	clk,
	    input 	rst,
	    input 	D,
	    input 	E,
	    input 	G,
	    input 	A,
	    input [7:0] volume,
	    output reg 	AIN,
	    output reg 	GAIN,
	    output reg 	SHUTDOWN_L
		/*output  [15:0] LED,
		output [3:0] an,
		output [6:0] seg*/
	 );

	/*dim_leds DLED1 (
		.sys_clk(clk),
		.LED(LED),
		.an(an),
		.seg(seg)
	);*/

   wire 		rst_n;
   assign rst_n = ~rst;

   localparam no_btn = 0;
   localparam D_btn = 1;
   localparam E_btn = 2;
   localparam G_btn = 3;
   localparam A_btn = 4;

   reg [2:0] 		btn;
   reg [9:0] 		N;

   wire 		sout;
   
   pwm_audio PWM1 (
		   .clk(clk),
		   .rst_n(rst_n),
		   .volume(volume),
		   .N(N),
		   .sout(sout)
		   );

   initial begin
      	 btn        <= no_btn;
	 GAIN       <= 1;
	 SHUTDOWN_L <= 1;
	 AIN        <= 0;	 
   end

   
   always @(posedge clk, negedge rst_n) begin
      if (!rst_n) begin
	 btn        <= no_btn;
	 GAIN       <= 1;
	 SHUTDOWN_L <= 1;
	 AIN        <= 0;	 
      end
      else begin
	 if (btn == no_btn)
	   AIN <= 0;
	 else
	   AIN <= sout;
	 
	 case (btn)
	   no_btn: begin
	      if (D) begin
		 btn <= D_btn;
		 N   <= 665;
	      end
	      else if (E) begin
		 btn <= E_btn;
		 N   <= 593;
	      end
	      else if (G) begin
		 btn <= G_btn;
		 N   <= 498;
	      end
	      else if (A) begin
		 btn <= A_btn;
		 N   <= 747;
	      end
	   end
	   D_btn: begin
	      if (!D)
		btn <= no_btn;	      
	   end
	   E_btn: begin
	      if (!E)
		btn <= no_btn;	      
	   end
	   G_btn: begin
	      if (!G)
		btn <= no_btn;	      
	   end
	   A_btn: begin
	      if (!A)
		btn <= no_btn;	      
	   end
	 endcase 
      end
   end

   
endmodule
