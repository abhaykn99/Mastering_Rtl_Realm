`timescale 1ns / 1ps


module siso_tb;

	// Inputs
	reg din;
	reg clk;
	reg rst;

	// Outputs
	wire qout;
	wire qoutb;

	// Instantiate the Unit Under Test (UUT)
	siso_bh uut (
		.din(din), 
		.clk(clk), 
		.rst(rst), 
		.qout(qout), 
		.qoutb(qoutb)
	);

initial begin

clk =1'b0;
rst =1'b1;
din=1'b1;
#50 rst =1'b0;
#100 din=1'b0;
#100 din=1'b0;
#100 din=1'b1;

end

always #50 clk = ~clk;
	
   initial begin
	$monitor("time=%g rst=%b clk=%b din=%b qout=%b qbar=%b",$time,rst,clk,din,qout,qoutb);
	end
	
      
endmodule