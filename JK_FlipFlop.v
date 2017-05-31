module JK_FlipFlop(J, K, Q, Qcomp, clk);

	input J, K, clk;
	output Q, Qcomp;
	
	reg Q, Qcomp;
	initial begin Q=1'b0; Qcomp=1'b1; end

	always @(posedge clk)
	begin
		case({J,K})
			{1'b0, 1'b0}:begin Q=Q; Qcomp=Qcomp; end
			{1'b0, 1'b1}:begin Q=0; Qcomp=1; end
			{1'b1, 1'b0}:begin Q=1; Qcomp=0; end
			{1'b1, 1'b1}:begin Q=~Q; Qcomp=~Qcomp; end
		endcase
	end
endmodule
