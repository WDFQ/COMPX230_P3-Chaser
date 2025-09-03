`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2025 08:27:47 AM
// Design Name: 
// Module Name: clock_scaler
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


module clock_scaler(
    input clk,
    input [63:0] factor,
    output reg out
    );
    
    reg [63:0] current;
    
    initial begin
        out <= 0;
        current <= 1;
    end
    
    always @(posedge clk) begin
        //<missing code goes here>
        if(current == 0) begin
            current <= (factor >> 1) - 1;
            out <= ~out;
        end 
        else begin
            current <= current - 1;
        end 
    end
    
endmodule
