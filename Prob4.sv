`timescale 1ns/1ns

module PBDGate_tb ();
	logic aa = 0, ee = 0, yy0, yy1, yyy0, yyy1;
	PBD UUT (aa, ee, yy0, yy1);
	PBDGate UUT1 (aa, ee, yyy0, yyy1);
	initial begin
		#40 aa = 1;
		#40 ee = 1;
		#40 aa = 0;
		#40 ee = 0;
		#40 $stop;
	end
endmodule