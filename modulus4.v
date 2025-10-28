//4-bit modulus (unsigned)
module modulus4 (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire [3:0] r
);
    assign r = (b == 0) ? 4'd0 : (a % b);
endmodule
