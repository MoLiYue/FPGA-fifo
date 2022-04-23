`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/22/2022 04:21:35 PM
// Design Name:
// Module Name: tb_dcfifo
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


module tb_dcfifo();
    
    reg sys_clk;
    reg sys_rst_n;
    reg [7:0] fifo_wr_data;
    
    initial begin
        sys_clk = 1'b0;
        sys_rst_n <= 1'b0;
        fifo_wr_data <= 8'b0;
        #200
        sys_rst_n <= 1'b1;
    end
    
    always #10 sys_clk = ~sys_clk;

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            fifo_wr_data <= 8'b0;
        else if(fifo_wr_data == 255)
            fifo_wr_data <= 8'b0;
        else
            fifo_wr_data <= fifo_wr_data + 1;
    end
    
    dcfifo dcfifo_inst(
    .sys_clk  (sys_clk),//input wire
    .sys_rst_n(sys_rst_n), //input wire

    .fifo_wr_data(fifo_wr_data)//input wire [7:0] 
    );
endmodule
