// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Feb  6 13:05:57 2024
// Host        : genesys.bluezone.usu.edu running 64-bit unknown
// Command     : write_verilog -force post_synth.v
// Design      : top
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
    btn_IBUF,
    led_OBUF);
  output btn_db_reg_0;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input btn_IBUF;
  input led_OBUF;

  wire \<const1> ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire T1_n_0;
  wire T1_n_1;
  wire btn_IBUF;
  wire btn_db;
  wire btn_db_reg_0;
  wire clear_i_1_n_0;
  wire clear_reg_n_0;
  wire clk_IBUF_BUFG;
  wire led_OBUF;
  wire rst_IBUF;
  wire [1:0]state;

  LUT3 #(
    .INIT(8'hE4)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(btn_IBUF),
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
        .btn_IBUF(btn_IBUF),
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
       (.I0(btn_IBUF),
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

module tcounter
   (\FSM_sequential_state_reg[1] ,
    done_reg_0,
    clk_IBUF_BUFG,
    rst_IBUF,
    state,
    btn_IBUF,
    btn_db,
    \FSM_sequential_state_reg[1]_0 );
  output \FSM_sequential_state_reg[1] ;
  output done_reg_0;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input [1:0]state;
  input btn_IBUF;
  input btn_db;
  input \FSM_sequential_state_reg[1]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire btn_IBUF;
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
  wire \clk_count[0]_i_7_n_0 ;
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
  wire rst_IBUF;
  wire [31:0]sel0;
  wire [1:0]state;
  wire t;

  LUT5 #(
    .INIT(32'hF0FAD0D0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(t),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(state[1]),
        .I3(btn_IBUF),
        .I4(state[0]),
        .O(done_reg_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFF001000)) 
    btn_db_i_1
       (.I0(state[1]),
        .I1(btn_IBUF),
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
       (.I0(sel0[21]),
        .I1(sel0[20]),
        .I2(sel0[23]),
        .I3(sel0[22]),
        .O(\clk_count[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_13 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[31]),
        .I3(sel0[28]),
        .O(\clk_count[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \clk_count[0]_i_14 
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(sel0[29]),
        .I3(sel0[3]),
        .O(\clk_count[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_15 
       (.I0(sel0[13]),
        .I1(sel0[12]),
        .I2(sel0[15]),
        .I3(sel0[14]),
        .O(\clk_count[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_count[0]_i_3 
       (.I0(sel0[26]),
        .I1(sel0[27]),
        .I2(sel0[24]),
        .I3(sel0[25]),
        .I4(\clk_count[0]_i_12_n_0 ),
        .O(\clk_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_count[0]_i_4 
       (.I0(sel0[18]),
        .I1(sel0[19]),
        .I2(sel0[16]),
        .I3(sel0[17]),
        .I4(\clk_count[0]_i_13_n_0 ),
        .O(\clk_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \clk_count[0]_i_5 
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .I2(sel0[8]),
        .I3(sel0[9]),
        .I4(\clk_count[0]_i_14_n_0 ),
        .O(\clk_count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \clk_count[0]_i_6 
       (.I0(sel0[4]),
        .I1(sel0[7]),
        .I2(sel0[30]),
        .I3(sel0[6]),
        .I4(\clk_count[0]_i_15_n_0 ),
        .O(\clk_count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_7 
       (.I0(sel0[0]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[0]_i_7_n_0 ));
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
        .DI({\<const0> ,\<const0> ,\<const0> ,\clk_count[0]_i_7_n_0 }),
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

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    btn,
    rst,
    led);
  input clk;
  input btn;
  input rst;
  output led;

  wire \<const1> ;
  wire btn;
  wire btn_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire db1_n_0;
  wire led;
  wire led_OBUF;
  wire rst;
  wire rst_IBUF;

  VCC VCC
       (.P(\<const1> ));
  IBUF btn_IBUF_inst
       (.I(btn),
        .O(btn_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  debouncer db1
       (.btn_IBUF(btn_IBUF),
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
endmodule
