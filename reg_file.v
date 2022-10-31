`timescale 1ns / 1ps

module reg_file(
    input [4:0]  WA,
    input        WE,
    input [31:0] WD,
    input [4:0]  RA1,
    input [4:0]  RA2,
    input        clk,
    
    output reg [31:0] RD1,
    output reg [31:0] RD2
);
    
reg [31:0] mem [31:0];

always @(posedge clk) begin
    if(WE) begin
        mem[WA] = WD;
        mem[0] = 0;
    end
    
    RD1 = mem[RA1];
    RD2 = mem[RA2];
 end
    
endmodule
