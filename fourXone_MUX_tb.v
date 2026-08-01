`timescale 1ns / 1ps

module fourXone_MUX_tb;

    reg [3:0] i;
    reg [1:0] s;
    wire o;

    fourXone_MUX uut (
        .i(i),
        .s(s),
        .o(o)
    );

    initial begin
        $monitor("Time=%0t i=%b s=%b o=%b", $time, i, s, o);

        i = 4'b1010;

        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;

        $finish;
    end

endmodule
