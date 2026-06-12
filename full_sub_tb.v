module full_sub_tb;

reg a,b,bin;
wire d,bout;

full_sub uut(
    .a(a),
    .b(b),
    .bin(bin),
    .d(d),
    .bout(bout)
);

initial begin

    $dumpfile("full_sub.vcd");
    $dumpvars(0,full_sub_tb);

    a=0; b=0; bin=0;
    #10 a=0; b=0; bin=1;
    #10 a=0; b=1; bin=0;
    #10 a=0; b=1; bin=1;
    #10 a=1; b=0; bin=0;
    #10 a=1; b=0; bin=1;
    #10 a=1; b=1; bin=0;
    #10 a=1; b=1; bin=1;

    #10 $finish;

end

endmodule