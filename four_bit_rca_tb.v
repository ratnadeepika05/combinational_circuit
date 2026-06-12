module four_bit_rca_tb;

reg [3:0] a;
reg [3:0] b;
reg cin;

wire [3:0] sum;
wire cout;

four_bit_rca uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin

    $dumpfile("four_bit_rca.vcd");
    $dumpvars(0, four_bit_rca_tb);

    a = 4'b0000; b = 4'b0000; cin = 0;
    #10 a = 4'b0001; b = 4'b0010; cin = 0;
    #10 a = 4'b0011; b = 4'b0100; cin = 0;
    #10 a = 4'b1010; b = 4'b0101; cin = 0;
    #10 a = 4'b1111; b = 4'b0001; cin = 0;
    #10 a = 4'b1111; b = 4'b1111; cin = 0;

    #10 $finish;

end

endmodule