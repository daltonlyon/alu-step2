`timescale 1ns/1ps
module tb_or4;
    reg  [3:0] a, b;
    wire [3:0] y;
    or4 uut (.a(a), .b(b), .y(y));

    integer i;
    initial begin
        $dumpfile("tb_or4.vcd");
        $dumpvars(0, tb_or4);

        b = 4'b0011;
        for (i = 0; i < 16; i = i + 1) begin a = i[3:0]; #10; end

        b = 4'b0101;
        for (i = 0; i < 16; i = i + 1) begin a = i[3:0]; #10; end

        $finish;
    end
endmodule
