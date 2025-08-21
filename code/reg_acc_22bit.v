module reg_acc_22bit (in, rst, clk, out);

    input [21:0] in;
    input rst, clk;
    output [21:0] out;

    reg [21:0] store;

    initial begin
        store = 0;
    end

    always @(posedge clk or posedge rst ) begin
        if(rst)
        begin
            store <= 0;
        end

        else    begin
            store <= in;

        end   
    end

    assign out = store;
     
endmodule