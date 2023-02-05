module hexSegment
		(
			input [3:0] i4_hex_value,
			input i_seg_dot,
			output [6:0] o7_seg_data,
			output o_seg_dot
		);
		
		reg [6:0]r_tmp_ans;
		reg r_dbg_var = 1'b0;
	
		always @(*) 
		begin
			case(i4_hex_value)
				4'h0: r_tmp_ans[6:0] <= ~7'h3F;
				4'h1: r_tmp_ans[6:0] <= ~7'h06;
				4'h2: r_tmp_ans[6:0] <= ~7'h5B;
				4'h3: r_tmp_ans[6:0] <= ~7'h4F;
				4'h4: r_tmp_ans[6:0] <= ~7'h66;
				4'h5: r_tmp_ans[6:0] <= ~7'h6D;
				4'h6: r_tmp_ans[6:0] <= ~7'h7D;
				4'h7: r_tmp_ans[6:0] <= ~7'h07;
				4'h8: r_tmp_ans[6:0] <= ~7'h7F;
				4'h9: r_tmp_ans[6:0] <= ~7'h6F;
				4'hA: r_tmp_ans[6:0] <= ~7'h77;
				4'hB: r_tmp_ans[6:0] <= ~7'h7C;
				4'hC: r_tmp_ans[6:0] <= ~7'h39;
				4'hD: r_tmp_ans[6:0] <= ~7'h5E;
				4'hE: r_tmp_ans[6:0] <= ~7'h79;
				4'hF: r_tmp_ans[6:0] <= ~7'h71;
			endcase		
		end
		
		assign o7_seg_data = r_tmp_ans;
		assign o_seg_dot = i_seg_dot;

endmodule