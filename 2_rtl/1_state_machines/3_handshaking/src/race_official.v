`timescale 1ns/1ps

module race_official
(
   input      clk,
   input      rst,
   input      rst_l,    
   input      ready,
   input      done,
   output reg start
);

   reg [1:0] state;

   always @(posedge clk, negedge rst) begin
      // ACTIVE-LOW RESET:
      if (!rst_l) begin
         state <= 0;
         start <= 0;
      end
      // NORMAL (NON-RESET) BEHAVIOR:
      else begin
         case (state)
           0: begin
                if (ready) begin
                   start <= 1;
                   state <= 1;
                end
                else 
                   start <= 0;
             end
           1: begin
                if (done) begin
                   start <= 0;
                   state <= 2;
                end
              end
           2: begin
                if (!done && !ready) 
                   state <= 0;
                end
           default: 
             begin
                start <= 0;
                state <= 0;
             end
         endcase
      end
   end   

endmodule