`timescale 1ns/1ns

module PBD (input a, e, output y0, y1);
	supply0 Gnd;
	supply1 Vdd;
	wire i, j;
	
//	a nor (not(e))
	pmos #(5, 6, 7) T1 (i, Vdd, a);
	pmos #(5, 6, 7) T3 (j, Vdd, e);
	pmos #(5, 6, 7) T5 (y0, i, j);
	nmos #(3, 4, 5) T2 (y0, Gnd, a);
	nmos #(3, 4, 5) T4 (j, Gnd, e);
	nmos #(3, 4, 5) T6 (y0, Gnd, j);

//	a and e
	wire k, l;
	pmos #(5, 6, 7) T7 (k, Vdd, a);
	pmos #(5, 6, 7) T9 (k, Vdd, e);
	pmos #(5, 6, 7) T11 (y1, Vdd, k);
	nmos #(3, 4, 5) T8 (k, l, a);
	nmos #(3, 4, 5) T10 (l, Gnd, e);
	nmos #(3, 4, 5) T12 (y1, Gnd, k);
endmodule
