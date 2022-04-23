// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Mar 21 19:27:30 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top dcfifo_8x256_8x256 -prefix
//               dcfifo_8x256_8x256_ scfifo_8x256_sim_netlist.v
// Design      : scfifo_8x256
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "scfifo_8x256,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module dcfifo_8x256_8x256
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    almost_empty,
    rd_data_count,
    wr_data_count);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output [7:0]rd_data_count;
  output [7:0]wr_data_count;

  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [7:0]rd_data_count;
  wire rd_en;
  wire wr_clk;
  wire [7:0]wr_data_count;
  wire wr_en;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "253" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "252" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  dcfifo_8x256_8x256_fifo_generator_v13_2_6 U0
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module dcfifo_8x256_8x256_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module dcfifo_8x256_8x256_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 95056)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21248)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
