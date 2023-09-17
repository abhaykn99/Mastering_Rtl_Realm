`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhay 
// 
// Create Date: 13.09.2023 15:18:05
// Design Name: edge detector
// Module Name: edge_det
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


module edge_det(input clk,rst,sig_i,output reg  det_o
 );
 
  //states 
   parameter idle =2'b00;
   parameter edg =2'b01;
   parameter waiting=2'b10;
   reg [1:0] current_state,next_state ;
   
 always@(posedge clk)
   if(rst)
    current_state<=idle;
   else 
     current_state<=next_state;
     
    always@(current_state or sig_i)
      case(current_state)
      //input signal at 0 
        idle:
           if(sig_i) begin 
                  det_o<=1;
                   next_state<=edg;
                   end 
            else 
               next_state<=idle;
               
               
        edg: //already state change detected
           if(~sig_i) begin 
              det_o<=0;
               next_state<=idle;
                end
              else 
              next_state<=waiting;
         waiting:
            if(sig_i)
               begin det_o<=0;
               next_state<=waiting;
               end
               else 
               next_state<=idle;
         endcase
         
              
                     
    
endmodule
