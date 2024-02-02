// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Feb  2 14:37:47 2024
// Host        : genesys.bluezone.usu.edu running 64-bit unknown
// Command     : write_verilog -force post_synth.v
// Design      : arithmetic_unit
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module arithmetic_unit
   (A,
    B,
    sel,
    Q,
    overflow);
  input [3:0]A;
  input [3:0]B;
  input [1:0]sel;
  output [3:0]Q;
  output overflow;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire GND_1;
  wire [3:0]Q;
  wire [3:0]Q_OBUF;
  wire \Q_OBUF[2]_inst_i_2_n_0 ;
  wire VCC_1;
  wire overflow;
  wire overflow_OBUF;
  wire overflow_reg_i_1_n_0;
  wire overflow_reg_i_2_n_0;
  wire [3:3]p_1_in;
  wire [1:0]sel;
  wire [1:0]sel_IBUF;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  GND GND
       (.G(GND_1));
  OBUF \Q_OBUF[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]));
  LUT4 #(
    .INIT(16'h86E6)) 
    \Q_OBUF[0]_inst_i_1 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(Q_OBUF[0]));
  OBUF \Q_OBUF[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]));
  LUT6 #(
    .INIT(64'hF0002DD2FFF08778)) 
    \Q_OBUF[1]_inst_i_1 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[1]),
        .I4(sel_IBUF[1]),
        .I5(sel_IBUF[0]),
        .O(Q_OBUF[1]));
  OBUF \Q_OBUF[2]_inst 
       (.I(Q_OBUF[2]),
        .O(Q[2]));
  LUT5 #(
    .INIT(32'hC069FC96)) 
    \Q_OBUF[2]_inst_i_1 
       (.I0(\Q_OBUF[2]_inst_i_2_n_0 ),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[2]),
        .I3(sel_IBUF[1]),
        .I4(sel_IBUF[0]),
        .O(Q_OBUF[2]));
  LUT5 #(
    .INIT(32'hBE28B8B8)) 
    \Q_OBUF[2]_inst_i_2 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .I2(sel_IBUF[0]),
        .I3(A_IBUF[0]),
        .I4(B_IBUF[0]),
        .O(\Q_OBUF[2]_inst_i_2_n_0 ));
  OBUF \Q_OBUF[3]_inst 
       (.I(Q_OBUF[3]),
        .O(Q[3]));
  LUT5 #(
    .INIT(32'hC0AAFCAA)) 
    \Q_OBUF[3]_inst_i_1 
       (.I0(p_1_in),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[3]),
        .I3(sel_IBUF[1]),
        .I4(sel_IBUF[0]),
        .O(Q_OBUF[3]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \Q_OBUF[3]_inst_i_2 
       (.I0(\Q_OBUF[2]_inst_i_2_n_0 ),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[2]),
        .I3(A_IBUF[3]),
        .I4(sel_IBUF[0]),
        .I5(B_IBUF[3]),
        .O(p_1_in));
  VCC VCC
       (.P(VCC_1));
  OBUF overflow_OBUF_inst
       (.I(overflow_OBUF),
        .O(overflow));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    overflow_reg
       (.CLR(GND_1),
        .D(overflow_reg_i_1_n_0),
        .G(overflow_reg_i_2_n_0),
        .GE(VCC_1),
        .Q(overflow_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000CC2)) 
    overflow_reg_i_1
       (.I0(p_1_in),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[3]),
        .I3(sel_IBUF[0]),
        .I4(sel_IBUF[1]),
        .O(overflow_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDECDDECC)) 
    overflow_reg_i_2
       (.I0(sel_IBUF[0]),
        .I1(sel_IBUF[1]),
        .I2(A_IBUF[3]),
        .I3(B_IBUF[3]),
        .I4(p_1_in),
        .O(overflow_reg_i_2_n_0));
  IBUF \sel_IBUF[0]_inst 
       (.I(sel[0]),
        .O(sel_IBUF[0]));
  IBUF \sel_IBUF[1]_inst 
       (.I(sel[1]),
        .O(sel_IBUF[1]));
endmodule
