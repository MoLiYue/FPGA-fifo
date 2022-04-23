`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 07:35:40 PM
// Design Name: 
// Module Name: dcfifo_wr
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


module dcfifo_wr(
    input wire sys_clk,
    input wire sys_rst_n,
    input wire almost_empty,
    input wire almost_full,
    input wire [7:0] fifo_wr_data,

    output reg fifo_wr_en,
    output reg [7:0] din
    );


    parameter IDLE = 3'b001;
    parameter ONE = 3'b010;
    parameter TWO = 3'b100;

    reg almost_empty_d0;
    reg almost_empty_d1;
    reg dly_cnt_flag;
    reg [3:0] dly_cnt;
    reg [2:0] state;

    wire syn;

    assign syn = ~almost_empty_d1 & almost_empty_d0;

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0) begin
            almost_empty_d1 <= 1'b0;
        end else begin
            almost_empty_d1 <= almost_empty_d0;
        end      
    end

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0) begin
            almost_empty_d0 <= 1'b0;
        end else begin
            almost_empty_d0 <= almost_empty;
        end
    end

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            state <= IDLE;
        else
            case(state)
                IDLE:
                    if(syn)
                        state <= ONE;
                    else
                        state <= IDLE;
                ONE:
                    if(dly_cnt_flag == 1'b1)
                        state <= TWO;
                    else
                        state <= ONE;
                TWO:
                    if(almost_full)
                        state <= IDLE;
                    else
                        state <= TWO;
                default: state <= IDLE;
            endcase
    end

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            fifo_wr_en <= 1'b0;
        else if(state == ONE && dly_cnt_flag == 1'b1)
            fifo_wr_en <= 1'b1;
        else if(state == TWO && almost_full == 1'b1)
            fifo_wr_en <= 1'b0;
        else
            fifo_wr_en <= fifo_wr_en;
    end

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            din <= 8'd0;
        else if(state == TWO && almost_full == 1'b1)
            din <= 8'd0;
        else if(state == TWO && almost_full == 1'b0)
            din <= fifo_wr_data;
        else
            din <= 8'd0;
    end

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            dly_cnt <= 4'b0;
        else if(state == ONE && dly_cnt_flag == 1'b1)
            dly_cnt <= 4'd0;
        else if(state == ONE)
            dly_cnt <= dly_cnt + 1;
        else
            dly_cnt <= 4'b0;
    end

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            dly_cnt_flag <= 1'b0;
        else if(dly_cnt == 4'd10 - 1)
            dly_cnt_flag <= 1'b1;
        else
            dly_cnt_flag <= 1'b0;
    end

endmodule
