module mac_v1 (a, b, clk, rst, result);

    input [7:0] a, b;
    input clk, rst;
    output [21:0] result;

    wire [7:0] reg_a, reg_b;
    wire [21:0] mul, acc;

    reg_in_8bit in_reg_1(a, rst, clk, reg_a);
    reg_in_8bit in_reg_2(b, rst, clk, reg_b);

    multiplier8bit multiply1(reg_a, reg_b, mul);

    reg_acc_22bit acc_reg(result, rst, clk, acc);

    adder22bit add1(mul, acc, result);

    
endmodule