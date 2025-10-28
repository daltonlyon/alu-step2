`timescale 1ns/1ps
module tb_mult4;
    reg  [3:0] a, b;
    wire [3:0] prod_lo, prod_hi;

    mult4 uut (.a(a), .b(b), .prod_lo(prod_lo), .prod_hi(prod_hi));

    integer i;
    initial begin
        $dumpfile("tb_mult4.vcd");
        $dumpvars(0, tb_mult4);

        a = 4'd0;  b = 4'd0;  #10;
        a = 4'd1;  b = 4'd9;  #10;
        a = 4'd3;  b = 4'd7;  #10;
        a = 4'd15; b = 4'd15; #10;
        a = 4'd8;  b = 4'd2;  #10;

        b = 4'd5;
        for (i = 0; i < 16; i = i + 1) begin a = i[3:0]; #10; end

        $finish;
    end
endmodule
