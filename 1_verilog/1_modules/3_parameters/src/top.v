`timescale 1ns/1ps


module top (
	    input       clk,
	    input [3:0] a,
	    input [3:0] b,
	    input [3:0] c,
	    input [3:0] d,

	    output[5:0] sum
	    );

   wire [4:0] 		a_plus_b;
   wire [4:0] 		c_plus_d;

   simple_adder #(.W(4)) SA1
     (
      .clk(clk),
      .a(a),
      .b(b),
      .sum(a_plus_b)
      );

   simple_adder #(.W(4)) SA2
     (
      .clk(clk),
      .a(c),
      .b(d),
      .sum(c_plus_d)
      );

   //===============================//
   // FINISH THIS INSTANCE          //
   //===============================//
   simple_adder #(.W(5)) SA3
     (
      .clk(clk),
      .a(a_plus_b),
      .b(c_plus_d),
      .sum(sum)
      );
   //===============================//

endmodule // top

   
