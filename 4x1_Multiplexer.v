module Mux(select_0, select_1, inp1, inp2, inp3, inp4, out);
	
	input select_0, select_1, inp1, inp2, inp3, inp4;
	output out;

	reg out;

	always @(select_0 or select_1 or inp1 or inp2 or inp3 or inp4)
	begin
		if(select_0==0 && select_1==0)
			assign out = inp1;
		if(select_0==0 && select_1==1)
			assign out = inp2;
		if(select_0==1 && select_1==0)
			assign out = inp3;
		if(select_0==1 && select_1==1)
			assign out = inp4;
	end
endmodule

		