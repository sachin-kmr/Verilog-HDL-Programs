module binary_counter(clk, reset, out);
	
	input clk, reset;
	output [3:0] out;

	reg [3:0] out;

	initial out = 0;

	always @(posedge(clk))
	begin
		if(reset)
			out <= 0;
		else
			out <= out + 1;
	end
endmodule
