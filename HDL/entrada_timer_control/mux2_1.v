module multiplexer (a, b, c, d, s, o); 
  input a,b,c,d; 
  input [1:0] s; 
  output o; 
  reg o; 
 
  always @(a or b or c or d or s) 
  begin 
    case (s) 
      2'b00   : o = a; 
      2'b01   : o = b; 
      2'b10   : o = c; 
      default : o = d; 
    endcase 
  end
  
endmodule
