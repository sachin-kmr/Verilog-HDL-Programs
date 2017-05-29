module Basic_gates(inp1, inp2, AND, OR, NOT, NOR, NAND, XOR, XNOR);
	input inp1, inp2;
	output AND, OR, NOT, NOR, NAND, XOR, XNOR;

	assign AND = inp1 & inp2;
	assign OR = inp1 | inp2;
	assign NOT = ~inp1;
	assign NOR = ~(inp1 | inp2);
	assign NAND = ~(inp1 & inp2);
	assign XOR = inp1 ^ inp2;
	assign XNOR = ~(inp1 ^ inp2);

endmodule