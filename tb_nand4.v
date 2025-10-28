`timescale 1ns/1ps
module tb_nand4;
    reg  [3:0] a, b;
    wire [3:0] y;
    nand4 uut (.a(a), .b(b), .y(y));

    integer i;
    initial begin
        $dumpfile("tb_nand4.vcd");
        $dumpvars(0, tb_nand4);

        b = 4'b1111;
        for (i = 0; i < 16; i = i + 1) begin a = i[3:0]; #10; end

        b = 4'b0000; #10;
        a = 4'b1111; #10;
        a = 4'b0000; #10;

        $finish;
    end
endmodule
