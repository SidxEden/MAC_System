module reg_in_8bit (in, rst, clk, out);

    input [7:0] in;
    input rst, clk;
    output [7:0] out;

    reg [7:0] store;

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