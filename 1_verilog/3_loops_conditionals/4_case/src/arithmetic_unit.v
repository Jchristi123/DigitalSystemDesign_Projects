`timescale 1ns/1ps

module arithmetic_unit 
(
   input signed  [3:0] A,
   input signed  [3:0] B,
   input      [1:0] sel, 
   output reg [3:0] Q,  
   output reg       overflow
);

   always @(*) begin
      case (sel)
         2'b00: // Place case 00 assignments here
           begin
            if (A[3] == B[3] && A[3] != 0) begin // Check if either of these statements are true then give Q overflow
                    overflow = 1;
            end
            if (Q[3] != A[3] && Q[3] != B[3]) begin // Check if the sign of Q is different from A and B
                    overflow = 1;
            end
            Q <= A + B;
           end
         2'b01: // Place case 01 assignments here
           begin
            if (A[3] != B[3] && A[3] == 0) begin // If B is bigger than A indicate overflow
                    overflow = 1;
            end
            Q = A - B;
           end
         2'b10:
           begin
              Q = A | B; // Place case 10 assignments here
              overflow = 0;
           end
         2'b11:
           begin
              Q = A & B; // Place case 11 assignments here
              overflow = 0;
           end
      endcase
   end

endmodule