`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/21/2022 12:51:59 PM
// Design Name:
// Module Name: tb_fifo
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


module tb_fifo();
    
    reg sys_clk;
    reg sys_rst_n;
    reg [7:0] pi_data;
    reg rd_req;
    reg wr_reg;
    reg [1:0] cnt;

    initial begin
        sys_clk = 1'b0;
        sys_rst_n <= 1'b0;
        #20
        sys_rst_n <= 1'b1;
    end

    always #10 sys_clk = ~sys_clk;

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (sys_rst_n == 1'b0)
            cnt <= 2'b0;
        else if (cnt == 2'd3)
            cnt <= 2'd0;
        else
            cnt <= cnt + 1;
    end

    fifo fifo_inst(
    .sys_clk    (sys_clk),        //input wire
    .pi_data    (),  //input wire [7:0]
    .rd_req     (),         //input wire
    .wr_req     (),         //input wire
    
    .empty      (),         //output wire
    .full       (),          //output wire
    .po_data    (),    //output wire [7:0]
    .usedw      ()   //output wire [7:0]
    );
endmodule
