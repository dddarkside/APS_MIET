`timescale 1ns / 1ps

module Instruction_mem
(
    input   [7:0]   A,     // ������ 8-������ �������� ����
    output [31:0]   RD    // 32-������ ����� ��������� ������
);

    reg [31:0] RAM [0:255];   // ������� ������ � 256-� 32-������� ��������

    initial $readmemb("mem.txt", RAM);  // ��������� ��� ������� ���������� �
                                        // ������ RAM ���������� ����� mem.txt
//    initial begin
//        $display(RAM[0]);
//        $display(RAM[1]);
//        $display(RAM[2]);
//        $display(RAM[3]);
//    end

    assign RD = RAM[A];   // ���������� ����� �� ������

endmodule