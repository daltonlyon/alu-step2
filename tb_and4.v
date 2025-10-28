`timescale 1ns/1ps
module tb_and4;
    reg  [3:0] a, b;
    wire [3:0] y;
    and4 uut (.a(a), .b(b), .y(y));

    integer i;
    initial begin
        $dumpfile("tb_and4.vcd");
        $dumpvars(0, tb_and4);

        b = 4'b1010;
        for (i = 0; i < 16; i = i + 1) begin a = i[3:0]; #10; end

        b = 4'b1100;
        for (i = 0; i < 16; i = i + 1) begin a = i[3:0]; #10; end

        $finish;
    end
endmodule
