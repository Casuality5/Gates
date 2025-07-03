`timescale 1ns/1ns
`include "OR.v"

module ORtb;
reg a, b;
wire y;
OR uut(
    .a(a),
    .b(b),
    .y(y)
    );
    initial begin
        $dumpfile("ORtb.vcd");
        $dumpvars(0, ORtb);

        a=0; b=0; #40;
        a=0; b=1; #40;
        a=1; b=0; #40;
        a=1; b=1; #40;
        $finish;
        end
endmodule

