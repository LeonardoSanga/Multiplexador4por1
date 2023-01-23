`timescale 1ns / 1ps

module mux4x1_tb;
  
  logic x1, x2, x3, x4, s1, s2;
  logic f;
  integer k;
  
  mux4x1 UUT (x1, x2, x3, x4, s1, s2, f);
  
  initial begin
    
    $dumpdfile("dump.vcd");
    $dumpvars(0);
    $dumpformat(-9, 0, "ns", 3);
    for(k = 0; k < 64; k = k + 1) begin
      
      x4 = k[0];
      x3 = k[1];
      x2 = k[2];
      x1 = k[3];
      s1 = k[4];
      s2 = k[5];
      #10;
      
      $write("%t: s2=%b, s1=%b, x1=%b, x2=%b, x3=%b, x4=%b, f=%b \n", $time, s2, s1, x1, x2, x3, x4, f);
    end;
    $finish;
  end;
  
endmodule