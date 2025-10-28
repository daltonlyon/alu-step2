//4-bit unsigned integer division with remainder
module div4 (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire [3:0] q,
    output wire [3:0] r
);
    assign q = (b == 0) ? 4'd0 : (a / b);
    assign r = (b == 0) ? a    : (a % b);
endmodule
