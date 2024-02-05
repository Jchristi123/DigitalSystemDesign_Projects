// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Feb  5 14:52:18 2024
// Host        : genesys.bluezone.usu.edu running 64-bit unknown
// Command     : write_verilog -force post_synth.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock_divider
   (scan,
    E,
    clk_IBUF_BUFG,
    rst_IBUF,
    \keys_reg[7] ,
    col1,
    \keys_reg[14] ,
    \keys_reg[15] );
  output scan;
  output [3:0]E;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \keys_reg[7] ;
  input col1;
  input \keys_reg[14] ;
  input \keys_reg[15] ;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]E;
  wire clk_IBUF_BUFG;
  wire [31:0]clk_count;
  wire clk_count0_carry__0_n_0;
  wire clk_count0_carry__0_n_1;
  wire clk_count0_carry__0_n_2;
  wire clk_count0_carry__0_n_3;
  wire clk_count0_carry__1_n_0;
  wire clk_count0_carry__1_n_1;
  wire clk_count0_carry__1_n_2;
  wire clk_count0_carry__1_n_3;
  wire clk_count0_carry__2_n_0;
  wire clk_count0_carry__2_n_1;
  wire clk_count0_carry__2_n_2;
  wire clk_count0_carry__2_n_3;
  wire clk_count0_carry__3_n_0;
  wire clk_count0_carry__3_n_1;
  wire clk_count0_carry__3_n_2;
  wire clk_count0_carry__3_n_3;
  wire clk_count0_carry__4_n_0;
  wire clk_count0_carry__4_n_1;
  wire clk_count0_carry__4_n_2;
  wire clk_count0_carry__4_n_3;
  wire clk_count0_carry__5_n_0;
  wire clk_count0_carry__5_n_1;
  wire clk_count0_carry__5_n_2;
  wire clk_count0_carry__5_n_3;
  wire clk_count0_carry__6_n_2;
  wire clk_count0_carry__6_n_3;
  wire clk_count0_carry_n_0;
  wire clk_count0_carry_n_1;
  wire clk_count0_carry_n_2;
  wire clk_count0_carry_n_3;
  wire \clk_count[31]_i_2_n_0 ;
  wire \clk_count[31]_i_3_n_0 ;
  wire \clk_count[31]_i_4_n_0 ;
  wire \clk_count[31]_i_5_n_0 ;
  wire \clk_count[31]_i_6_n_0 ;
  wire \clk_count[31]_i_7_n_0 ;
  wire \clk_count[31]_i_8_n_0 ;
  wire \clk_count[31]_i_9_n_0 ;
  wire [31:0]clk_count_0;
  wire col1;
  wire [31:1]data0;
  wire div_clk;
  wire \keys_reg[14] ;
  wire \keys_reg[15] ;
  wire \keys_reg[7] ;
  wire rst_IBUF;
  wire scan;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry
       (.CI(\<const0> ),
        .CO({clk_count0_carry_n_0,clk_count0_carry_n_1,clk_count0_carry_n_2,clk_count0_carry_n_3}),
        .CYINIT(clk_count[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S(clk_count[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__0
       (.CI(clk_count0_carry_n_0),
        .CO({clk_count0_carry__0_n_0,clk_count0_carry__0_n_1,clk_count0_carry__0_n_2,clk_count0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S(clk_count[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__1
       (.CI(clk_count0_carry__0_n_0),
        .CO({clk_count0_carry__1_n_0,clk_count0_carry__1_n_1,clk_count0_carry__1_n_2,clk_count0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[12:9]),
        .S(clk_count[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__2
       (.CI(clk_count0_carry__1_n_0),
        .CO({clk_count0_carry__2_n_0,clk_count0_carry__2_n_1,clk_count0_carry__2_n_2,clk_count0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[16:13]),
        .S(clk_count[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__3
       (.CI(clk_count0_carry__2_n_0),
        .CO({clk_count0_carry__3_n_0,clk_count0_carry__3_n_1,clk_count0_carry__3_n_2,clk_count0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[20:17]),
        .S(clk_count[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__4
       (.CI(clk_count0_carry__3_n_0),
        .CO({clk_count0_carry__4_n_0,clk_count0_carry__4_n_1,clk_count0_carry__4_n_2,clk_count0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[24:21]),
        .S(clk_count[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__5
       (.CI(clk_count0_carry__4_n_0),
        .CO({clk_count0_carry__5_n_0,clk_count0_carry__5_n_1,clk_count0_carry__5_n_2,clk_count0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[28:25]),
        .S(clk_count[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__6
       (.CI(clk_count0_carry__5_n_0),
        .CO({clk_count0_carry__6_n_2,clk_count0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[31:29]),
        .S({\<const0> ,clk_count[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_count[0]_i_1 
       (.I0(\clk_count[31]_i_4_n_0 ),
        .I1(\clk_count[31]_i_3_n_0 ),
        .I2(\clk_count[31]_i_2_n_0 ),
        .I3(clk_count[0]),
        .O(clk_count_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[10]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[10]),
        .O(clk_count_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[11]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[11]),
        .O(clk_count_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[12]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[12]),
        .O(clk_count_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[13]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[13]),
        .O(clk_count_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[14]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[14]),
        .O(clk_count_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[15]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[15]),
        .O(clk_count_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[16]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[16]),
        .O(clk_count_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[17]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[17]),
        .O(clk_count_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[18]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[18]),
        .O(clk_count_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[19]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[19]),
        .O(clk_count_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[1]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[1]),
        .O(clk_count_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[20]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[20]),
        .O(clk_count_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[21]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[21]),
        .O(clk_count_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[22]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[22]),
        .O(clk_count_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[23]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[23]),
        .O(clk_count_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[24]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[24]),
        .O(clk_count_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[25]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[25]),
        .O(clk_count_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[26]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[26]),
        .O(clk_count_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[27]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[27]),
        .O(clk_count_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[28]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[28]),
        .O(clk_count_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[29]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[29]),
        .O(clk_count_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[2]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[2]),
        .O(clk_count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[30]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[30]),
        .O(clk_count_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[31]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[31]),
        .O(clk_count_0[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_count[31]_i_2 
       (.I0(clk_count[13]),
        .I1(clk_count[12]),
        .I2(clk_count[10]),
        .I3(clk_count[11]),
        .I4(\clk_count[31]_i_5_n_0 ),
        .O(\clk_count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_count[31]_i_3 
       (.I0(clk_count[4]),
        .I1(clk_count[5]),
        .I2(clk_count[2]),
        .I3(clk_count[3]),
        .I4(\clk_count[31]_i_6_n_0 ),
        .O(\clk_count[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_count[31]_i_4 
       (.I0(\clk_count[31]_i_7_n_0 ),
        .I1(\clk_count[31]_i_8_n_0 ),
        .I2(clk_count[31]),
        .I3(clk_count[30]),
        .I4(clk_count[1]),
        .I5(\clk_count[31]_i_9_n_0 ),
        .O(\clk_count[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_count[31]_i_5 
       (.I0(clk_count[15]),
        .I1(clk_count[14]),
        .I2(clk_count[17]),
        .I3(clk_count[16]),
        .O(\clk_count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_count[31]_i_6 
       (.I0(clk_count[7]),
        .I1(clk_count[6]),
        .I2(clk_count[9]),
        .I3(clk_count[8]),
        .O(\clk_count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_7 
       (.I0(clk_count[23]),
        .I1(clk_count[22]),
        .I2(clk_count[25]),
        .I3(clk_count[24]),
        .O(\clk_count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_count[31]_i_8 
       (.I0(clk_count[18]),
        .I1(clk_count[19]),
        .I2(clk_count[21]),
        .I3(clk_count[20]),
        .O(\clk_count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_9 
       (.I0(clk_count[27]),
        .I1(clk_count[26]),
        .I2(clk_count[29]),
        .I3(clk_count[28]),
        .O(\clk_count[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[3]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[3]),
        .O(clk_count_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[4]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[4]),
        .O(clk_count_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[5]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[5]),
        .O(clk_count_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[6]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[6]),
        .O(clk_count_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[7]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[7]),
        .O(clk_count_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[8]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[8]),
        .O(clk_count_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[9]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[9]),
        .O(clk_count_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[0]),
        .Q(clk_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[10]),
        .Q(clk_count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[11]),
        .Q(clk_count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[12]),
        .Q(clk_count[12]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[13]),
        .Q(clk_count[13]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[14]),
        .Q(clk_count[14]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[15]),
        .Q(clk_count[15]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[16]),
        .Q(clk_count[16]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[17]),
        .Q(clk_count[17]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[18]),
        .Q(clk_count[18]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[19]),
        .Q(clk_count[19]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[1]),
        .Q(clk_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[20]),
        .Q(clk_count[20]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[21]),
        .Q(clk_count[21]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[22]),
        .Q(clk_count[22]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[23]),
        .Q(clk_count[23]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[24]),
        .Q(clk_count[24]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[25]),
        .Q(clk_count[25]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[26]),
        .Q(clk_count[26]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[27]),
        .Q(clk_count[27]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[28]),
        .Q(clk_count[28]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[29]),
        .Q(clk_count[29]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[2]),
        .Q(clk_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[30]),
        .Q(clk_count[30]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[31]),
        .Q(clk_count[31]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[3]),
        .Q(clk_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[4]),
        .Q(clk_count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[5]),
        .Q(clk_count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[6]),
        .Q(clk_count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[7]),
        .Q(clk_count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[8]),
        .Q(clk_count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[9]),
        .Q(clk_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    div_clk_i_1
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .O(div_clk));
  FDCE #(
    .INIT(1'b0)) 
    div_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(div_clk),
        .Q(scan));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \keys[13]_i_1 
       (.I0(scan),
        .I1(col1),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \keys[14]_i_1 
       (.I0(scan),
        .I1(\keys_reg[14] ),
        .O(E[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \keys[15]_i_1 
       (.I0(scan),
        .I1(\keys_reg[15] ),
        .O(E[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \keys[7]_i_1 
       (.I0(scan),
        .I1(\keys_reg[7] ),
        .O(E[0]));
endmodule

module keypad
   (\col_TRI[3] ,
    \col_TRI[2] ,
    \col_TRI[1] ,
    \col_TRI[0] ,
    Q,
    row_IBUF,
    clk_IBUF_BUFG,
    rst_IBUF);
  output \col_TRI[3] ;
  output \col_TRI[2] ;
  output \col_TRI[1] ;
  output \col_TRI[0] ;
  output [15:0]Q;
  input [3:0]row_IBUF;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire [15:0]Q;
  wire clk_IBUF_BUFG;
  wire clkdiv_n_1;
  wire clkdiv_n_2;
  wire clkdiv_n_3;
  wire clkdiv_n_4;
  wire col1;
  wire \col_TRI[0] ;
  wire \col_TRI[1] ;
  wire \col_TRI[2] ;
  wire \col_TRI[3] ;
  wire \keys[10]_i_1_n_0 ;
  wire \keys[11]_i_1_n_0 ;
  wire \keys[12]_i_1_n_0 ;
  wire \keys[15]_i_2_n_0 ;
  wire [3:0]row_IBUF;
  wire rst_IBUF;
  wire scan;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\col_TRI[0] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\col_TRI[1] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\col_TRI[2] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .CLR(rst_IBUF),
        .D(\col_TRI[3] ),
        .Q(\col_TRI[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\col_TRI[1] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\col_TRI[2] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\col_TRI[3] ));
  clock_divider clkdiv
       (.E({clkdiv_n_1,clkdiv_n_2,clkdiv_n_3,clkdiv_n_4}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .col1(col1),
        .\keys_reg[14] (\FSM_onehot_state[3]_i_2_n_0 ),
        .\keys_reg[15] (\FSM_onehot_state[2]_i_2_n_0 ),
        .\keys_reg[7] (\FSM_onehot_state[1]_i_2_n_0 ),
        .rst_IBUF(rst_IBUF),
        .scan(scan));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[10]_i_1 
       (.I0(row_IBUF[0]),
        .O(\keys[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[11]_i_1 
       (.I0(row_IBUF[1]),
        .O(\keys[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[12]_i_1 
       (.I0(row_IBUF[2]),
        .O(\keys[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[13]_i_2 
       (.I0(\col_TRI[3] ),
        .O(col1));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[15]_i_2 
       (.I0(row_IBUF[3]),
        .O(\keys[15]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(Q[9]));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    rst,
    row,
    col,
    keys);
  input clk;
  input rst;
  input [3:0]row;
  output [3:0]col;
  output [15:0]keys;

  wire \<const0> ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]col;
  wire \col_TRI[0] ;
  wire \col_TRI[1] ;
  wire \col_TRI[2] ;
  wire \col_TRI[3] ;
  wire [15:0]keys;
  wire [15:0]keys_OBUF;
  wire [3:0]row;
  wire [3:0]row_IBUF;
  wire rst;
  wire rst_IBUF;

  GND GND
       (.G(\<const0> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUFT \col_OBUFT[0]_inst 
       (.I(\<const0> ),
        .O(col[0]),
        .T(\col_TRI[0] ));
  OBUFT \col_OBUFT[1]_inst 
       (.I(\<const0> ),
        .O(col[1]),
        .T(\col_TRI[1] ));
  OBUFT \col_OBUFT[2]_inst 
       (.I(\<const0> ),
        .O(col[2]),
        .T(\col_TRI[2] ));
  OBUFT \col_OBUFT[3]_inst 
       (.I(\<const0> ),
        .O(col[3]),
        .T(\col_TRI[3] ));
  OBUF \keys_OBUF[0]_inst 
       (.I(keys_OBUF[0]),
        .O(keys[0]));
  OBUF \keys_OBUF[10]_inst 
       (.I(keys_OBUF[10]),
        .O(keys[10]));
  OBUF \keys_OBUF[11]_inst 
       (.I(keys_OBUF[11]),
        .O(keys[11]));
  OBUF \keys_OBUF[12]_inst 
       (.I(keys_OBUF[12]),
        .O(keys[12]));
  OBUF \keys_OBUF[13]_inst 
       (.I(keys_OBUF[13]),
        .O(keys[13]));
  OBUF \keys_OBUF[14]_inst 
       (.I(keys_OBUF[14]),
        .O(keys[14]));
  OBUF \keys_OBUF[15]_inst 
       (.I(keys_OBUF[15]),
        .O(keys[15]));
  OBUF \keys_OBUF[1]_inst 
       (.I(keys_OBUF[1]),
        .O(keys[1]));
  OBUF \keys_OBUF[2]_inst 
       (.I(keys_OBUF[2]),
        .O(keys[2]));
  OBUF \keys_OBUF[3]_inst 
       (.I(keys_OBUF[3]),
        .O(keys[3]));
  OBUF \keys_OBUF[4]_inst 
       (.I(keys_OBUF[4]),
        .O(keys[4]));
  OBUF \keys_OBUF[5]_inst 
       (.I(keys_OBUF[5]),
        .O(keys[5]));
  OBUF \keys_OBUF[6]_inst 
       (.I(keys_OBUF[6]),
        .O(keys[6]));
  OBUF \keys_OBUF[7]_inst 
       (.I(keys_OBUF[7]),
        .O(keys[7]));
  OBUF \keys_OBUF[8]_inst 
       (.I(keys_OBUF[8]),
        .O(keys[8]));
  OBUF \keys_OBUF[9]_inst 
       (.I(keys_OBUF[9]),
        .O(keys[9]));
  keypad kypd
       (.Q(keys_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\col_TRI[0] (\col_TRI[0] ),
        .\col_TRI[1] (\col_TRI[1] ),
        .\col_TRI[2] (\col_TRI[2] ),
        .\col_TRI[3] (\col_TRI[3] ),
        .row_IBUF(row_IBUF),
        .rst_IBUF(rst_IBUF));
  IBUF \row_IBUF[0]_inst 
       (.I(row[0]),
        .O(row_IBUF[0]));
  IBUF \row_IBUF[1]_inst 
       (.I(row[1]),
        .O(row_IBUF[1]));
  IBUF \row_IBUF[2]_inst 
       (.I(row[2]),
        .O(row_IBUF[2]));
  IBUF \row_IBUF[3]_inst 
       (.I(row[3]),
        .O(row_IBUF[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
