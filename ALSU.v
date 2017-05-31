module ALSU(select, input1, input2, out);
	
	input [4:0] select;
	input [3:0] input1, input2;
	output [7:0] out;

	reg [7:0] out;
	always @(*)
	begin
	case(select)
		5'b00000: out = input1;
		5'b00001: out = input1 + 1;
		5'b00010: out = input1 + input2;
		5'b00011: out = input1 + input2 + 1;
		5'b00100: out = input1 - input2 - 1;
		5'b00101: out = input1 - input2;
		5'b00110: out = input1 - 1;
		5'b00111: out = input1;
		5'b0101x: out = input1 & input2;
		5'b0100x: out = input1 | input2;
		5'b0110x: out = input1 ^ input2;
		5'b0111x: out = ~input1;
		5'b10xxx: out = input1 << 1;
		5'b11xxx: out = input1 >> 1;
	endcase
	end
endmodule
	

