module adder22bit (in1, in2, sum);

    input reg [21:0] in1, in2;
    output [21:0] sum;

    assign sum = in1 + in2;
    
endmodule