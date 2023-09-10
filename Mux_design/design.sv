// simple 2x1 mux with 16bit input data lines
module mux2x1(
  input wire [15:0] a_i,
  
  input wire[15:0] b_i,
  input wire sel_i,
  output [15:0]y_o );
  
assign y_o=sel_i?a_i:b_i;
   endmodule
