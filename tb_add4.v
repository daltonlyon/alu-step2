`timescale 1ns/1ps
module tb_add4;
    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    add4 uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    integer i;
    initial begin
        $dumpfile("tb_add4.vcd");
        $dumpvars(0, tb_add4);

        cin = 0;
        for (i = 0; i < 16; i = i + 1) begin 
            a = i[3:0]; 
            b = (15 - i)[3:0]; 
            #10; 
        end

        cin = 1;
        for (i = 0; i < 16; i = i + 1) begin 
            a = i[3:0]; 
            b = i[3:0]; 
            #10; 
        end

        $finish;
    end
endmodule