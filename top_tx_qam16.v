// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_qam16 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        temp1_re397_din,
        temp1_re397_full_n,
        temp1_re397_write,
        temp1_im398_din,
        temp1_im398_full_n,
        temp1_im398_write,
        ap_ce,
        input1,
        input2,
        input3,
        input4,
        temp1_re397_blk_n,
        temp1_im398_blk_n
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] temp1_re397_din;
input   temp1_re397_full_n;
output   temp1_re397_write;
output  [15:0] temp1_im398_din;
input   temp1_im398_full_n;
output   temp1_im398_write;
input   ap_ce;
input  [0:0] input1;
input  [0:0] input2;
input  [0:0] input3;
input  [0:0] input4;
output   temp1_re397_blk_n;
output   temp1_im398_blk_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg temp1_re397_write;
reg temp1_im398_write;
reg temp1_re397_blk_n;
reg temp1_im398_blk_n;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
wire    ap_block_state16_pp0_stage0_iter15;
wire    ap_block_state17_pp0_stage0_iter16;
wire    ap_block_state18_pp0_stage0_iter17;
wire    ap_block_state19_pp0_stage0_iter18;
wire    ap_block_state20_pp0_stage0_iter19;
wire    ap_block_state21_pp0_stage0_iter20;
reg    ap_block_state22_pp0_stage0_iter21;
reg    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire   [31:0] tmp_3_fu_146_p6;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] tmp_4_fu_161_p6;
wire   [63:0] grp_fu_124_p1;
reg   [63:0] conv6_reg_674;
wire   [63:0] grp_fu_127_p1;
reg   [63:0] conv_reg_679;
wire   [63:0] grp_fu_114_p2;
reg   [63:0] d_reg_684;
wire   [63:0] grp_fu_119_p2;
reg   [63:0] d_3_reg_689;
reg    ap_block_pp0_stage0_01001;
wire   [1:0] tmp_3_fu_146_p5;
wire   [1:0] tmp_4_fu_161_p5;
wire   [63:0] ireg_fu_176_p1;
wire   [10:0] exp_tmp_fu_191_p4;
wire   [51:0] trunc_ln554_fu_205_p1;
wire   [52:0] p_Result_7_fu_209_p3;
wire   [53:0] zext_ln558_fu_217_p1;
wire   [0:0] p_Result_s_fu_183_p3;
wire   [53:0] man_V_11_fu_221_p2;
wire   [62:0] trunc_ln544_fu_179_p1;
wire   [11:0] zext_ln455_fu_201_p1;
wire   [11:0] F2_fu_241_p2;
wire   [0:0] icmp_ln570_fu_247_p2;
wire   [11:0] add_ln570_fu_253_p2;
wire   [11:0] sub_ln570_fu_259_p2;
wire  signed [11:0] sh_amt_fu_265_p3;
wire   [53:0] man_V_12_fu_227_p3;
wire  signed [31:0] sext_ln570_fu_273_p1;
wire   [53:0] zext_ln575_fu_293_p1;
wire   [53:0] ashr_ln575_fu_297_p2;
wire   [0:0] tmp_fu_307_p3;
wire   [0:0] icmp_ln574_fu_287_p2;
wire   [15:0] trunc_ln575_fu_303_p1;
wire   [15:0] select_ln577_fu_315_p3;
wire   [7:0] tmp_13_fu_331_p4;
wire   [15:0] trunc_ln572_fu_283_p1;
wire   [15:0] sext_ln570cast_fu_347_p1;
wire   [0:0] icmp_ln592_fu_341_p2;
wire   [15:0] shl_ln593_fu_351_p2;
wire   [0:0] icmp_ln560_fu_235_p2;
wire   [0:0] icmp_ln571_fu_277_p2;
wire   [0:0] xor_ln560_fu_365_p2;
wire   [0:0] and_ln571_fu_371_p2;
wire   [15:0] select_ln592_fu_357_p3;
wire   [0:0] or_ln571_fu_385_p2;
wire   [0:0] xor_ln571_fu_391_p2;
wire   [0:0] and_ln570_fu_397_p2;
wire   [15:0] select_ln574_fu_323_p3;
wire   [15:0] select_ln571_fu_377_p3;
wire   [15:0] select_ln570_fu_403_p3;
wire   [63:0] ireg_3_fu_420_p1;
wire   [10:0] exp_tmp_3_fu_435_p4;
wire   [51:0] trunc_ln554_3_fu_449_p1;
wire   [52:0] p_Result_9_fu_453_p3;
wire   [53:0] zext_ln558_3_fu_461_p1;
wire   [0:0] p_Result_8_fu_427_p3;
wire   [53:0] man_V_14_fu_465_p2;
wire   [62:0] trunc_ln544_3_fu_423_p1;
wire   [11:0] zext_ln455_3_fu_445_p1;
wire   [11:0] F2_3_fu_485_p2;
wire   [0:0] icmp_ln570_3_fu_491_p2;
wire   [11:0] add_ln570_3_fu_497_p2;
wire   [11:0] sub_ln570_3_fu_503_p2;
wire  signed [11:0] sh_amt_3_fu_509_p3;
wire   [53:0] man_V_15_fu_471_p3;
wire  signed [31:0] sext_ln570_3_fu_517_p1;
wire   [53:0] zext_ln575_3_fu_537_p1;
wire   [53:0] ashr_ln575_3_fu_541_p2;
wire   [0:0] tmp_15_fu_551_p3;
wire   [0:0] icmp_ln574_3_fu_531_p2;
wire   [15:0] trunc_ln575_3_fu_547_p1;
wire   [15:0] select_ln577_3_fu_559_p3;
wire   [7:0] tmp_16_fu_575_p4;
wire   [15:0] trunc_ln572_3_fu_527_p1;
wire   [15:0] sext_ln570_3cast_fu_591_p1;
wire   [0:0] icmp_ln592_3_fu_585_p2;
wire   [15:0] shl_ln593_3_fu_595_p2;
wire   [0:0] icmp_ln560_3_fu_479_p2;
wire   [0:0] icmp_ln571_3_fu_521_p2;
wire   [0:0] xor_ln560_3_fu_609_p2;
wire   [0:0] and_ln571_3_fu_615_p2;
wire   [15:0] select_ln592_3_fu_601_p3;
wire   [0:0] or_ln571_3_fu_629_p2;
wire   [0:0] xor_ln571_3_fu_635_p2;
wire   [0:0] and_ln570_3_fu_641_p2;
wire   [15:0] select_ln574_3_fu_567_p3;
wire   [15:0] select_ln571_3_fu_621_p3;
wire   [15:0] select_ln570_6_fu_647_p3;
reg    grp_fu_114_ce;
reg    grp_fu_119_ce;
reg    grp_fu_124_ce;
reg    grp_fu_127_ce;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to20;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
end

top_tx_ddiv_64ns_64ns_64_17_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 17 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_17_no_dsp_1_U20(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(conv6_reg_674),
    .din1(64'd4614303235046005587),
    .ce(grp_fu_114_ce),
    .dout(grp_fu_114_p2)
);

top_tx_ddiv_64ns_64ns_64_17_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 17 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_17_no_dsp_1_U21(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(conv_reg_679),
    .din1(64'd4614303235046005587),
    .ce(grp_fu_119_ce),
    .dout(grp_fu_119_p2)
);

top_tx_sitodp_32ns_64_4_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
sitodp_32ns_64_4_no_dsp_1_U22(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_3_fu_146_p6),
    .ce(grp_fu_124_ce),
    .dout(grp_fu_124_p1)
);

top_tx_sitodp_32ns_64_4_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
sitodp_32ns_64_4_no_dsp_1_U23(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_4_fu_161_p6),
    .ce(grp_fu_127_ce),
    .dout(grp_fu_127_p1)
);

top_tx_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U24(
    .din0(32'd4294967293),
    .din1(32'd4294967295),
    .din2(32'd3),
    .din3(32'd1),
    .din4(tmp_3_fu_146_p5),
    .dout(tmp_3_fu_146_p6)
);

top_tx_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U25(
    .din0(32'd3),
    .din1(32'd1),
    .din2(32'd4294967293),
    .din3(32'd4294967295),
    .din4(tmp_4_fu_161_p5),
    .dout(tmp_4_fu_161_p6)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        conv6_reg_674 <= grp_fu_124_p1;
        conv_reg_679 <= grp_fu_127_p1;
        d_3_reg_689 <= grp_fu_119_p2;
        d_reg_684 <= grp_fu_114_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to20 = 1'b1;
    end else begin
        ap_idle_pp0_0to20 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to20 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_114_ce = 1'b1;
    end else begin
        grp_fu_114_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_119_ce = 1'b1;
    end else begin
        grp_fu_119_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_124_ce = 1'b1;
    end else begin
        grp_fu_124_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_127_ce = 1'b1;
    end else begin
        grp_fu_127_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        temp1_im398_blk_n = temp1_im398_full_n;
    end else begin
        temp1_im398_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp1_im398_write = 1'b1;
    end else begin
        temp1_im398_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        temp1_re397_blk_n = temp1_re397_full_n;
    end else begin
        temp1_re397_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp1_re397_write = 1'b1;
    end else begin
        temp1_re397_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign F2_3_fu_485_p2 = (12'd1075 - zext_ln455_3_fu_445_p1);

assign F2_fu_241_p2 = (12'd1075 - zext_ln455_fu_201_p1);

assign add_ln570_3_fu_497_p2 = ($signed(F2_3_fu_485_p2) + $signed(12'd4082));

assign add_ln570_fu_253_p2 = ($signed(F2_fu_241_p2) + $signed(12'd4082));

assign and_ln570_3_fu_641_p2 = (xor_ln571_3_fu_635_p2 & icmp_ln570_3_fu_491_p2);

assign and_ln570_fu_397_p2 = (xor_ln571_fu_391_p2 & icmp_ln570_fu_247_p2);

assign and_ln571_3_fu_615_p2 = (xor_ln560_3_fu_609_p2 & icmp_ln571_3_fu_521_p2);

assign and_ln571_fu_371_p2 = (xor_ln560_fu_365_p2 & icmp_ln571_fu_277_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter21 == 1'b1) & ((temp1_im398_full_n == 1'b0) | (temp1_re397_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter21 == 1'b1) & ((temp1_im398_full_n == 1'b0) | (temp1_re397_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b0 == ap_ce) | ((ap_enable_reg_pp0_iter21 == 1'b1) & ((temp1_im398_full_n == 1'b0) | (temp1_re397_full_n == 1'b0))));
end

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter20 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state22_pp0_stage0_iter21 = ((temp1_im398_full_n == 1'b0) | (temp1_re397_full_n == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ashr_ln575_3_fu_541_p2 = $signed(man_V_15_fu_471_p3) >>> zext_ln575_3_fu_537_p1;

assign ashr_ln575_fu_297_p2 = $signed(man_V_12_fu_227_p3) >>> zext_ln575_fu_293_p1;

assign exp_tmp_3_fu_435_p4 = {{ireg_3_fu_420_p1[62:52]}};

assign exp_tmp_fu_191_p4 = {{ireg_fu_176_p1[62:52]}};

assign icmp_ln560_3_fu_479_p2 = ((trunc_ln544_3_fu_423_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln560_fu_235_p2 = ((trunc_ln544_fu_179_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln570_3_fu_491_p2 = (($signed(F2_3_fu_485_p2) > $signed(12'd14)) ? 1'b1 : 1'b0);

assign icmp_ln570_fu_247_p2 = (($signed(F2_fu_241_p2) > $signed(12'd14)) ? 1'b1 : 1'b0);

assign icmp_ln571_3_fu_521_p2 = ((F2_3_fu_485_p2 == 12'd14) ? 1'b1 : 1'b0);

assign icmp_ln571_fu_277_p2 = ((F2_fu_241_p2 == 12'd14) ? 1'b1 : 1'b0);

assign icmp_ln574_3_fu_531_p2 = ((sh_amt_3_fu_509_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln574_fu_287_p2 = ((sh_amt_fu_265_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln592_3_fu_585_p2 = ((tmp_16_fu_575_p4 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln592_fu_341_p2 = ((tmp_13_fu_331_p4 == 8'd0) ? 1'b1 : 1'b0);

assign ireg_3_fu_420_p1 = d_3_reg_689;

assign ireg_fu_176_p1 = d_reg_684;

assign man_V_11_fu_221_p2 = (54'd0 - zext_ln558_fu_217_p1);

assign man_V_12_fu_227_p3 = ((p_Result_s_fu_183_p3[0:0] == 1'b1) ? man_V_11_fu_221_p2 : zext_ln558_fu_217_p1);

assign man_V_14_fu_465_p2 = (54'd0 - zext_ln558_3_fu_461_p1);

assign man_V_15_fu_471_p3 = ((p_Result_8_fu_427_p3[0:0] == 1'b1) ? man_V_14_fu_465_p2 : zext_ln558_3_fu_461_p1);

assign or_ln571_3_fu_629_p2 = (icmp_ln571_3_fu_521_p2 | icmp_ln560_3_fu_479_p2);

assign or_ln571_fu_385_p2 = (icmp_ln571_fu_277_p2 | icmp_ln560_fu_235_p2);

assign p_Result_7_fu_209_p3 = {{1'd1}, {trunc_ln554_fu_205_p1}};

assign p_Result_8_fu_427_p3 = ireg_3_fu_420_p1[32'd63];

assign p_Result_9_fu_453_p3 = {{1'd1}, {trunc_ln554_3_fu_449_p1}};

assign p_Result_s_fu_183_p3 = ireg_fu_176_p1[32'd63];

assign select_ln570_6_fu_647_p3 = ((and_ln570_3_fu_641_p2[0:0] == 1'b1) ? select_ln574_3_fu_567_p3 : select_ln571_3_fu_621_p3);

assign select_ln570_fu_403_p3 = ((and_ln570_fu_397_p2[0:0] == 1'b1) ? select_ln574_fu_323_p3 : select_ln571_fu_377_p3);

assign select_ln571_3_fu_621_p3 = ((and_ln571_3_fu_615_p2[0:0] == 1'b1) ? trunc_ln572_3_fu_527_p1 : select_ln592_3_fu_601_p3);

assign select_ln571_fu_377_p3 = ((and_ln571_fu_371_p2[0:0] == 1'b1) ? trunc_ln572_fu_283_p1 : select_ln592_fu_357_p3);

assign select_ln574_3_fu_567_p3 = ((icmp_ln574_3_fu_531_p2[0:0] == 1'b1) ? trunc_ln575_3_fu_547_p1 : select_ln577_3_fu_559_p3);

assign select_ln574_fu_323_p3 = ((icmp_ln574_fu_287_p2[0:0] == 1'b1) ? trunc_ln575_fu_303_p1 : select_ln577_fu_315_p3);

assign select_ln577_3_fu_559_p3 = ((tmp_15_fu_551_p3[0:0] == 1'b1) ? 16'd65535 : 16'd0);

assign select_ln577_fu_315_p3 = ((tmp_fu_307_p3[0:0] == 1'b1) ? 16'd65535 : 16'd0);

assign select_ln592_3_fu_601_p3 = ((icmp_ln592_3_fu_585_p2[0:0] == 1'b1) ? shl_ln593_3_fu_595_p2 : 16'd0);

assign select_ln592_fu_357_p3 = ((icmp_ln592_fu_341_p2[0:0] == 1'b1) ? shl_ln593_fu_351_p2 : 16'd0);

assign sext_ln570_3_fu_517_p1 = sh_amt_3_fu_509_p3;

assign sext_ln570_3cast_fu_591_p1 = sext_ln570_3_fu_517_p1[15:0];

assign sext_ln570_fu_273_p1 = sh_amt_fu_265_p3;

assign sext_ln570cast_fu_347_p1 = sext_ln570_fu_273_p1[15:0];

assign sh_amt_3_fu_509_p3 = ((icmp_ln570_3_fu_491_p2[0:0] == 1'b1) ? add_ln570_3_fu_497_p2 : sub_ln570_3_fu_503_p2);

assign sh_amt_fu_265_p3 = ((icmp_ln570_fu_247_p2[0:0] == 1'b1) ? add_ln570_fu_253_p2 : sub_ln570_fu_259_p2);

assign shl_ln593_3_fu_595_p2 = trunc_ln572_3_fu_527_p1 << sext_ln570_3cast_fu_591_p1;

assign shl_ln593_fu_351_p2 = trunc_ln572_fu_283_p1 << sext_ln570cast_fu_347_p1;

assign sub_ln570_3_fu_503_p2 = (12'd14 - F2_3_fu_485_p2);

assign sub_ln570_fu_259_p2 = (12'd14 - F2_fu_241_p2);

assign temp1_im398_din = ((icmp_ln560_3_fu_479_p2[0:0] == 1'b1) ? 16'd0 : select_ln570_6_fu_647_p3);

assign temp1_re397_din = ((icmp_ln560_fu_235_p2[0:0] == 1'b1) ? 16'd0 : select_ln570_fu_403_p3);

assign tmp_13_fu_331_p4 = {{sh_amt_fu_265_p3[11:4]}};

assign tmp_15_fu_551_p3 = ireg_3_fu_420_p1[32'd63];

assign tmp_16_fu_575_p4 = {{sh_amt_3_fu_509_p3[11:4]}};

assign tmp_3_fu_146_p5 = {{input4}, {input3}};

assign tmp_4_fu_161_p5 = {{input2}, {input1}};

assign tmp_fu_307_p3 = ireg_fu_176_p1[32'd63];

assign trunc_ln544_3_fu_423_p1 = ireg_3_fu_420_p1[62:0];

assign trunc_ln544_fu_179_p1 = ireg_fu_176_p1[62:0];

assign trunc_ln554_3_fu_449_p1 = ireg_3_fu_420_p1[51:0];

assign trunc_ln554_fu_205_p1 = ireg_fu_176_p1[51:0];

assign trunc_ln572_3_fu_527_p1 = man_V_15_fu_471_p3[15:0];

assign trunc_ln572_fu_283_p1 = man_V_12_fu_227_p3[15:0];

assign trunc_ln575_3_fu_547_p1 = ashr_ln575_3_fu_541_p2[15:0];

assign trunc_ln575_fu_303_p1 = ashr_ln575_fu_297_p2[15:0];

assign xor_ln560_3_fu_609_p2 = (icmp_ln560_3_fu_479_p2 ^ 1'd1);

assign xor_ln560_fu_365_p2 = (icmp_ln560_fu_235_p2 ^ 1'd1);

assign xor_ln571_3_fu_635_p2 = (or_ln571_3_fu_629_p2 ^ 1'd1);

assign xor_ln571_fu_391_p2 = (or_ln571_fu_385_p2 ^ 1'd1);

assign zext_ln455_3_fu_445_p1 = exp_tmp_3_fu_435_p4;

assign zext_ln455_fu_201_p1 = exp_tmp_fu_191_p4;

assign zext_ln558_3_fu_461_p1 = p_Result_9_fu_453_p3;

assign zext_ln558_fu_217_p1 = p_Result_7_fu_209_p3;

assign zext_ln575_3_fu_537_p1 = $unsigned(sext_ln570_3_fu_517_p1);

assign zext_ln575_fu_293_p1 = $unsigned(sext_ln570_fu_273_p1);

endmodule //top_tx_qam16
