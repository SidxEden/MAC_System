`timescale 1ns/10ps
module mac_v1_tb;

reg [7:0] a, b;
wire [21:0] result;
reg rst, clk;

mac_v1 test1(.a(a), .b(b), .clk(clk), .rst(rst), .result(result));

initial begin
	clk = 0;
	rst = 0;
end

always #5 clk = ~clk;

initial begin
	$monitor($time, "a = %d, b = %d, result = %d, rst = %b, clk = %b", a,b,result,rst,clk);
	#20	a = 8'd134; b = 8'd120; 
	#20	a = 8'd10; b = 8'd10; 
	#20	a = 8'd101; b = 8'd21; 
	#20 rst = 1;
	#20 rst = 0;
	#20 a = 8'd20; b = 8'd20;
	#20 a = 8'd20; b = 8'd20;
	#20	$finish;
end

endmodule