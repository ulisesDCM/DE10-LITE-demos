module simpleCounter_TB();
	reg r_clock = 1'b0;
	always
	begin
		#1;
		r_clock <= ~r_clock;
	end
	
endmodule