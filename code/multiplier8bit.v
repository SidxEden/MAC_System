module multiplier8bit (in1, in2, product);

    input reg [7:0] in1, in2;
    output reg [21:0] product;

    product = in1 * in2;
    
endmodule