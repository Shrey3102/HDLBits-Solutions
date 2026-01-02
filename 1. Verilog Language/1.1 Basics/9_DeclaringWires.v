module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire logic AnB;
    wire logic CnD;
    
    assign AnB = a & b;
    assign CnD = c & d;
    assign out = AnB | CnD;
    assign out_n = ~out;

endmodule
