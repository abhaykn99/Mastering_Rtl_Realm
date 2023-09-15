`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 00:50:07
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test;
reg  clk,rst,sig_i;
wire   det_o;
edge_det d1(.clk(clk),.rst(rst),.sig_i(sig_i),.det_o(det_o));
initial 
begin  clk=0;
#10 rst=1; sig_i=0;
#20 rst=0;sig_i=1;
#30 rst=0;sig_i=1;
#40 rst=0;sig_i=0;
#20 rst=0;sig_i=1;


 end
 always clk=#5 ~clk;
endmodule
