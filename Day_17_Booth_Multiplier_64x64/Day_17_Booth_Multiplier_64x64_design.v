module booth16x16( 
  input signed [63:0]M, 
  input signed [63:0]Q, 
  output reg signed [127:0]pro); 
  reg Q1; 
  reg [63:0]Mcomp; 
  reg [1:0]x; 
  integer i; 
  always@(Q,M)begin 
    pro=64'd0; 
    Q1=1'b0; 
    Mcomp=-M; 
    for(i=0;i<64;i=i+1) begin 
      x={Q[i],Q1}; 
      case(x) 
        2'b01:pro[127:64]=pro[127:64]+M; 
        2'b10:pro[127:64]=pro[127:64]+Mcomp; 
      endcase 
      pro = pro >> 1; 
      pro[127] = pro[126]; 
      Q1=Q[i]; 
    end 
  end 
endmodule
