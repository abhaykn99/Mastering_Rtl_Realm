`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhay
// 
// Create Date: 15.09.2023 16:25:09
// Design Name: 
// Module Name: prior_encod
// Project Name: priority encoder
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


module prior_encod(input [3:0]a,output  reg [1:0]y);
always@( a) begin 

     if(a[3]==1'b1)
         y=2'b11;
     else if (a[2]==1'b1)
         y=2'b10;
      else if (a[1]==1'b1)
         y=2'b01;
         else if (a[0]==1'b1)
         y=2'b00;
         else 
           y=2'bxx;
    
 end

endmodule
