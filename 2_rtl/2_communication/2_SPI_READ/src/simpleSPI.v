`timescale 1ns/1ps

module simpleSPI
  (
   input         clk,
   input         rst_l,
   
   // SPI hardware ports:
   input         SDO,
   output reg        CS,
   output reg        SCLK,

   // Application handshaking ports:
   input         rd,
   output reg        d_ready,
   output reg [15:0] d
   );

   reg        t;          // timer signal
   reg        t_rst;      // reset the time
   reg [31:0] t_count;    // timer count
   reg [31:0] sclk_count; // sclk count
   
   reg [2:0] state;
   reg [3:0] bit_index;


   //-----------------------------------------
   // Initialization
   //-----------------------------------------
   initial begin
      state      = 0;
      t          = 0;
      t_rst      = 0;
      bit_index  = 0;
      t_count    = 0;
      sclk_count = 0;

      SCLK         = 0;
      CS           = 1;
      d            = 0;
      d_ready      = 0;
   end
   //-----------------------------------------

    //-----------------------------------------
   // Clock Divider for SCLK
   //-----------------------------------------
   always @(posedge clk, negedge rst_l) begin
      if (!rst_l) begin
     SCLK <= 0;
     sclk_count <= 0;    
      end
      else begin
     // COMPLETE THIS CONDITION: 
     if (sclk_count == 25) begin
        SCLK <= ~SCLK;
        sclk_count <= 0;
     end
     else begin
        sclk_count <= sclk_count + 1;
     end
      end
      end


   //-----------------------------------------
   // Alarm Timer Process
   //-----------------------------------------
   // Notice the sensitivity list includes
   // SCLK, not clk
   always @(posedge SCLK) begin
      if (t_rst) begin
     t  <= 0;
     t_count <= 0;
      end
      else begin
     // COMPLETE THIS CONDITION: 
     if (t_count == 10) begin
        t <= 1;
     end
     else begin
        // Increment t_count
        t_count <= t_count + 1;
     end
      end
   end
   //-----------------------------------------


//-----------------------------------------
   // State Machine
   //-----------------------------------------
   always @(posedge SCLK, negedge rst_l) begin
      if (!rst_l) begin
     state <= 0;     
      end
      else begin
     case (state)
       0: // RESET SPI BUS INTERFACE
         begin
            d_ready <= 0;
            CS <= 1;
            t_rst <= 1;
            state <= 1;
         end
       1: // INITIALIZE
         begin
            t_rst <= 0;
            state <= 2;
         end
       2: // WAIT FOR READ REQUEST
         begin
            if (t && rd)begin
                CS <= 0;
                bit_index <= 15;
                state <= 3;
            end
            else begin
            state <= 2;
            end
         end
       3: // READ FROM SPI BUS
         begin
            if (bit_index == 0)begin
                d[bit_index] <= SDO;
                d_ready <= 1;
                CS <= 1;
                state <= 4;
            end
            else if(bit_index > 0)begin
                d[bit_index] <= SDO;
                bit_index <= bit_index - 1;
            end
         end
       4: // WAIT FOR ACK (i.e. 'rd' goes LOW)
         begin
            if (rd == 0)begin
                d_ready <= 0;
                t_rst <= 1;
                state <= 1;
            end
            else begin
                state <= 4;
            end
         end
       default: // CATCH OOPS
         begin
        state <= 0;     
         end
     endcase // case (state)     
      end
   end
   //-----------------------------------------

     

endmodule // simpleSPI