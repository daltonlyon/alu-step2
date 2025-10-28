`timescale 1ns/1ps
module tb_div4;
    reg  [3:0] a, b;
    wire [3:0] q, r;

    div4 uut (.a(a), .b(b), .q(q), .r(r));

    integer i;
    initial begin
        $dumpfile("tb_div4.vcd");
        $dumpvars(0, tb_div4);

        // A few explicit sanity checks
        a = 4'd7;  b = 4'd3;  #10; // q=2, r=1
        a = 4'd9;  b = 4'd3;  #10; // q=3, r=0
        a = 4'd15; b = 4'd4;  #10; // q=3, r=3
        a = 4'd8;  b = 4'd5;  #10; // q=1, r=3

        // Division by zero behavior
        a = 4'd9;  b = 4'd0;  #10; // q=0, r=9 (policy)

        // Sweep with fixed divisor
        b = 4'd3;
        for (i = 0; i < 16; i = i + 1) begin
            a = i[3:0];
            #10;
        end

        $finish;
    end
endmodule
