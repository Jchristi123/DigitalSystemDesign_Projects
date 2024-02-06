`timescale 1ns/1ps

module top
  (
   input      clk,
   input      btn,
   input      rst,     
   output reg led
   );

   wire       btn_db;
   wire       rst_l;

   assign rst_l = ~rst;
   
   initial begin
      led = 0;
   end
   
   debouncer db1
     (
      .clk(clk),
      .rst_l(rst_l),
      .btn(btn),
      .btn_db(btn_db)
      );

   always @(posedge clk, negedge rst_l) begin
      if (!rst_l) begin
        led <= 0;
      end
      // Toggle the LED if the button is pressed:
      else begin
        if (btn_db)
          led <= ~led;        
      end
   end

endmodule // top