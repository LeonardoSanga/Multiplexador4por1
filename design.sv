module mux4x1 (x1, x2, x3, x4, s1, s2, f);
  
  input x1, x2, x3, x4, s1, s2;
  output reg f;
  
  always@ (x1 or x2 or x3 or x4 or s1 or s2) begin
    if((s2==0) && (s1==0))
         f = x1;
    else if((s2==0) && (s1==1))
         f = x2;
    else if((s2==1) && (s1==0))
         f = x3;
      else
        f = x4;
  end;
  
endmodule