module counter
(
	input  	i_clk,			//FPGA Input clock
	input 	i_rst,
	output [3:0] o_units,
	output [3:0] o_tens,
	output [3:0] o_thousands
);

	always @(posedge i_clk)
	begin
	end
	
endmodule