module mux_test;
  logic  [15:0] a_i;
  
  logic [15:0] b_i;
  logic  sel_i;
  logic  [15:0]y_o;
  mux2x1 m1(.*);
  initial begin 
   #1; a_i=16'hAF70;b_i=16'hFF00;sel_i=1'b0;
    $monitor("value in y_0=%h at time =%t",y_o,$time);
   #5;a_i=16'hCFE0;b_i=16'h7F60;sel_i=1'b1;
   // $display("value in y_0=%h at time =%t",y_o,$time);
  end

  initial begin
    $dumpfile("mux_test.vcd");
    $dumpvars(0, mux_test);
  end

endmodule
 
    
