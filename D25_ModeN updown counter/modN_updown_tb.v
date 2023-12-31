`timescale 1ns / 1ps



module modN_updown_tb;

	// Inputs
	reg clk;
	reg reset;
	reg upordown;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	modN_counter uut (
		.clk(clk), 
		.reset(reset), 
		.upordown(upordown), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
         #50 reset =0; upordown = 0;
        #200;
        upordown = 1;
      #200;
        reset = 1;
        upordown = 0;
        #100;
        reset = 0;  
   
      
end

always #10 clk=~clk;

initial 
begin
$monitor("UporDown=%b | Count=%b",upordown,count);
#1000 $finish;
end
      
endmodule

