module multiplier8bit (in1, in2, product);

    input [7:0] in1, in2;
    output reg [21:0] product;

    reg [7:0] a, b;

    always @(*) begin
        a = in1;
        b = in2;
        product <= a * b;  
    end

    
endmodule