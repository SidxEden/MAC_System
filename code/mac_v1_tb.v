`timescale 1ns/10ps
module mac_v1_tb;

reg [21:0] in;
wire [21:0] out;
reg rst, clk;

reg_acc_22bit test1(.in(in), .rst(rst), .clk(clk), .out(out));

initial begin
	clk = 0;
	rst = 0;
end

always #5 clk = ~clk;

initial begin
	$monitor($time, "in = %d, out = %d, rst = %b, clk = %b", in,out,rst,clk);
	#20	in = 22'd134; rst = 0;
	#20	in = 22'd132; rst = 0;
	#20	in = 22'd200; rst = 0;
	#20	in = 22'd150; rst = 1;
	#20	in = 22'd134; rst = 0;
	#20	$finish;
end

endmodule