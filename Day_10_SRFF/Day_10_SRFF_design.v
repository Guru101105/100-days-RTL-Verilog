// condisering srff with nor gates
module srff(
  input s,r,
  output reg q,qbar);
  always@(s or r or q)begin
    if(s==0 && r==0)begin
      q=q;
      qbar=!q;
    end
    else if(s==0 && r==1)begin
      q=0;
      qbar=!q;
    end
    else if(s==1 && r==0)begin
      q=1;
      qbar=!q;
    end
    else begin
      q=1'bx;
      qbar=1'bx;
    end
  end
endmodule
  
    
