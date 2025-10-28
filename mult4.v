//4x4-bit unsigned multiplier -> 8-bit product split lo/hi nibbles
module mult4 (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire [3:0] prod_lo,
    output wire [3:0] prod_hi
);
    wire [7:0] p = a * b;
    assign prod_lo = p[3:0];
    assign prod_hi = p[7:4];
endmodule
