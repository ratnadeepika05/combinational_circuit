module half_adder(
    input a,
    input b,
    output s,
    output cy
);

assign s  = a ^ b;
assign cy = a & b;

endmodule