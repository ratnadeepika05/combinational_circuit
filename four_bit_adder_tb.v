module four_bit_adder_tb;

reg [3:0] a;
reg [3:0] b;

wire [3:0] sum;
wire carry;

four_bit_adder uut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin

    $dumpfile("four_bit_adder.vcd");
    $dumpvars(0, four_bit_adder_tb);

    a = 4'b0000; b = 4'b0000;
    #10 a = 4'b0001; b = 4'b0010;
    #10 a = 4'b0110; b = 4'b0011;
    #10 a = 4'b1010; b = 4'b0101;
    #10 a = 4'b1111; b = 4'b0001;
    #10 a = 4'b1111; b = 4'b1111;

    #10 $finish;

end

endmodule