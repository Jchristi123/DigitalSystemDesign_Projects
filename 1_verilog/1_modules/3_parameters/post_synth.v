// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Jan 21 19:22:42 2024
// Host        : genesys.bluezone.usu.edu running 64-bit unknown
// Command     : write_verilog -force post_synth.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module simple_adder
   (Q,
    a_IBUF,
    b_IBUF,
    CLK);
  output [4:0]Q;
  input [3:0]a_IBUF;
  input [3:0]b_IBUF;
  input CLK;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [4:0]Q;
  wire [3:0]a_IBUF;
  wire [3:0]b_IBUF;
  wire [4:0]p_0_in;
  wire \sum[4]_i_2_n_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sum[0]_i_1 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \sum[1]_i_1 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \sum[2]_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .I2(a_IBUF[1]),
        .I3(b_IBUF[1]),
        .I4(b_IBUF[2]),
        .I5(a_IBUF[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum[3]_i_1 
       (.I0(\sum[4]_i_2_n_0 ),
        .I1(b_IBUF[3]),
        .I2(a_IBUF[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum[4]_i_1 
       (.I0(b_IBUF[3]),
        .I1(a_IBUF[3]),
        .I2(\sum[4]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \sum[4]_i_2 
       (.I0(b_IBUF[2]),
        .I1(a_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(a_IBUF[0]),
        .I4(a_IBUF[1]),
        .I5(b_IBUF[1]),
        .O(\sum[4]_i_2_n_0 ));
  FDRE \sum_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \sum_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \sum_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \sum_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE \sum_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "simple_adder" *) 
module simple_adder_0
   (Q,
    c_IBUF,
    d_IBUF,
    CLK);
  output [4:0]Q;
  input [3:0]c_IBUF;
  input [3:0]d_IBUF;
  input CLK;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [4:0]Q;
  wire [3:0]c_IBUF;
  wire [3:0]d_IBUF;
  wire \sum[0]_i_1_n_0 ;
  wire \sum[1]_i_1_n_0 ;
  wire \sum[2]_i_1_n_0 ;
  wire \sum[3]_i_1_n_0 ;
  wire \sum[4]_i_1_n_0 ;
  wire \sum[4]_i_2_n_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sum[0]_i_1 
       (.I0(c_IBUF[0]),
        .I1(d_IBUF[0]),
        .O(\sum[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \sum[1]_i_1 
       (.I0(c_IBUF[0]),
        .I1(d_IBUF[0]),
        .I2(d_IBUF[1]),
        .I3(c_IBUF[1]),
        .O(\sum[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \sum[2]_i_1 
       (.I0(d_IBUF[0]),
        .I1(c_IBUF[0]),
        .I2(c_IBUF[1]),
        .I3(d_IBUF[1]),
        .I4(d_IBUF[2]),
        .I5(c_IBUF[2]),
        .O(\sum[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum[3]_i_1 
       (.I0(\sum[4]_i_2_n_0 ),
        .I1(d_IBUF[3]),
        .I2(c_IBUF[3]),
        .O(\sum[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum[4]_i_1 
       (.I0(d_IBUF[3]),
        .I1(c_IBUF[3]),
        .I2(\sum[4]_i_2_n_0 ),
        .O(\sum[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \sum[4]_i_2 
       (.I0(d_IBUF[2]),
        .I1(c_IBUF[2]),
        .I2(d_IBUF[0]),
        .I3(c_IBUF[0]),
        .I4(c_IBUF[1]),
        .I5(d_IBUF[1]),
        .O(\sum[4]_i_2_n_0 ));
  FDRE \sum_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\sum[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \sum_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\sum[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \sum_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\sum[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \sum_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\sum[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE \sum_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\sum[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "simple_adder" *) 
module simple_adder__parameterized0
   (\sum_reg[5]_0 ,
    Q,
    \sum_reg[5]_1 ,
    clk);
  output [5:0]\sum_reg[5]_0 ;
  input [4:0]Q;
  input [4:0]\sum_reg[5]_1 ;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [4:0]Q;
  wire clk;
  wire \sum[0]_i_1_n_0 ;
  wire \sum[1]_i_1_n_0 ;
  wire \sum[2]_i_1_n_0 ;
  wire \sum[3]_i_1_n_0 ;
  wire \sum[4]_i_1_n_0 ;
  wire \sum[5]_i_1_n_0 ;
  wire \sum[5]_i_2_n_0 ;
  wire [5:0]\sum_reg[5]_0 ;
  wire [4:0]\sum_reg[5]_1 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sum[0]_i_1 
       (.I0(Q[0]),
        .I1(\sum_reg[5]_1 [0]),
        .O(\sum[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \sum[1]_i_1 
       (.I0(Q[0]),
        .I1(\sum_reg[5]_1 [0]),
        .I2(\sum_reg[5]_1 [1]),
        .I3(Q[1]),
        .O(\sum[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \sum[2]_i_1 
       (.I0(\sum_reg[5]_1 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\sum_reg[5]_1 [1]),
        .I4(\sum_reg[5]_1 [2]),
        .I5(Q[2]),
        .O(\sum[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[3]_i_1 
       (.I0(\sum[5]_i_2_n_0 ),
        .I1(\sum_reg[5]_1 [3]),
        .I2(Q[3]),
        .O(\sum[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sum[4]_i_1 
       (.I0(\sum[5]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\sum_reg[5]_1 [3]),
        .I3(\sum_reg[5]_1 [4]),
        .I4(Q[4]),
        .O(\sum[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum[5]_i_1 
       (.I0(\sum_reg[5]_1 [4]),
        .I1(Q[4]),
        .I2(\sum[5]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(\sum_reg[5]_1 [3]),
        .O(\sum[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \sum[5]_i_2 
       (.I0(\sum_reg[5]_1 [2]),
        .I1(Q[2]),
        .I2(\sum_reg[5]_1 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\sum_reg[5]_1 [1]),
        .O(\sum[5]_i_2_n_0 ));
  FDRE \sum_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sum[0]_i_1_n_0 ),
        .Q(\sum_reg[5]_0 [0]),
        .R(\<const0> ));
  FDRE \sum_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sum[1]_i_1_n_0 ),
        .Q(\sum_reg[5]_0 [1]),
        .R(\<const0> ));
  FDRE \sum_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sum[2]_i_1_n_0 ),
        .Q(\sum_reg[5]_0 [2]),
        .R(\<const0> ));
  FDRE \sum_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sum[3]_i_1_n_0 ),
        .Q(\sum_reg[5]_0 [3]),
        .R(\<const0> ));
  FDRE \sum_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sum[4]_i_1_n_0 ),
        .Q(\sum_reg[5]_0 [4]),
        .R(\<const0> ));
  FDRE \sum_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\sum[5]_i_1_n_0 ),
        .Q(\sum_reg[5]_0 [5]),
        .R(\<const0> ));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    a,
    b,
    c,
    d,
    sum);
  input clk;
  input [3:0]a;
  input [3:0]b;
  input [3:0]c;
  input [3:0]d;
  output [5:0]sum;

  wire SA1_n_0;
  wire SA1_n_1;
  wire SA1_n_2;
  wire SA1_n_3;
  wire SA1_n_4;
  wire SA2_n_0;
  wire SA2_n_1;
  wire SA2_n_2;
  wire SA2_n_3;
  wire SA2_n_4;
  wire [3:0]a;
  wire [3:0]a_IBUF;
  wire [3:0]b;
  wire [3:0]b_IBUF;
  wire [3:0]c;
  wire [3:0]c_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]d;
  wire [3:0]d_IBUF;
  wire [5:0]sum;
  wire [5:0]sum_OBUF;

  simple_adder SA1
       (.CLK(clk_IBUF_BUFG),
        .Q({SA1_n_0,SA1_n_1,SA1_n_2,SA1_n_3,SA1_n_4}),
        .a_IBUF(a_IBUF),
        .b_IBUF(b_IBUF));
  simple_adder_0 SA2
       (.CLK(clk_IBUF_BUFG),
        .Q({SA2_n_0,SA2_n_1,SA2_n_2,SA2_n_3,SA2_n_4}),
        .c_IBUF(c_IBUF),
        .d_IBUF(d_IBUF));
  simple_adder__parameterized0 SA3
       (.Q({SA1_n_0,SA1_n_1,SA1_n_2,SA1_n_3,SA1_n_4}),
        .clk(clk_IBUF_BUFG),
        .\sum_reg[5]_0 (sum_OBUF),
        .\sum_reg[5]_1 ({SA2_n_0,SA2_n_1,SA2_n_2,SA2_n_3,SA2_n_4}));
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \c_IBUF[0]_inst 
       (.I(c[0]),
        .O(c_IBUF[0]));
  IBUF \c_IBUF[1]_inst 
       (.I(c[1]),
        .O(c_IBUF[1]));
  IBUF \c_IBUF[2]_inst 
       (.I(c[2]),
        .O(c_IBUF[2]));
  IBUF \c_IBUF[3]_inst 
       (.I(c[3]),
        .O(c_IBUF[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \d_IBUF[0]_inst 
       (.I(d[0]),
        .O(d_IBUF[0]));
  IBUF \d_IBUF[1]_inst 
       (.I(d[1]),
        .O(d_IBUF[1]));
  IBUF \d_IBUF[2]_inst 
       (.I(d[2]),
        .O(d_IBUF[2]));
  IBUF \d_IBUF[3]_inst 
       (.I(d[3]),
        .O(d_IBUF[3]));
  OBUF \sum_OBUF[0]_inst 
       (.I(sum_OBUF[0]),
        .O(sum[0]));
  OBUF \sum_OBUF[1]_inst 
       (.I(sum_OBUF[1]),
        .O(sum[1]));
  OBUF \sum_OBUF[2]_inst 
       (.I(sum_OBUF[2]),
        .O(sum[2]));
  OBUF \sum_OBUF[3]_inst 
       (.I(sum_OBUF[3]),
        .O(sum[3]));
  OBUF \sum_OBUF[4]_inst 
       (.I(sum_OBUF[4]),
        .O(sum[4]));
  OBUF \sum_OBUF[5]_inst 
       (.I(sum_OBUF[5]),
        .O(sum[5]));
endmodule
