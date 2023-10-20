`timescale 1ns / 1ps



module d_ff_tb;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	d_ff uut (
		.d(d), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);

   initial begin
	clk=1;
	forever #50 clk=~clk;
	end

	initial begin
	d=0;
	#100; d=1;

	end
	
	initial begin
	$monitor("time=%g clk=%b d=%bq=%b qbar=%b",$time,clk,d,q,qbar);
	#200 $finish;
	end 
      
endmodule