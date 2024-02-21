`timescale 1ns/1ps

module keyboard_audio (
    //PWM_audio module
       input   clk,
       input   rst,
       input   btn1,
       input [7:0] volume,
       output reg    led,
       output reg    AIN,
       output reg    GAIN,
       output reg    SHUTDOWN_L,
    
    //Keypad module
        input  [3:0]  row,
        output [3:0]  col
    );

    //Debouncer module
   wire       btn_db;
   wire       rst_l;
   reg       shutdown;
   assign rst_l = ~rst;

   initial begin
      led <= 0;
   end

   debouncer db1
     (
      .clk(clk),
      .rst_l(rst_l),
      .btn(btn1),
      .btn_db(btn_db)
      );

   always @(posedge clk, negedge rst_l) begin
      if (!rst_l) begin
        led <= 0;
      end
      // Toggle led and shutdown
      else begin
        if (btn_db) begin
          led <= ~led;
          shutdown <= led;
        end
      end
   end

   wire rst_n;
   assign rst_n = ~rst;

   wire [15:0] keypad;
   reg [9:0] N;

   wire sout;
   
   pwm_audio PWM1 (
         .clk(clk),
         .rst_n(rst_l),
         .volume(volume),
         .N(N),
         .sout(sout)
         );

   initial begin
    GAIN       <= 1;
    SHUTDOWN_L <= 1;
    AIN        <= 0;  
   end

   
   always @(posedge clk) begin
      if (!rst_n) begin
    GAIN       <= 1;
    SHUTDOWN_L <= 1;
    AIN        <= 0;  
      end
   if (!shutdown && (keypad != 0)) begin
      AIN <= sout;
   end
    else begin
      AIN <= 0;
    end
    
    case (keypad)
      1: begin
          N <= 747;
      end
      2: begin
          N <= 665;
      end
      4: begin
         N <= 559;
         end
      8: begin
         N <= 498;
         end
      16: begin
       N <= 471;
         end
      32: begin
       N <= 444;
         end
      64: begin 
         N <= 395;
         end
      128: begin
         N <= 373;
         end
      256: begin
         N <= 332;
         end
      512: begin
         N   <= 296;
         end
    1024: begin
         N <= 264;
         end
     2048: begin
         N <= 236;
         end
      5096: begin
         N  <= 222;
         end
     10192: begin
         N <= 198;
         end
      20384: begin
         N <= 177;
         end
      40768: begin
         N <= 166;
         end
      default: begin
         N <= 0;
      end
    endcase 
      end


//Keypad module
   keypad #(.N(300_000)) kypd
     (
      .clk(clk),
      .rst_l(rst_l),
      .row(row),
      .col(col),
      .keys(keypad)
      );
   
endmodule