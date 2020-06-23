module MUX_2_1_4bits
(
	input [WIDTH-1:0] MUXin1,
	input [WIDTH-1:0] MUXin2,
	input MUXop,
	output reg [WIDTH-1:0] MUXout
);
parameter WIDTH=4;

	always@(*)
		if(MUXop==0)
			MUXout<=MUXin1;
		else if(MUXop==1)
			MUXout<=MUXin2;
			
endmodule 