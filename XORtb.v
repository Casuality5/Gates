`timescale 1ns/1ns
`include "XOR.v"

module XORtb;
reg a;
reg b;
wire y;

XOR uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("XORtb.vcd");
    $dumpvars(0, XORtb);

    a=0; b=0; #50;
    a=0; b=1; #50;
    a=1; b=0; #50;
    a=1; b=1; #50;
    $finish;
    end
endmodule
