`timescale 1ns/1ns

module LQM_tb ();
	logic nn2 = 0, nn1 = 0, nn0 = 0, ww0, ww1, ww2, ww3, ww4, ww5, ww6, ww7;
	LQM lq (nn2, nn1, nn0, ww7, ww6, ww5, ww4, ww3, ww2, ww1, ww0);
	initial begin
		#80 nn0 = 1;
		#80 nn1 = 1;
		#80 nn0 = 0;
		#80 nn2 = 1;
		#80 nn0 = 1;
		#80 nn1 = 0;
		#80 nn0 = 0;
		#80 $stop;
	end
endmodule