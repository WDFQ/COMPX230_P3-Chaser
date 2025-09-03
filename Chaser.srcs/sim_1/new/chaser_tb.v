`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2025 02:53:35 PM
// Design Name: 
// Module Name: chaser_tb
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



module chaser_tb();

    reg clk;
    reg [15:0] sw;
    reg btnL;
    reg btnR;
    wire [15:0] led;
    
    initial begin
        clk = 0;
        sw = 16'd10;
        btnL = 0;
        btnR = 0;
        #200;
    end
    
    chaser chaser(clk, sw, btnL, btnR, led);
    always #5 clk = ~clk;
endmodule