module reg_acc_22bit (in, rst, clk, out);

    input [21:0] in;
    input rst, clk;
    output reg [21:0] out;

    initial begin
        out = 0;
    end

    always @(posedge clk or posedge rst ) begin
        if(rst)
        begin
            out <= 0;
        end

        else    begin
            out <= in;

        end   
    end
     
endmodule