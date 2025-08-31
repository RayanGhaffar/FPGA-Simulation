`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2024 05:40:58 PM
// Design Name: 
// Module Name: testbench
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

module testbench();
    reg clk;
    wire [31:0]PC;
    wire [31:0]inst;
    wire [31:0]ealu;
    wire [31:0] malu;
    wire [31:0]wdi;
     

    Datapath dataPath(
        .clock(clk),
        .pc(PC),
        .dinstOut(inst),
        .ealu(ealu),
        .mr(malu),
        .wbData(wdi)   
    );
       
    initial begin
        clk = 0;  //initialize clock to 0
    end
    
    
    always begin
        #10;
        clk = ~clk;   //set clock
    end
endmodule

