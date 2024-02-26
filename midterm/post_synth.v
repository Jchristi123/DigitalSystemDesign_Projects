// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Feb 20 12:52:53 2024
// Host        : el103-19.ece.usu.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog post_synth.v
// Design      : keyboard_audio
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module debouncer
   (btn_db_reg_0,
    clk_IBUF_BUFG,
    rst_IBUF,
    btn1_IBUF,
    led_OBUF);
  output btn_db_reg_0;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input btn1_IBUF;
  input led_OBUF;

  wire \<const1> ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire T1_n_0;
  wire T1_n_1;
  wire btn1_IBUF;
  wire btn_db;
  wire btn_db_reg_0;
  wire clear_i_1_n_0;
  wire clear_reg_n_0;
  wire clk_IBUF_BUFG;
  wire led_OBUF;
  wire rst_IBUF;
  wire [1:0]state;

  LUT3 #(
    .INIT(8'hE2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(btn1_IBUF),
        .I1(state[1]),
        .I2(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "PRESS:01,RELEASE:10,WAIT:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "PRESS:01,RELEASE:10,WAIT:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(T1_n_1),
        .Q(state[1]));
  tcounter T1
       (.\FSM_sequential_state_reg[1] (T1_n_0),
        .\FSM_sequential_state_reg[1]_0 (clear_reg_n_0),
        .btn1_IBUF(btn1_IBUF),
        .btn_db(btn_db),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .done_reg_0(T1_n_1),
        .rst_IBUF(rst_IBUF),
        .state(state));
  VCC VCC
       (.P(\<const1> ));
  FDCE #(
    .INIT(1'b0)) 
    btn_db_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(T1_n_0),
        .Q(btn_db));
  LUT4 #(
    .INIT(16'hC055)) 
    clear_i_1
       (.I0(btn1_IBUF),
        .I1(clear_reg_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .O(clear_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    clear_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(clear_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(clear_reg_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    led_i_1
       (.I0(btn_db),
        .I1(led_OBUF),
        .O(btn_db_reg_0));
endmodule

(* A_btn = "4" *) (* D_btn = "1" *) (* E_btn = "2" *) 
(* G_btn = "3" *) (* no_btn = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module keyboard_audio
   (clk,
    rst,
    D,
    E,
    G,
    A,
    volume,
    AIN,
    GAIN,
    SHUTDOWN_L,
    btn1,
    led);
  input clk;
  input rst;
  input D;
  input E;
  input G;
  input A;
  input [7:0]volume;
  output AIN;
  output GAIN;
  output SHUTDOWN_L;
  input btn1;
  output led;

  wire \<const0> ;
  wire \<const1> ;
  wire A;
  wire AIN;
  wire AIN_OBUF;
  wire A_IBUF;
  wire D;
  wire D_IBUF;
  wire E;
  wire E_IBUF;
  wire \FSM_sequential_btn[0]_i_1_n_0 ;
  wire \FSM_sequential_btn[0]_i_2_n_0 ;
  wire \FSM_sequential_btn[1]_i_1_n_0 ;
  wire \FSM_sequential_btn[1]_i_2_n_0 ;
  wire \FSM_sequential_btn[2]_i_1_n_0 ;
  wire \FSM_sequential_btn[2]_i_2_n_0 ;
  wire \FSM_sequential_btn[2]_i_4_n_0 ;
  wire G;
  wire GAIN;
  wire G_IBUF;
  wire [9:3]N;
  wire \N[6]_i_1_n_0 ;
  wire \N[9]_i_1_n_0 ;
  wire \N_reg_n_0_[3] ;
  wire \N_reg_n_0_[4] ;
  wire \N_reg_n_0_[5] ;
  wire \N_reg_n_0_[6] ;
  wire \N_reg_n_0_[7] ;
  wire \N_reg_n_0_[8] ;
  wire \N_reg_n_0_[9] ;
  wire PWM1_n_0;
  wire SHUTDOWN_L;
  wire btn;
  wire btn1;
  wire btn1_IBUF;
  wire [2:0]btn__0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire db1_n_0;
  wire led;
  wire led_OBUF;
  wire rst;
  wire rst_IBUF;
  wire [7:0]volume;
  wire [7:0]volume_IBUF;

  OBUF AIN_OBUF_inst
       (.I(AIN_OBUF),
        .O(AIN));
  FDCE #(
    .INIT(1'b0)) 
    AIN_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(PWM1_n_0),
        .Q(AIN_OBUF));
  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF D_IBUF_inst
       (.I(D),
        .O(D_IBUF));
  IBUF E_IBUF_inst
       (.I(E),
        .O(E_IBUF));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \FSM_sequential_btn[0]_i_1 
       (.I0(A_IBUF),
        .I1(btn__0[2]),
        .I2(\FSM_sequential_btn[0]_i_2_n_0 ),
        .I3(btn),
        .I4(btn__0[0]),
        .O(\FSM_sequential_btn[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEE544E4)) 
    \FSM_sequential_btn[0]_i_2 
       (.I0(btn__0[1]),
        .I1(D_IBUF),
        .I2(E_IBUF),
        .I3(btn__0[0]),
        .I4(G_IBUF),
        .O(\FSM_sequential_btn[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0054FFFF00540000)) 
    \FSM_sequential_btn[1]_i_1 
       (.I0(\FSM_sequential_btn[1]_i_2_n_0 ),
        .I1(E_IBUF),
        .I2(G_IBUF),
        .I3(D_IBUF),
        .I4(btn),
        .I5(btn__0[1]),
        .O(\FSM_sequential_btn[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_btn[1]_i_2 
       (.I0(btn__0[2]),
        .I1(btn__0[1]),
        .I2(btn__0[0]),
        .O(\FSM_sequential_btn[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFA0)) 
    \FSM_sequential_btn[2]_i_1 
       (.I0(\FSM_sequential_btn[2]_i_2_n_0 ),
        .I1(A_IBUF),
        .I2(btn),
        .I3(btn__0[2]),
        .O(\FSM_sequential_btn[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AFA0C0C1)) 
    \FSM_sequential_btn[2]_i_2 
       (.I0(G_IBUF),
        .I1(E_IBUF),
        .I2(btn__0[1]),
        .I3(D_IBUF),
        .I4(btn__0[0]),
        .I5(btn__0[2]),
        .O(\FSM_sequential_btn[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000777777777)) 
    \FSM_sequential_btn[2]_i_3 
       (.I0(\FSM_sequential_btn[2]_i_4_n_0 ),
        .I1(\FSM_sequential_btn[2]_i_2_n_0 ),
        .I2(A_IBUF),
        .I3(btn__0[1]),
        .I4(btn__0[0]),
        .I5(btn__0[2]),
        .O(btn));
  LUT6 #(
    .INIT(64'hFDFFFD55DD55DD55)) 
    \FSM_sequential_btn[2]_i_4 
       (.I0(A_IBUF),
        .I1(D_IBUF),
        .I2(G_IBUF),
        .I3(btn__0[0]),
        .I4(E_IBUF),
        .I5(btn__0[1]),
        .O(\FSM_sequential_btn[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "D_btn:001,E_btn:010,A_btn:100,G_btn:011,no_btn:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_btn[0]_i_1_n_0 ),
        .Q(btn__0[0]));
  (* FSM_ENCODED_STATES = "D_btn:001,E_btn:010,A_btn:100,G_btn:011,no_btn:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_btn[1]_i_1_n_0 ),
        .Q(btn__0[1]));
  (* FSM_ENCODED_STATES = "D_btn:001,E_btn:010,A_btn:100,G_btn:011,no_btn:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_btn[2]_i_1_n_0 ),
        .Q(btn__0[2]));
  OBUF GAIN_OBUF_inst
       (.I(\<const1> ),
        .O(GAIN));
  GND GND
       (.G(\<const0> ));
  IBUF G_IBUF_inst
       (.I(G),
        .O(G_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \N[3]_i_1 
       (.I0(D_IBUF),
        .I1(G_IBUF),
        .I2(E_IBUF),
        .O(N[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \N[4]_i_1 
       (.I0(D_IBUF),
        .I1(E_IBUF),
        .I2(G_IBUF),
        .O(N[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \N[5]_i_1 
       (.I0(E_IBUF),
        .I1(D_IBUF),
        .O(N[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \N[6]_i_1 
       (.I0(D_IBUF),
        .O(\N[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \N[7]_i_1 
       (.I0(D_IBUF),
        .I1(E_IBUF),
        .O(N[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \N[8]_i_1 
       (.I0(G_IBUF),
        .I1(E_IBUF),
        .I2(D_IBUF),
        .O(N[8]));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \N[9]_i_1 
       (.I0(G_IBUF),
        .I1(E_IBUF),
        .I2(D_IBUF),
        .I3(A_IBUF),
        .I4(\FSM_sequential_btn[1]_i_2_n_0 ),
        .I5(rst_IBUF),
        .O(\N[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \N[9]_i_2 
       (.I0(D_IBUF),
        .I1(E_IBUF),
        .I2(G_IBUF),
        .O(N[9]));
  FDRE \N_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(N[3]),
        .Q(\N_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE \N_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(N[4]),
        .Q(\N_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE \N_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(N[5]),
        .Q(\N_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE \N_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N[6]_i_1_n_0 ),
        .Q(\N_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE \N_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(N[7]),
        .Q(\N_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE \N_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(N[8]),
        .Q(\N_reg_n_0_[8] ),
        .R(\<const0> ));
  FDRE \N_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(N[9]),
        .Q(\N_reg_n_0_[9] ),
        .R(\<const0> ));
  pwm_audio PWM1
       (.Q({\N_reg_n_0_[9] ,\N_reg_n_0_[8] ,\N_reg_n_0_[7] ,\N_reg_n_0_[6] ,\N_reg_n_0_[5] ,\N_reg_n_0_[4] ,\N_reg_n_0_[3] }),
        .btn__0(btn__0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .sout_reg_0(PWM1_n_0),
        .volume_IBUF(volume_IBUF));
  OBUF SHUTDOWN_L_OBUF_inst
       (.I(\<const1> ),
        .O(SHUTDOWN_L));
  VCC VCC
       (.P(\<const1> ));
  IBUF btn1_IBUF_inst
       (.I(btn1),
        .O(btn1_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  debouncer db1
       (.btn1_IBUF(btn1_IBUF),
        .btn_db_reg_0(db1_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF),
        .rst_IBUF(rst_IBUF));
  OBUF led_OBUF_inst
       (.I(led_OBUF),
        .O(led));
  FDCE #(
    .INIT(1'b0)) 
    led_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(db1_n_0),
        .Q(led_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \volume_IBUF[0]_inst 
       (.I(volume[0]),
        .O(volume_IBUF[0]));
  IBUF \volume_IBUF[1]_inst 
       (.I(volume[1]),
        .O(volume_IBUF[1]));
  IBUF \volume_IBUF[2]_inst 
       (.I(volume[2]),
        .O(volume_IBUF[2]));
  IBUF \volume_IBUF[3]_inst 
       (.I(volume[3]),
        .O(volume_IBUF[3]));
  IBUF \volume_IBUF[4]_inst 
       (.I(volume[4]),
        .O(volume_IBUF[4]));
  IBUF \volume_IBUF[5]_inst 
       (.I(volume[5]),
        .O(volume_IBUF[5]));
  IBUF \volume_IBUF[6]_inst 
       (.I(volume[6]),
        .O(volume_IBUF[6]));
  IBUF \volume_IBUF[7]_inst 
       (.I(volume[7]),
        .O(volume_IBUF[7]));
endmodule

module pwm_audio
   (sout_reg_0,
    rst_IBUF,
    clk_IBUF_BUFG,
    btn__0,
    Q,
    volume_IBUF);
  output sout_reg_0;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [2:0]btn__0;
  input [6:0]Q;
  input [7:0]volume_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire [6:0]Q;
  wire [2:0]btn__0;
  wire clk_IBUF_BUFG;
  wire \dc_count[0]_i_1_n_0 ;
  wire \dc_count[7]_i_2_n_0 ;
  wire [7:0]dc_count_reg;
  wire f_clk_i_1_n_0;
  wire f_clk_reg_n_0;
  wire [9:0]f_count;
  wire f_count1_carry__0_i_1_n_0;
  wire f_count1_carry__0_i_2_n_0;
  wire f_count1_carry__0_n_3;
  wire f_count1_carry_i_1_n_0;
  wire f_count1_carry_i_2_n_0;
  wire f_count1_carry_i_3_n_0;
  wire f_count1_carry_i_4_n_0;
  wire f_count1_carry_i_5_n_0;
  wire f_count1_carry_i_6_n_0;
  wire f_count1_carry_i_7_n_0;
  wire f_count1_carry_i_8_n_0;
  wire f_count1_carry_n_0;
  wire f_count1_carry_n_1;
  wire f_count1_carry_n_2;
  wire f_count1_carry_n_3;
  wire \f_count[2]_i_1_n_0 ;
  wire \f_count[3]_i_1_n_0 ;
  wire \f_count[4]_i_1_n_0 ;
  wire \f_count[5]_i_1_n_0 ;
  wire \f_count[5]_i_2_n_0 ;
  wire \f_count[6]_i_1_n_0 ;
  wire \f_count[7]_i_1_n_0 ;
  wire \f_count[8]_i_1_n_0 ;
  wire \f_count[9]_i_2_n_0 ;
  wire [7:1]p_0_in;
  wire [9:0]p_2_in;
  wire rst_IBUF;
  wire sout;
  wire sout0_carry_i_1_n_0;
  wire sout0_carry_i_2_n_0;
  wire sout0_carry_i_3_n_0;
  wire sout0_carry_i_4_n_0;
  wire sout0_carry_i_5_n_0;
  wire sout0_carry_i_6_n_0;
  wire sout0_carry_i_7_n_0;
  wire sout0_carry_i_8_n_0;
  wire sout0_carry_n_0;
  wire sout0_carry_n_1;
  wire sout0_carry_n_2;
  wire sout0_carry_n_3;
  wire sout_reg_0;
  wire [7:0]volume_IBUF;

  LUT4 #(
    .INIT(16'hAAA8)) 
    AIN_i_1
       (.I0(sout),
        .I1(btn__0[0]),
        .I2(btn__0[1]),
        .I3(btn__0[2]),
        .O(sout_reg_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \dc_count[0]_i_1 
       (.I0(dc_count_reg[0]),
        .O(\dc_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_count[1]_i_1 
       (.I0(dc_count_reg[1]),
        .I1(dc_count_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \dc_count[2]_i_1 
       (.I0(dc_count_reg[2]),
        .I1(dc_count_reg[1]),
        .I2(dc_count_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \dc_count[3]_i_1 
       (.I0(dc_count_reg[3]),
        .I1(dc_count_reg[0]),
        .I2(dc_count_reg[1]),
        .I3(dc_count_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \dc_count[4]_i_1 
       (.I0(dc_count_reg[4]),
        .I1(dc_count_reg[2]),
        .I2(dc_count_reg[1]),
        .I3(dc_count_reg[0]),
        .I4(dc_count_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \dc_count[5]_i_1 
       (.I0(dc_count_reg[3]),
        .I1(dc_count_reg[0]),
        .I2(dc_count_reg[1]),
        .I3(dc_count_reg[2]),
        .I4(dc_count_reg[4]),
        .I5(dc_count_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_count[6]_i_1 
       (.I0(dc_count_reg[6]),
        .I1(\dc_count[7]_i_2_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \dc_count[7]_i_1 
       (.I0(dc_count_reg[7]),
        .I1(\dc_count[7]_i_2_n_0 ),
        .I2(dc_count_reg[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \dc_count[7]_i_2 
       (.I0(dc_count_reg[5]),
        .I1(dc_count_reg[4]),
        .I2(dc_count_reg[2]),
        .I3(dc_count_reg[1]),
        .I4(dc_count_reg[0]),
        .I5(dc_count_reg[3]),
        .O(\dc_count[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[0] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\dc_count[0]_i_1_n_0 ),
        .Q(dc_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[1] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[1]),
        .Q(dc_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[2] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[2]),
        .Q(dc_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[3] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[3]),
        .Q(dc_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[4] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[4]),
        .Q(dc_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[5] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[5]),
        .Q(dc_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[6] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[6]),
        .Q(dc_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[7] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[7]),
        .Q(dc_count_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    f_clk_i_1
       (.I0(f_count1_carry__0_n_3),
        .I1(f_clk_reg_n_0),
        .O(f_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    f_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(f_clk_i_1_n_0),
        .Q(f_clk_reg_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 f_count1_carry
       (.CI(\<const0> ),
        .CO({f_count1_carry_n_0,f_count1_carry_n_1,f_count1_carry_n_2,f_count1_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({f_count1_carry_i_1_n_0,f_count1_carry_i_2_n_0,f_count1_carry_i_3_n_0,f_count1_carry_i_4_n_0}),
        .S({f_count1_carry_i_5_n_0,f_count1_carry_i_6_n_0,f_count1_carry_i_7_n_0,f_count1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 f_count1_carry__0
       (.CI(f_count1_carry_n_0),
        .CO(f_count1_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,f_count1_carry__0_i_1_n_0}),
        .S({\<const0> ,\<const0> ,\<const0> ,f_count1_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    f_count1_carry__0_i_1
       (.I0(Q[6]),
        .I1(f_count[9]),
        .I2(f_count[8]),
        .I3(Q[5]),
        .O(f_count1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    f_count1_carry__0_i_2
       (.I0(f_count[9]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(f_count[8]),
        .O(f_count1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    f_count1_carry_i_1
       (.I0(f_count[7]),
        .I1(Q[4]),
        .I2(f_count[6]),
        .I3(Q[3]),
        .O(f_count1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    f_count1_carry_i_2
       (.I0(Q[2]),
        .I1(f_count[5]),
        .I2(f_count[4]),
        .I3(Q[1]),
        .O(f_count1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    f_count1_carry_i_3
       (.I0(f_count[3]),
        .I1(Q[0]),
        .I2(f_count[2]),
        .O(f_count1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    f_count1_carry_i_4
       (.I0(f_count[1]),
        .I1(Q[2]),
        .I2(f_count[0]),
        .I3(Q[6]),
        .O(f_count1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    f_count1_carry_i_5
       (.I0(Q[4]),
        .I1(f_count[7]),
        .I2(Q[3]),
        .I3(f_count[6]),
        .O(f_count1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    f_count1_carry_i_6
       (.I0(f_count[5]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(f_count[4]),
        .O(f_count1_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    f_count1_carry_i_7
       (.I0(f_count[2]),
        .I1(Q[0]),
        .I2(f_count[3]),
        .O(f_count1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    f_count1_carry_i_8
       (.I0(Q[2]),
        .I1(f_count[1]),
        .I2(Q[6]),
        .I3(f_count[0]),
        .O(f_count1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \f_count[0]_i_1 
       (.I0(f_count1_carry__0_n_3),
        .I1(f_count[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \f_count[1]_i_1 
       (.I0(f_count[1]),
        .I1(f_count[0]),
        .I2(f_count1_carry__0_n_3),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \f_count[2]_i_1 
       (.I0(f_count1_carry__0_n_3),
        .I1(f_count[0]),
        .I2(f_count[1]),
        .I3(f_count[2]),
        .O(\f_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \f_count[3]_i_1 
       (.I0(f_count1_carry__0_n_3),
        .I1(f_count[1]),
        .I2(f_count[0]),
        .I3(f_count[2]),
        .I4(f_count[3]),
        .O(\f_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \f_count[4]_i_1 
       (.I0(f_count1_carry__0_n_3),
        .I1(f_count[2]),
        .I2(f_count[0]),
        .I3(f_count[1]),
        .I4(f_count[3]),
        .I5(f_count[4]),
        .O(\f_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \f_count[5]_i_1 
       (.I0(f_count1_carry__0_n_3),
        .I1(\f_count[5]_i_2_n_0 ),
        .I2(f_count[5]),
        .O(\f_count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \f_count[5]_i_2 
       (.I0(f_count[3]),
        .I1(f_count[1]),
        .I2(f_count[0]),
        .I3(f_count[2]),
        .I4(f_count[4]),
        .O(\f_count[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \f_count[6]_i_1 
       (.I0(f_count1_carry__0_n_3),
        .I1(\f_count[9]_i_2_n_0 ),
        .I2(f_count[6]),
        .O(\f_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4510)) 
    \f_count[7]_i_1 
       (.I0(f_count1_carry__0_n_3),
        .I1(\f_count[9]_i_2_n_0 ),
        .I2(f_count[6]),
        .I3(f_count[7]),
        .O(\f_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55150040)) 
    \f_count[8]_i_1 
       (.I0(f_count1_carry__0_n_3),
        .I1(f_count[7]),
        .I2(f_count[6]),
        .I3(\f_count[9]_i_2_n_0 ),
        .I4(f_count[8]),
        .O(\f_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFF4000)) 
    \f_count[9]_i_1 
       (.I0(\f_count[9]_i_2_n_0 ),
        .I1(f_count[6]),
        .I2(f_count[7]),
        .I3(f_count[8]),
        .I4(f_count[9]),
        .I5(f_count1_carry__0_n_3),
        .O(p_2_in[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \f_count[9]_i_2 
       (.I0(f_count[4]),
        .I1(f_count[2]),
        .I2(f_count[0]),
        .I3(f_count[1]),
        .I4(f_count[3]),
        .I5(f_count[5]),
        .O(\f_count[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_2_in[0]),
        .Q(f_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_2_in[1]),
        .Q(f_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[2]_i_1_n_0 ),
        .Q(f_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[3]_i_1_n_0 ),
        .Q(f_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[4]_i_1_n_0 ),
        .Q(f_count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[5]_i_1_n_0 ),
        .Q(f_count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[6]_i_1_n_0 ),
        .Q(f_count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[7]_i_1_n_0 ),
        .Q(f_count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[8]_i_1_n_0 ),
        .Q(f_count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_2_in[9]),
        .Q(f_count[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sout0_carry
       (.CI(\<const0> ),
        .CO({sout0_carry_n_0,sout0_carry_n_1,sout0_carry_n_2,sout0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({sout0_carry_i_1_n_0,sout0_carry_i_2_n_0,sout0_carry_i_3_n_0,sout0_carry_i_4_n_0}),
        .S({sout0_carry_i_5_n_0,sout0_carry_i_6_n_0,sout0_carry_i_7_n_0,sout0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    sout0_carry_i_1
       (.I0(dc_count_reg[7]),
        .I1(volume_IBUF[7]),
        .I2(volume_IBUF[6]),
        .I3(dc_count_reg[6]),
        .O(sout0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    sout0_carry_i_2
       (.I0(dc_count_reg[5]),
        .I1(volume_IBUF[5]),
        .I2(volume_IBUF[4]),
        .I3(dc_count_reg[4]),
        .O(sout0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    sout0_carry_i_3
       (.I0(dc_count_reg[3]),
        .I1(volume_IBUF[3]),
        .I2(volume_IBUF[2]),
        .I3(dc_count_reg[2]),
        .O(sout0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    sout0_carry_i_4
       (.I0(dc_count_reg[1]),
        .I1(volume_IBUF[1]),
        .I2(volume_IBUF[0]),
        .I3(dc_count_reg[0]),
        .O(sout0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sout0_carry_i_5
       (.I0(volume_IBUF[7]),
        .I1(dc_count_reg[7]),
        .I2(volume_IBUF[6]),
        .I3(dc_count_reg[6]),
        .O(sout0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sout0_carry_i_6
       (.I0(volume_IBUF[5]),
        .I1(dc_count_reg[5]),
        .I2(volume_IBUF[4]),
        .I3(dc_count_reg[4]),
        .O(sout0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sout0_carry_i_7
       (.I0(volume_IBUF[3]),
        .I1(dc_count_reg[3]),
        .I2(volume_IBUF[2]),
        .I3(dc_count_reg[2]),
        .O(sout0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sout0_carry_i_8
       (.I0(volume_IBUF[1]),
        .I1(dc_count_reg[1]),
        .I2(volume_IBUF[0]),
        .I3(dc_count_reg[0]),
        .O(sout0_carry_i_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sout_reg
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sout0_carry_n_0),
        .Q(sout));
endmodule

module tcounter
   (\FSM_sequential_state_reg[1] ,
    done_reg_0,
    clk_IBUF_BUFG,
    rst_IBUF,
    \FSM_sequential_state_reg[1]_0 ,
    btn1_IBUF,
    state,
    btn_db);
  output \FSM_sequential_state_reg[1] ;
  output done_reg_0;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \FSM_sequential_state_reg[1]_0 ;
  input btn1_IBUF;
  input [1:0]state;
  input btn_db;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire btn1_IBUF;
  wire btn_db;
  wire clk_IBUF_BUFG;
  wire \clk_count[0]_i_10_n_0 ;
  wire \clk_count[0]_i_11_n_0 ;
  wire \clk_count[0]_i_12_n_0 ;
  wire \clk_count[0]_i_13_n_0 ;
  wire \clk_count[0]_i_14_n_0 ;
  wire \clk_count[0]_i_15_n_0 ;
  wire \clk_count[0]_i_1_n_0 ;
  wire \clk_count[0]_i_3_n_0 ;
  wire \clk_count[0]_i_4_n_0 ;
  wire \clk_count[0]_i_5_n_0 ;
  wire \clk_count[0]_i_6_n_0 ;
  wire \clk_count[0]_i_8_n_0 ;
  wire \clk_count[0]_i_9_n_0 ;
  wire \clk_count[12]_i_2_n_0 ;
  wire \clk_count[12]_i_3_n_0 ;
  wire \clk_count[12]_i_4_n_0 ;
  wire \clk_count[12]_i_5_n_0 ;
  wire \clk_count[16]_i_2_n_0 ;
  wire \clk_count[16]_i_3_n_0 ;
  wire \clk_count[16]_i_4_n_0 ;
  wire \clk_count[16]_i_5_n_0 ;
  wire \clk_count[20]_i_2_n_0 ;
  wire \clk_count[20]_i_3_n_0 ;
  wire \clk_count[20]_i_4_n_0 ;
  wire \clk_count[20]_i_5_n_0 ;
  wire \clk_count[24]_i_2_n_0 ;
  wire \clk_count[24]_i_3_n_0 ;
  wire \clk_count[24]_i_4_n_0 ;
  wire \clk_count[24]_i_5_n_0 ;
  wire \clk_count[28]_i_2_n_0 ;
  wire \clk_count[28]_i_3_n_0 ;
  wire \clk_count[28]_i_4_n_0 ;
  wire \clk_count[28]_i_5_n_0 ;
  wire \clk_count[4]_i_2_n_0 ;
  wire \clk_count[4]_i_3_n_0 ;
  wire \clk_count[4]_i_4_n_0 ;
  wire \clk_count[4]_i_5_n_0 ;
  wire \clk_count[8]_i_2_n_0 ;
  wire \clk_count[8]_i_3_n_0 ;
  wire \clk_count[8]_i_4_n_0 ;
  wire \clk_count[8]_i_5_n_0 ;
  wire \clk_count_reg[0]_i_2_n_0 ;
  wire \clk_count_reg[0]_i_2_n_1 ;
  wire \clk_count_reg[0]_i_2_n_2 ;
  wire \clk_count_reg[0]_i_2_n_3 ;
  wire \clk_count_reg[0]_i_2_n_4 ;
  wire \clk_count_reg[0]_i_2_n_5 ;
  wire \clk_count_reg[0]_i_2_n_6 ;
  wire \clk_count_reg[0]_i_2_n_7 ;
  wire \clk_count_reg[12]_i_1_n_0 ;
  wire \clk_count_reg[12]_i_1_n_1 ;
  wire \clk_count_reg[12]_i_1_n_2 ;
  wire \clk_count_reg[12]_i_1_n_3 ;
  wire \clk_count_reg[12]_i_1_n_4 ;
  wire \clk_count_reg[12]_i_1_n_5 ;
  wire \clk_count_reg[12]_i_1_n_6 ;
  wire \clk_count_reg[12]_i_1_n_7 ;
  wire \clk_count_reg[16]_i_1_n_0 ;
  wire \clk_count_reg[16]_i_1_n_1 ;
  wire \clk_count_reg[16]_i_1_n_2 ;
  wire \clk_count_reg[16]_i_1_n_3 ;
  wire \clk_count_reg[16]_i_1_n_4 ;
  wire \clk_count_reg[16]_i_1_n_5 ;
  wire \clk_count_reg[16]_i_1_n_6 ;
  wire \clk_count_reg[16]_i_1_n_7 ;
  wire \clk_count_reg[20]_i_1_n_0 ;
  wire \clk_count_reg[20]_i_1_n_1 ;
  wire \clk_count_reg[20]_i_1_n_2 ;
  wire \clk_count_reg[20]_i_1_n_3 ;
  wire \clk_count_reg[20]_i_1_n_4 ;
  wire \clk_count_reg[20]_i_1_n_5 ;
  wire \clk_count_reg[20]_i_1_n_6 ;
  wire \clk_count_reg[20]_i_1_n_7 ;
  wire \clk_count_reg[24]_i_1_n_0 ;
  wire \clk_count_reg[24]_i_1_n_1 ;
  wire \clk_count_reg[24]_i_1_n_2 ;
  wire \clk_count_reg[24]_i_1_n_3 ;
  wire \clk_count_reg[24]_i_1_n_4 ;
  wire \clk_count_reg[24]_i_1_n_5 ;
  wire \clk_count_reg[24]_i_1_n_6 ;
  wire \clk_count_reg[24]_i_1_n_7 ;
  wire \clk_count_reg[28]_i_1_n_1 ;
  wire \clk_count_reg[28]_i_1_n_2 ;
  wire \clk_count_reg[28]_i_1_n_3 ;
  wire \clk_count_reg[28]_i_1_n_4 ;
  wire \clk_count_reg[28]_i_1_n_5 ;
  wire \clk_count_reg[28]_i_1_n_6 ;
  wire \clk_count_reg[28]_i_1_n_7 ;
  wire \clk_count_reg[4]_i_1_n_0 ;
  wire \clk_count_reg[4]_i_1_n_1 ;
  wire \clk_count_reg[4]_i_1_n_2 ;
  wire \clk_count_reg[4]_i_1_n_3 ;
  wire \clk_count_reg[4]_i_1_n_4 ;
  wire \clk_count_reg[4]_i_1_n_5 ;
  wire \clk_count_reg[4]_i_1_n_6 ;
  wire \clk_count_reg[4]_i_1_n_7 ;
  wire \clk_count_reg[8]_i_1_n_0 ;
  wire \clk_count_reg[8]_i_1_n_1 ;
  wire \clk_count_reg[8]_i_1_n_2 ;
  wire \clk_count_reg[8]_i_1_n_3 ;
  wire \clk_count_reg[8]_i_1_n_4 ;
  wire \clk_count_reg[8]_i_1_n_5 ;
  wire \clk_count_reg[8]_i_1_n_6 ;
  wire \clk_count_reg[8]_i_1_n_7 ;
  wire done_i_1_n_0;
  wire done_reg_0;
  wire p_1_in;
  wire rst_IBUF;
  wire [31:0]sel0;
  wire [1:0]state;
  wire t;

  LUT5 #(
    .INIT(32'hFF0ADD00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(t),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(btn1_IBUF),
        .I3(state[1]),
        .I4(state[0]),
        .O(done_reg_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFF001000)) 
    btn_db_i_1
       (.I0(btn1_IBUF),
        .I1(state[1]),
        .I2(t),
        .I3(state[0]),
        .I4(btn_db),
        .O(\FSM_sequential_state_reg[1] ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \clk_count[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\clk_count[0]_i_3_n_0 ),
        .I2(\clk_count[0]_i_4_n_0 ),
        .I3(\clk_count[0]_i_5_n_0 ),
        .I4(\clk_count[0]_i_6_n_0 ),
        .O(\clk_count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_10 
       (.I0(sel0[1]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_count[0]_i_11 
       (.I0(sel0[0]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_12 
       (.I0(sel0[20]),
        .I1(sel0[13]),
        .I2(sel0[19]),
        .I3(sel0[12]),
        .O(\clk_count[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_13 
       (.I0(sel0[27]),
        .I1(sel0[8]),
        .I2(sel0[22]),
        .I3(sel0[0]),
        .O(\clk_count[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_14 
       (.I0(sel0[30]),
        .I1(sel0[24]),
        .I2(sel0[28]),
        .I3(sel0[9]),
        .O(\clk_count[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_15 
       (.I0(sel0[21]),
        .I1(sel0[14]),
        .I2(sel0[18]),
        .I3(sel0[16]),
        .O(\clk_count[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_count[0]_i_3 
       (.I0(sel0[4]),
        .I1(sel0[26]),
        .I2(sel0[10]),
        .I3(sel0[11]),
        .I4(\clk_count[0]_i_12_n_0 ),
        .O(\clk_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_count[0]_i_4 
       (.I0(sel0[25]),
        .I1(sel0[5]),
        .I2(sel0[17]),
        .I3(sel0[31]),
        .I4(\clk_count[0]_i_13_n_0 ),
        .O(\clk_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \clk_count[0]_i_5 
       (.I0(sel0[23]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[7]),
        .I4(\clk_count[0]_i_14_n_0 ),
        .O(\clk_count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_count[0]_i_6 
       (.I0(sel0[3]),
        .I1(sel0[6]),
        .I2(sel0[15]),
        .I3(sel0[29]),
        .I4(\clk_count[0]_i_15_n_0 ),
        .O(\clk_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_count[0]_i_7 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .O(p_1_in));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_8 
       (.I0(sel0[3]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_9 
       (.I0(sel0[2]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_2 
       (.I0(sel0[15]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_3 
       (.I0(sel0[14]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_4 
       (.I0(sel0[13]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_5 
       (.I0(sel0[12]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_2 
       (.I0(sel0[19]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_3 
       (.I0(sel0[18]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_4 
       (.I0(sel0[17]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_5 
       (.I0(sel0[16]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_2 
       (.I0(sel0[23]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_3 
       (.I0(sel0[22]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_4 
       (.I0(sel0[21]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_5 
       (.I0(sel0[20]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_2 
       (.I0(sel0[27]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_3 
       (.I0(sel0[26]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_4 
       (.I0(sel0[25]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_5 
       (.I0(sel0[24]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_2 
       (.I0(sel0[31]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_3 
       (.I0(sel0[30]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_4 
       (.I0(sel0[29]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_5 
       (.I0(sel0[28]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_2 
       (.I0(sel0[7]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_3 
       (.I0(sel0[6]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_4 
       (.I0(sel0[5]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_5 
       (.I0(sel0[4]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_2 
       (.I0(sel0[11]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_3 
       (.I0(sel0[10]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_4 
       (.I0(sel0[9]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_5 
       (.I0(sel0[8]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_7 ),
        .Q(sel0[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\clk_count_reg[0]_i_2_n_0 ,\clk_count_reg[0]_i_2_n_1 ,\clk_count_reg[0]_i_2_n_2 ,\clk_count_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,p_1_in}),
        .O({\clk_count_reg[0]_i_2_n_4 ,\clk_count_reg[0]_i_2_n_5 ,\clk_count_reg[0]_i_2_n_6 ,\clk_count_reg[0]_i_2_n_7 }),
        .S({\clk_count[0]_i_8_n_0 ,\clk_count[0]_i_9_n_0 ,\clk_count[0]_i_10_n_0 ,\clk_count[0]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_5 ),
        .Q(sel0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_4 ),
        .Q(sel0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_7 ),
        .Q(sel0[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[12]_i_1 
       (.CI(\clk_count_reg[8]_i_1_n_0 ),
        .CO({\clk_count_reg[12]_i_1_n_0 ,\clk_count_reg[12]_i_1_n_1 ,\clk_count_reg[12]_i_1_n_2 ,\clk_count_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[12]_i_1_n_4 ,\clk_count_reg[12]_i_1_n_5 ,\clk_count_reg[12]_i_1_n_6 ,\clk_count_reg[12]_i_1_n_7 }),
        .S({\clk_count[12]_i_2_n_0 ,\clk_count[12]_i_3_n_0 ,\clk_count[12]_i_4_n_0 ,\clk_count[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_6 ),
        .Q(sel0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_5 ),
        .Q(sel0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_4 ),
        .Q(sel0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_7 ),
        .Q(sel0[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[16]_i_1 
       (.CI(\clk_count_reg[12]_i_1_n_0 ),
        .CO({\clk_count_reg[16]_i_1_n_0 ,\clk_count_reg[16]_i_1_n_1 ,\clk_count_reg[16]_i_1_n_2 ,\clk_count_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[16]_i_1_n_4 ,\clk_count_reg[16]_i_1_n_5 ,\clk_count_reg[16]_i_1_n_6 ,\clk_count_reg[16]_i_1_n_7 }),
        .S({\clk_count[16]_i_2_n_0 ,\clk_count[16]_i_3_n_0 ,\clk_count[16]_i_4_n_0 ,\clk_count[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_6 ),
        .Q(sel0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_5 ),
        .Q(sel0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_4 ),
        .Q(sel0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_6 ),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_7 ),
        .Q(sel0[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[20]_i_1 
       (.CI(\clk_count_reg[16]_i_1_n_0 ),
        .CO({\clk_count_reg[20]_i_1_n_0 ,\clk_count_reg[20]_i_1_n_1 ,\clk_count_reg[20]_i_1_n_2 ,\clk_count_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[20]_i_1_n_4 ,\clk_count_reg[20]_i_1_n_5 ,\clk_count_reg[20]_i_1_n_6 ,\clk_count_reg[20]_i_1_n_7 }),
        .S({\clk_count[20]_i_2_n_0 ,\clk_count[20]_i_3_n_0 ,\clk_count[20]_i_4_n_0 ,\clk_count[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_6 ),
        .Q(sel0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_5 ),
        .Q(sel0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_4 ),
        .Q(sel0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_7 ),
        .Q(sel0[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[24]_i_1 
       (.CI(\clk_count_reg[20]_i_1_n_0 ),
        .CO({\clk_count_reg[24]_i_1_n_0 ,\clk_count_reg[24]_i_1_n_1 ,\clk_count_reg[24]_i_1_n_2 ,\clk_count_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[24]_i_1_n_4 ,\clk_count_reg[24]_i_1_n_5 ,\clk_count_reg[24]_i_1_n_6 ,\clk_count_reg[24]_i_1_n_7 }),
        .S({\clk_count[24]_i_2_n_0 ,\clk_count[24]_i_3_n_0 ,\clk_count[24]_i_4_n_0 ,\clk_count[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_6 ),
        .Q(sel0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_5 ),
        .Q(sel0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_4 ),
        .Q(sel0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_7 ),
        .Q(sel0[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[28]_i_1 
       (.CI(\clk_count_reg[24]_i_1_n_0 ),
        .CO({\clk_count_reg[28]_i_1_n_1 ,\clk_count_reg[28]_i_1_n_2 ,\clk_count_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[28]_i_1_n_4 ,\clk_count_reg[28]_i_1_n_5 ,\clk_count_reg[28]_i_1_n_6 ,\clk_count_reg[28]_i_1_n_7 }),
        .S({\clk_count[28]_i_2_n_0 ,\clk_count[28]_i_3_n_0 ,\clk_count[28]_i_4_n_0 ,\clk_count[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_6 ),
        .Q(sel0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_5 ),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_5 ),
        .Q(sel0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_4 ),
        .Q(sel0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_4 ),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_7 ),
        .Q(sel0[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[4]_i_1 
       (.CI(\clk_count_reg[0]_i_2_n_0 ),
        .CO({\clk_count_reg[4]_i_1_n_0 ,\clk_count_reg[4]_i_1_n_1 ,\clk_count_reg[4]_i_1_n_2 ,\clk_count_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[4]_i_1_n_4 ,\clk_count_reg[4]_i_1_n_5 ,\clk_count_reg[4]_i_1_n_6 ,\clk_count_reg[4]_i_1_n_7 }),
        .S({\clk_count[4]_i_2_n_0 ,\clk_count[4]_i_3_n_0 ,\clk_count[4]_i_4_n_0 ,\clk_count[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_6 ),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_5 ),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_4 ),
        .Q(sel0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_7 ),
        .Q(sel0[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[8]_i_1 
       (.CI(\clk_count_reg[4]_i_1_n_0 ),
        .CO({\clk_count_reg[8]_i_1_n_0 ,\clk_count_reg[8]_i_1_n_1 ,\clk_count_reg[8]_i_1_n_2 ,\clk_count_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[8]_i_1_n_4 ,\clk_count_reg[8]_i_1_n_5 ,\clk_count_reg[8]_i_1_n_6 ,\clk_count_reg[8]_i_1_n_7 }),
        .S({\clk_count[8]_i_2_n_0 ,\clk_count[8]_i_3_n_0 ,\clk_count[8]_i_4_n_0 ,\clk_count[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_6 ),
        .Q(sel0[9]));
  LUT6 #(
    .INIT(64'h5555555500000100)) 
    done_i_1
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\clk_count[0]_i_3_n_0 ),
        .I2(\clk_count[0]_i_4_n_0 ),
        .I3(\clk_count[0]_i_5_n_0 ),
        .I4(\clk_count[0]_i_6_n_0 ),
        .I5(t),
        .O(done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(done_i_1_n_0),
        .Q(t));
endmodule
