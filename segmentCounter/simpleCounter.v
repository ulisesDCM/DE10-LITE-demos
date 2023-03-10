module counter
(
	input  	i_clk,			//FPGA Input clock
	input 	i_rst,
	output [3:0] o_units,
	output [3:0] o_tens,
	output [3:0] o_hundreds,
	output [3:0] o_thousands
);
	
	//Variable declarations
	reg [32:0]r_tmp_counter = 0;
	reg [3:0] r_units = 0;
	reg [3:0] r_tens = 0;
	reg [3:0] r_hundreds = 0;
	reg [3:0] r_thousands = 0;
	
	//This 'always' block is executed every 100 ns
	always @(posedge i_clk)
	begin
		if(i_rst == 1)
		begin
			r_tmp_counter <= 0;
			r_units <= 0;
			r_tens <= 0;
			r_hundreds <= 0;
			r_thousands <= 0;
		end
		else
		begin
			if(r_tmp_counter == (10000000-1))
			begin
				r_tmp_counter <= 0;
				if(r_units == (10-1))
				begin
					r_units <= 0;
					if(r_tens == (10-1))
					begin
						r_tens <= 0;
						if(r_hundreds == (10-1))
						begin
							r_hundreds <= 0;
							if(r_thousands == (10-1))
							begin
								r_thousands <= 0;
							end
							else
							begin
								r_thousands <= r_thousands + 1;
							end
						end
						else
						begin
							r_hundreds <= r_hundreds+1;
						end
					end
					else
					begin
						r_tens <= r_tens + 1;
					end
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
	assign o_hundreds = r_hundreds;

endmodule