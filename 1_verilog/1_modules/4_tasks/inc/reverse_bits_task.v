task automatic reverse_bits_task;
   input   [7:0]  in;
   output  [7:0]  out;

   integer          idx;
   
   begin
      for (idx=0; idx<8; idx=idx+1) begin
         out[7-idx] = in[idx];
      end
   end
endtask