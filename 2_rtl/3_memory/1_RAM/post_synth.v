// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Feb 13 14:06:19 2024
// Host        : el103-19.ece.usu.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog post_synth.v
// Design      : single_port_RAM
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_WIDTH = "8" *) (* DATA_WIDTH = "8" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module single_port_RAM
   (clk,
    rd,
    wr,
    addr,
    d_in,
    d_out);
  input clk;
  input rd;
  input wr;
  input [7:0]addr;
  input [7:0]d_in;
  output [7:0]d_out;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]addr;
  wire [7:0]addr_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]d_in;
  wire [7:0]d_in_IBUF;
  wire [7:0]d_out;
  wire [7:0]d_out_OBUF;
  wire rd;
  wire rd_IBUF;
  wire wr;
  wire wr_IBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  IBUF \addr_IBUF[0]_inst 
       (.I(addr[0]),
        .O(addr_IBUF[0]));
  IBUF \addr_IBUF[1]_inst 
       (.I(addr[1]),
        .O(addr_IBUF[1]));
  IBUF \addr_IBUF[2]_inst 
       (.I(addr[2]),
        .O(addr_IBUF[2]));
  IBUF \addr_IBUF[3]_inst 
       (.I(addr[3]),
        .O(addr_IBUF[3]));
  IBUF \addr_IBUF[4]_inst 
       (.I(addr[4]),
        .O(addr_IBUF[4]));
  IBUF \addr_IBUF[5]_inst 
       (.I(addr[5]),
        .O(addr_IBUF[5]));
  IBUF \addr_IBUF[6]_inst 
       (.I(addr[6]),
        .O(addr_IBUF[6]));
  IBUF \addr_IBUF[7]_inst 
       (.I(addr[7]),
        .O(addr_IBUF[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \d_in_IBUF[0]_inst 
       (.I(d_in[0]),
        .O(d_in_IBUF[0]));
  IBUF \d_in_IBUF[1]_inst 
       (.I(d_in[1]),
        .O(d_in_IBUF[1]));
  IBUF \d_in_IBUF[2]_inst 
       (.I(d_in[2]),
        .O(d_in_IBUF[2]));
  IBUF \d_in_IBUF[3]_inst 
       (.I(d_in[3]),
        .O(d_in_IBUF[3]));
  IBUF \d_in_IBUF[4]_inst 
       (.I(d_in[4]),
        .O(d_in_IBUF[4]));
  IBUF \d_in_IBUF[5]_inst 
       (.I(d_in[5]),
        .O(d_in_IBUF[5]));
  IBUF \d_in_IBUF[6]_inst 
       (.I(d_in[6]),
        .O(d_in_IBUF[6]));
  IBUF \d_in_IBUF[7]_inst 
       (.I(d_in[7]),
        .O(d_in_IBUF[7]));
  OBUF \d_out_OBUF[0]_inst 
       (.I(d_out_OBUF[0]),
        .O(d_out[0]));
  OBUF \d_out_OBUF[1]_inst 
       (.I(d_out_OBUF[1]),
        .O(d_out[1]));
  OBUF \d_out_OBUF[2]_inst 
       (.I(d_out_OBUF[2]),
        .O(d_out[2]));
  OBUF \d_out_OBUF[3]_inst 
       (.I(d_out_OBUF[3]),
        .O(d_out[3]));
  OBUF \d_out_OBUF[4]_inst 
       (.I(d_out_OBUF[4]),
        .O(d_out[4]));
  OBUF \d_out_OBUF[5]_inst 
       (.I(d_out_OBUF[5]),
        .O(d_out[5]));
  OBUF \d_out_OBUF[6]_inst 
       (.I(d_out_OBUF[6]),
        .O(d_out[6]));
  OBUF \d_out_OBUF[7]_inst 
       (.I(d_out_OBUF[7]),
        .O(d_out[7]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "768" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,addr_IBUF,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,addr_IBUF,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,d_in_IBUF}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(d_out_OBUF),
        .ENARDEN(wr_IBUF),
        .ENBWREN(rd_IBUF),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\<const1> ,\<const1> }),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  IBUF rd_IBUF_inst
       (.I(rd),
        .O(rd_IBUF));
  IBUF wr_IBUF_inst
       (.I(wr),
        .O(wr_IBUF));
endmodule
