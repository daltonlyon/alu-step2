//4-bit bitwise OR
module or4 (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire [3:0] y
);
    assign y = a | b;
endmodule
