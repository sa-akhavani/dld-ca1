`timescale 1ns/1ns

module PBDAssign(input a, e, output y0, y1);
	assign #(12) {y0, y1} = {~(a|~e), a&e};
endmodule