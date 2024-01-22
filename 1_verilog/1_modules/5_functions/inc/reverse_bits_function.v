 function [7:0] reverse_bits_function;
      
      input [7:0] in;
      
      integer     idx;
      begin
        for (idx=0; idx<8; idx=idx+1)
           reverse_bits_function[7-idx] = in[idx];
      end
   endfunction