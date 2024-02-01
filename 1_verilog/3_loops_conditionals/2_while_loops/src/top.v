module top 
   #(
      parameter K=3,
      parameter W=7
    )
    (
       input      [6:0] sw,
       input            sel,
       output reg [6:0] led    // reg (controlled by 'top')
    );


   // declare WIRE signals for encoder/decoder outputs
   wire [W-1:0]  _b;  // encoder output
   wire [K-1:0]  _c;  // decoder output

   
   // =========================================
   // STRUCTURAL Verilog (submodules)
   // =========================================
   thermometer_encoder TE1 (
                            .a(sw[K-1:0]),  // connect bottom 7 switches to input
                            .q(_b)          // output to _b
                           );  
   defparam TE1.K = K;
   defparam TE1.W = W;

   thermometer_decoder TD1 (
                            .a(sw),  // Connect all 7 switches to input 
                            .q(_c)   // output to _c
                           ); 
   defparam TD1.K = K;
   defparam TD1.W = W;


   // ================================================
   // BEHAVIORAL Verilog (actions controlled by top)
   // ================================================
   always @(*) begin
      if (! sel) begin
         led = _b;     // LEDs come from ENCODER output
      end   
      else begin
         led[K-1:0]   = _c;  // LEDs come from DECODER output
         led[W-1:K]   = 0;  // Unused LEDs go to zero
      end
   end
    
endmodule