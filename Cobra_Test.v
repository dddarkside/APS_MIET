`timescale 1ns / 1ps


module Cobra_Test(input [31:0] IN, output reg [31:0] OUT); 

reg [31:0] INSTR;

IM Instruction_mem(.A(),.RD(INSTR));
RF reg_file(.RA1(), .RA2(), .WA(), .WE(), .WD(), .RD1(), .RD2(), .clk());
ALU ALU()

endmodule
