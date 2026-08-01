module fourXone_MUX(
    input [3:0] i,
    input [1:0] s,
    output o
    );
    
    wire s0bar,s1bar,w1,w2,w3,w4;
    
    not n1(s0bar,s[0]);
    not n2(s1bar,s[1]);
    
    and a1(w1,s0bar,s1bar,i[0]);
    and a2(w2,s[0],s1bar,i[1]);
    and a3(w3,s0bar,s[1],i[2]);
    and a4(w4,s[0],s[1],i[3]);
    
    or ans(o,w1,w2,w3,w4);
    
    
endmodule
