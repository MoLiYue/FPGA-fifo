`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/20/2022 10:38:38 PM
// Design Name:
// Module Name: fifo
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


module fifo(
    input wire sys_clk,
    input wire [7:0] pi_data,
    input wire rd_req,
    input wire wr_req,

    output wire empty,
    output wire full,
    output wire [7:0] po_data,
    output wire [7:0] usedw
);
    
    scfifo_8x256 scfifo_8x256_inst (
    .clk(clk),                // input wire clk
    .srst(srst),              // input wire srst
    .din(din),                // input wire [7 : 0] din
    .wr_en(wr_en),            // input wire wr_en
    .rd_en(rd_en),            // input wire rd_en
    
    .dout(dout),              // output wire [7 : 0] dout
    .full(full),              // output wire full
    .empty(empty),            // output wire empty
    .data_count(data_count)  // output wire [7 : 0] data_count
    );
endmodule
