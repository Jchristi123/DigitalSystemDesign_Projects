`timescale 1ns/1ps

module race_observer(
    input clk,
    input rst,
    input rst_l,
    input start,
    output reg done
);

reg [1:0] state;
wire t;

random_timer rt1 (.clk(clk), .t(t));


   always @(posedge clk, negedge rst) begin
      // ACTIVE-LOW RESET:
      if (!rst_l) begin
         state <= 0;
         done <= 0;
      end
      // NORMAL (NON-RESET) BEHAVIOR:
      else begin
         case (state)
           0: begin
                if (start) begin
                   done <= 0;
                   state <= 1;
                end
             end
           1: begin
                if (t) begin
                   done <= 1;
                   state <= 2;
                end
              end
           2: begin
                if (!start)begin
                   done <= 0;
                   state <= 0;
                end
           end  
           default: 
             begin
                done <= 0;
                state <= 0;
             end
         endcase
      end
   end   
   

endmodule