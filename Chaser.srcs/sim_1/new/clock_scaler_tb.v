`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2025 08:56:54 AM
// Design Name: 
// Module Name: clock_scaler_tb
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


module clock_scaler_tb();
    
    reg clk;
    reg [63:0] factor;
    reg out;
    
    initial begin
        clk = 0;
        factor = 100;
        out = 0;
        #1000;
    end
    
    clock_scaler uut (
    .clk(clk),
    .factor(factor),    
    .out(out)
    );
    
    always #5 clk = ~clk; 

    
endmodule
