`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 16:37:53
// Design Name: 
// Module Name: test_prior
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


module test_prior;
reg [3:0]a;
wire [1:0]y;
prior_encod p1(.a(a),.y(y));
initial begin 
#10 a=4'b0010;
#10 a=4'b1010;
#10 a=4'b0011;
#10 a=4'b0110;
#10 a=4'b1010;
#10 a=4'b0111;
#10 a=4'b0000;


end

endmodule
