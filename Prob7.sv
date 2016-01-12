`timescale 1ns/1ns

module LQM (input n2, n1, n0, output w7, w6, w5, w4, w3, w2, w1, w0);
	wire ff, oo, qq, rr, zz, xx;

	PBDAssign p1 (n2, 1, oo, ff);
//	Right Side
	PBDAssign p2 (n1, oo, rr, qq);
	PBDAssign p3 (n0, rr, w0, w1);
	PBDAssign p4 (n0, qq, w2, w3);
//	Left Side
	PBDAssign p5 (n1, ff, zz, xx);
	PBDAssign p6 (n0, zz, w4, w5);
	PBDAssign p7 (n0, xx, w6, w7);
endmodule