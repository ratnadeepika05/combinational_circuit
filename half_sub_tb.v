module half_sub_tb;

reg a,b;
wire d,bout;

half_sub uut(
    .a(a),
    .b(b),
    .d(d),
    .bout(bout)
);

initial begin

    $dumpfile("half_sub.vcd");
    $dumpvars(0,half_sub_tb);

    a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=0;
    #10 a=1; b=1;

    #10 $finish;

end

endmodule