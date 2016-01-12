`timescale 1ns/1ns

module PBDGate (input a, e, output y0, y1);
	wire i;

//	nor (a, ~e)
	not #(4) U1 (i, e);
	nor #(8) U2 (y0, i, a);

//	a and e
	wire k, l;
	nand #(8) U4 (k, a, e);
	not #(4) (y1, k);
endmodule