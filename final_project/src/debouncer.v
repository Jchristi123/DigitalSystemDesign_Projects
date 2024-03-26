`timescale 1ns/1ps

module debouncer
   (
      input clk,
      input rst_l,
      input btn,
      output reg btn_db
   );

   reg [1:0] state;
   reg       clear;
   
   wire      t;

   localparam WAIT    = 0;
   localparam PRESS   = 1;
   localparam RELEASE = 2;

   tcounter T1
      (
         .clk(clk),
	 .rst_l(rst_l),
	 .clear(clear),
	 .done(t)
      );

   initial begin
      state  = WAIT;
      clear  = 1;
      btn_db = 0;
   end

   always @(posedge clk, negedge rst_l) begin
      if (!rst_l) begin
         state  <= WAIT;
	 clear  <= 1;
	 btn_db <= 0;
      end
      else begin
         case (state)
	    WAIT:
               begin
	          btn_db <= 0;
		  if (btn) begin
		     state <= PRESS;
		     clear <= 0;
		  end
		  else
		     clear <= 1;
	       end
	    PRESS:
	       begin
	          // YOU DO THIS
		  if (!btn && !t) begin
	             state <= WAIT;
		     clear <= 1;
		  end
		  else if (!btn && t) begin
		     state <= RELEASE;
		     btn_db <= 1;
		     clear <= 1;
		  end
		  else if (btn && !t) begin
		     clear <= 0;
		  end
	       end
	    RELEASE:
	       begin
		  // $display("yup");
		  // YOU DO THIS
	          if (!t || clear) begin
		     clear <= 0;
		     btn_db <= 0;
		  end
		  if (t && !clear) begin
	             state <= WAIT;
		     btn_db <= 0;
		  end
	       end
	    default:
               begin
	          btn_db <= 0;
		  clear  <= 1;
		  state  <= WAIT;
	       end
	  endcase
       end
    end
 endmodule







