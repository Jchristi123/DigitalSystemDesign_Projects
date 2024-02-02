// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Feb  1 20:00:02 2024
// Host        : genesys.bluezone.usu.edu running 64-bit unknown
// Command     : write_verilog -cell adder -force rtl-synth.v
// Design      : adder
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* N = "4" *) (* XLNX_LINE_COL = "460032" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module adder
   (a,
    b,
    c_in,
    s,
    c_out);
  input [3:0]a;
  input [3:0]b;
  input c_in;
  output [3:0]s;
  output c_out;

  wire [3:0]a;
  wire [3:0]b;
  wire c_1;
  wire c_2;
  wire c_3;
  wire c_in;
  wire c_out;
  wire [3:0]s;

  (* XLNX_LINE_COL = "1245696" *) 
  full_adder \myadder[0].fa 
       (.a(a[0]),
        .b(b[0]),
        .c_in(c_in),
        .c_out(c_1),
        .s(s[0]));
  (* XLNX_LINE_COL = "1245696" *) 
  full_adder \myadder[1].fa 
       (.a(a[1]),
        .b(b[1]),
        .c_in(c_1),
        .c_out(c_2),
        .s(s[1]));
  (* XLNX_LINE_COL = "1245696" *) 
  full_adder \myadder[2].fa 
       (.a(a[2]),
        .b(b[2]),
        .c_in(c_2),
        .c_out(c_3),
        .s(s[2]));
  (* XLNX_LINE_COL = "1245696" *) 
  full_adder \myadder[3].fa 
       (.a(a[3]),
        .b(b[3]),
        .c_in(c_3),
        .c_out(c_out),
        .s(s[3]));
endmodule

(* XLNX_LINE_COL = "461312" *) 
module full_adder
   (a,
    b,
    c_in,
    s,
    c_out);
  input a;
  input b;
  input c_in;
  output s;
  output c_out;

  wire a;
  wire b;
  wire c_in;
  wire c_out;
  wire c_out1;
  wire c_out1_i__0_n_0;
  wire c_out2;
  wire c_out2_i__0_n_0;
  wire s;
  wire s1;

  (* XLNX_LINE_COL = "2294016" *) 
  (* map_to_module = "2" *) 
  RTL_OR0 c_out0_i
       (.I0(c_out1),
        .I1(c_out1_i__0_n_0),
        .O(c_out));
  (* XLNX_LINE_COL = "1442048" *) 
  (* map_to_module = "3" *) 
  RTL_OR0 c_out1_i
       (.I0(c_out2),
        .I1(c_out2_i__0_n_0),
        .O(c_out1));
  (* XLNX_LINE_COL = "2621696" *) 
  (* map_to_module = "6" *) 
  RTL_AND c_out1_i__0
       (.I0(a),
        .I1(c_in),
        .O(c_out1_i__0_n_0));
  (* XLNX_LINE_COL = "1114368" *) 
  (* map_to_module = "4" *) 
  RTL_AND c_out2_i
       (.I0(a),
        .I1(b),
        .O(c_out2));
  (* XLNX_LINE_COL = "1769728" *) 
  (* map_to_module = "5" *) 
  RTL_AND c_out2_i__0
       (.I0(b),
        .I1(c_in),
        .O(c_out2_i__0_n_0));
  (* XLNX_LINE_COL = "1442048" *) 
  (* map_to_module = "0" *) 
  RTL_XOR0 s0_i
       (.I0(s1),
        .I1(c_in),
        .O(s));
  (* XLNX_LINE_COL = "1114368" *) 
  (* map_to_module = "1" *) 
  RTL_XOR0 s1_i
       (.I0(a),
        .I1(b),
        .O(s1));
endmodule
