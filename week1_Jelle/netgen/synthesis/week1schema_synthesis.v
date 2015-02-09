////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.49d
//  \   \         Application: netgen
//  /   /         Filename: week1schema_synthesis.v
// /___/   /\     Timestamp: Tue Feb 03 21:01:30 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim week1schema.ngc week1schema_synthesis.v 
// Device	: xc3s100e-4-cp132
// Input file	: week1schema.ngc
// Output file	: D:\Docu_Jelle\School\Avans\TI\Blok7\VHDL\wekelijks\week1\netgen\synthesis\week1schema_synthesis.v
// # of Modules	: 1
// Design Name	: week1schema
// Xilinx        : C:\Xilinx\14.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module week1schema (
  XLXN_20, XLXN_19, XLXN_6, XLXN_7, XLXN_9
);
  output XLXN_20;
  output XLXN_19;
  input XLXN_6;
  input XLXN_7;
  input XLXN_9;
  wire XLXN_19_OBUF_1;
  wire XLXN_20_OBUF_3;
  wire XLXN_6_IBUF_5;
  wire XLXN_7_IBUF_7;
  wire XLXN_9_IBUF_9;
  LUT3 #(
    .INIT ( 8'hE8 ))
  \XLXI_8/X1  (
    .I0(XLXN_7_IBUF_7),
    .I1(XLXN_9_IBUF_9),
    .I2(XLXN_6_IBUF_5),
    .O(XLXN_20_OBUF_3)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_5/Mxor_X_Result1  (
    .I0(XLXN_7_IBUF_7),
    .I1(XLXN_9_IBUF_9),
    .I2(XLXN_6_IBUF_5),
    .O(XLXN_19_OBUF_1)
  );
  IBUF   XLXN_6_IBUF (
    .I(XLXN_6),
    .O(XLXN_6_IBUF_5)
  );
  IBUF   XLXN_7_IBUF (
    .I(XLXN_7),
    .O(XLXN_7_IBUF_7)
  );
  IBUF   XLXN_9_IBUF (
    .I(XLXN_9),
    .O(XLXN_9_IBUF_9)
  );
  OBUF   XLXN_20_OBUF (
    .I(XLXN_20_OBUF_3),
    .O(XLXN_20)
  );
  OBUF   XLXN_19_OBUF (
    .I(XLXN_19_OBUF_1),
    .O(XLXN_19)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

