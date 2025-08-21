module multiplier8bit (in1, in2, product);

    input [7:0] in1, in2;
    output [21:0] product;

    assign product = in1 * in2;
    
endmodule