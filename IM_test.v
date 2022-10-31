`timescale 1ns / 1ps


module IM_test( );

reg [7:0] A;
wire [31:0] RD;
Instruction_mem tested(.A(A),.RD(RD));

initial begin
    t(00000000);
    t(00000001);
    t(11111111);
end

task t(
input [7:0] a
);
    begin
        A = a;
        #100
        $display(RD,"\n");
    end
endtask

endmodule
