module Full_Adder(a, b, carryin, carry, sum);

	input a, b, carryin;
	output carry, sum;

	assign sum = a ^ b ^ carryin;
	assign carry = (a & b) | (a & carryin) | (b & carryin);

endmodule