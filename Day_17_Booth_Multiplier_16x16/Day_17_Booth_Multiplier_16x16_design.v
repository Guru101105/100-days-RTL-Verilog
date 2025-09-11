module booth16x16( 
  input signed [15:0]M, 
  input signed [15:0]Q, 
  output reg signed [31:0]pro); 
  reg Q1; 
  reg [15:0]Mcomp; 
  reg [1:0]x; 
  integer i; 
  always@(Q,M)begin 
    pro=32'd0; 
    Q1=1'b0; 
    Mcomp=-M; 
    for(i=0;i<16;i=i+1) begin 
      x={Q[i],Q1}; 
      case(x) 
        2'b01:pro[31:16]=pro[31:16]+M; 
        2'b10:pro[31:16]=pro[31:16]+Mcomp; 
      endcase 
      pro = pro >> 1; 
      pro[31] = pro[30]; 
      Q1=Q[i]; 
    end 
  end 
endmodule
