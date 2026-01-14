module top_module ( input a, input b, output out );
    mod_a t1(.in1(a), .in2(b), .out(out));
    // Alternative way to instantiate a module
    // mod_a t1(a, b, out);
endmodule
