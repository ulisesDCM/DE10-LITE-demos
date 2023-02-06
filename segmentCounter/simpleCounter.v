module counter
(
	input  	i_clk,			//FPGA Input clock
	input 	i_rst,
	output [3:0] o_units,
	output [3:0] o_tens,
	output [3:0] o_thousands
);

	reg [32:0]r_tmp_counter = 0;
	reg [3:0] r_units = 0;
	reg [3:0] r_tens = 0;
	reg [3:0] r_thousands = 0;
	
	//This 'always' block is executed every 100 ns
	always @(posedge i_clk)
	begin
		if(i_rst == 1)
		begin
			r_tmp_counter <= 0;
			r_units <= 0;
			r_tens <= 0;
			r_thousands <= 0;
		end
		else
		begin
			if(r_tmp_counter == (100))
			begin
				r_tmp_counter <= 0;
				if(r_units == 9)
				begin
					r_units <= 0;
				end
				else
				begin
					r_units <= r_units +1;
				end
			end
			else
			begin
				r_tmp_counter <= r_tmp_counter + 1;
			end
		end		
	end
	
	assign o_units = r_units;
	assign o_tens  = r_tens;
	assign o_thousands = r_thousands;
endmodule