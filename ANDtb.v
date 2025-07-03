`timescale 1ns/1ns
`include "AND.v"

module ANDtb;
    reg a,b;
    wire y;

    AND uut(
        .a(a),
        .b(b),
        .y(y)

    );


    initial begin
        $dumpfile("ANDtb.vcd");
        $dumpvars(0, ANDtb);
        a=0; b=0; #20;
        a=0; b=1; #20;
        a=1; b=0; #20;
        a=1; b=1; #20;
        $finish;

    end
endmodule