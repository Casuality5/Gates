`timescale 1ns/1ns
`include "NOT.v"

module NOTtb;
reg a;
wire y;

NOT utt(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("NOTtb.vcd");
    $dumpvars(0, NOTtb);

    a=0; #20;
    a=1; #20;
    a=0; #20;

    $finish;
    end
endmodule
