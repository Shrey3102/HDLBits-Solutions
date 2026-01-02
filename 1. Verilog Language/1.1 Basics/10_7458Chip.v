module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    assign p1y = ((p1a & p1b & p1c) | (p1f & p1e & p1d));
    assign p2y = ((p2a & p2b) | (p2c & p2d));

endmodule

//using wire
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire AND1a1b1c;
    wire AND1d1e1f;
    wire AND2a2b;
    wire AND2c2d;
    
    assign AND2a2b = p2a & p2b;
    assign AND2c2d = p2c & p2d;
    
    assign p2y = AND2a2b | AND2c2d;
    
    assign AND1a1b1c = p1a & p1b & p1c;
    assign AND1d1e1f = p1d & p1e & p1f;
    
    assign p1y = AND1a1b1c | AND1d1e1f;


endmodule
