module four_bit_full_adder(a0, a1, a2, a3, b0, b1, b2, b3, sum0, sum1, sum2, sum3, carry);

	input a0, a1, a2, a3, b0, b1, b2,b3;
	output sum0, sum1, sum2, sum3, carry;

	assign carry_in = 1;
	assign sum0 = a0 ^ b0 ^ carry_in;
	assign carry0 = a0&b0 | a0&carry_in | b0&carry_in;

	assign sum1 = a1 ^ b1 ^ carry0;
	assign carry1 = a1&b1 | a1&carry0 | b1&carry0;

	assign sum2 = a2 ^ b2 ^ carry1;
	assign carry2 = a2&b2 | a2&carry1 | b2&carry2;

	assign sum3 = a3 ^ b3 ^ carry2;
	assign carry = a3&b3 | a3&carry2 | b3&carry2;

endmodule

	