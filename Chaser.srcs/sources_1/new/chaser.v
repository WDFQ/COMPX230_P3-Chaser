`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2025 02:18:28 PM
// Design Name: 
// Module Name: chaser
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


module chaser(
    input clk,
    input [15:0] sw,
    input btnL,
    input btnR,
    output [15:0] led
    );
    
    reg [3:0] position;
    reg direction;
    wire [63:0] clk_factor = 100;
    wire clk_scaled;
    wire [63:0] clock_factor; 
    
    initial begin
        position <= 7;
        direction <= 0;
    end
    
     
    clock_scaler uut (
        .clk(clk),        
        .factor(clock_factor),  
        .out(clk_scaled)         
    );        
    
    scale_adjuster uut1 (
        .clk(clk),        
        .btnR(btnR),  
        .btnL(btnL),
        .out(clock_factor)        
    );
    
    always @(posedge clk_scaled) begin
    
       if (position == 0 || position == 15 || sw & led) begin
            direction = ~direction;
            
            if (direction) begin
                position <= position - 1;
            end
            else begin 
                position <= position + 1;
            end
        end 
        
        if (direction) begin
            position <= position + 1;
        end
        
        else begin 
            position <= position - 1;
        end
    end 
    
    assign led =  16'b1 << position;
    
 
endmodule
