`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/21/2022 07:33:04 PM
// Design Name:
// Module Name: dcfifo
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module dcfifo(input wire sys_clk,
              input wire sys_rst_n,

              input wire [7:0] fifo_wr_data
              );

    wire [7:0] fifo_rd_data;
    wire fifo_rd_en;
    wire fifo_wr_en;
    wire almost_empty;
    wire almost_full;


    //model inner signal
    wire [7:0] din;
    wire [7:0] dout;
    wire full;
    wire empty;
    wire [7:0] rd_data_count;
    wire [7:0] wr_data_count;

    dcfifo_8x256_8x256 dcfifo_8x256_8x256_inst(
    .wr_clk(sys_clk),                // input wire wr_clk
    .rd_clk(sys_clk),                // input wire rd_clk
    .din(din),                      // input wire [7 : 0] din
    .wr_en(fifo_wr_en),                  // input wire wr_en
    .rd_en(fifo_rd_en),                  // input wire rd_en

    .dout(dout),                    // output wire [7 : 0] dout
    .full(full),                    // output wire full
    .almost_full(almost_full),      // output wire almost_full
    .empty(empty),                  // output wire empty
    .almost_empty(almost_empty),    // output wire almost_empty
    .rd_data_count(rd_data_count),  // output wire [7 : 0] rd_data_count
    .wr_data_count(wr_data_count)   // output wire [7 : 0] wr_data_count
    );

    dcfifo_wr dcfifo_wr_inst(
    .sys_clk            (sys_clk),//input wire
    .sys_rst_n          (sys_rst_n),//input wire
    .almost_empty       (almost_empty),//input wire
    .almost_full        (almost_full),//input wire
    .fifo_wr_data       (fifo_wr_data),//input wire [7:0] 

    .fifo_wr_en         (fifo_wr_en),//output reg
    .din                (din) //output reg [7:0]
    );
    dcfifo_rd dcfifo_rd_inst(
    .sys_clk            (sys_clk),//input wire
    .sys_rst_n          (sys_rst_n),//input wire
    .almost_empty       (almost_empty),//input wire
    .almost_full        (almost_full),//input wire
    .dout               (dout),//input wire [7:0] 

    .fifo_rd_en         (fifo_rd_en), //output reg
    .fifo_rd_data       (fifo_rd_data)//output wire [7:0]
    );
endmodule
