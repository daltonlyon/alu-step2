`timescale 1ns/1ps
module tb_modulus4;
    reg  [3:0] a, b;
    wire [3:0] r;

    modulus4 uut (.a(a), .b(b), .r(r));

    integer i;
    initial begin
        $dumpfile("tb_modulus4.vcd");
        $dumpvars(0, tb_modulus4);

        a = 4'd9;  b = 4'd2; #10; // r=1
        a = 4'd9;  b = 4'd3; #10; // r=0
        a = 4'd9;  b = 4'd4; #10; // r=1
        a = 4'd15; b = 4'd7; #10; // r=1
        a = 4'd8;  b = 4'd5; #10; // r=3

        b = 4'd3;
        for (i = 0; i < 16; i = i + 1) begin a = i[3:0]; #10; end

        $finish;
    end
endmodule
