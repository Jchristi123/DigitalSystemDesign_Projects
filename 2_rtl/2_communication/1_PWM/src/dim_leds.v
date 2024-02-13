`timescale 1ns / 1ps

module dim_leds(
    input         sys_clk,
    output [15:0] LED,
    output [3:0]  an,
    output [6:0]  seg
    );
    
    // PWM signals
    reg [7:0] din;
    wire      sout;

    // Signals for clock divider:
    integer   count;
    reg       div_clk;
 
    // State variable:
    reg       count_up; // brighten (1) or dim (0)
   
    // Assign all LEDs to equal the PWM signal
    assign LED = {16{sout}};

    // Instantiate the PWM:
    pwm_0 MOD1(
        .clk(sys_clk),
        .din(din),
        .sout(sout)
     );
     
    // Initialize reg signals
    initial begin
        din = 0;
        count = 0;
        count_up = 1;
    end
    

// Implement a clock divider:
    always @(posedge sys_clk) begin
        if (count >= 500_000) begin
            count <= 0;
            div_clk <= ~div_clk;
        end
        else 
            count <= count + 1;
    end
    
    // Main brighten/dim process:
    always @(posedge div_clk) begin
        // Adjust the PWM brightness level
        if (count_up)
           din <= din + 1;
        else
           din <= din - 1;       
           
       // If we've reach maximum brightness, start dimming.
       // If we've reached minimum brightness, start brightening.
       if ((count_up)&&(din == 254)) 
          count_up <= 0;            
       else if ((~count_up)&&(din==1))
          count_up <= 1;
    end
endmodule