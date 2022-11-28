`timescale 1ns / 1ps
//`include "E:/Programming/verilog/just_comp/project_1/project_1.srcs/sources_1/new/Clock.v"

module gen_test();

reg CLK = 0;
reg RST = 0;
reg[31:0] IN = 0;
reg[31:0] OUT;


//Clock clock(.clk(CLK));
Cobra tested(.CLK(CLK),.RST(RST),.IN(IN),.OUT(OUT));



initial begin
    forever begin
    #10 CLK = ~CLK;
    end
end

initial begin
    t(1,
      0,
      0);
   
end

task t(
input [31:0] in,
input        rst,
input [31:0] out
);
    begin
        IN = in;
        RST = rst;
        OUT = out;
        #1
        $display(out);
    end
endtask

endmodule
