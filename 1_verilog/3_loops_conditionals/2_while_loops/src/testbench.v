`timescale 1ns/1ps

// Use `defines for global parameters
`define K 5
`define W 2**`K-1

module testbench ();


   
      // DECLARE SIGNALS
      reg  clk;     
      reg  [`K-1:0]  a;  // Narrow encoder input REG
      wire [`W-1:0]  b;  // Wide encoder output WIRE
      wire [`K-1:0]  c;  // Narrow decoder output WIRE
    
      integer clk_count = 0;   

      //======================================
      // STRUCTURAL STATEMENTS" submodules, 
      // wire connections.
      //======================================
      thermometer_encoder TE1
        (
         .a(a),  // input: 'reg' controlled by testbench
         .q(b)   // output: 'wire' controlled by encoder
         );
      
      thermometer_decoder TD1
        (
         .a(b),  // input: 'wire' connected from encoder
         .q(c)   // output: 'wire' controlled by decoder
         );

      // Sub-module DEFPARAMS placed AFTER module instances:
      defparam TE1.K = `K;
      defparam TE1.W = `W;
      defparam TD1.K = `K;
      defparam TD1.W = `W;


      endmodule

   