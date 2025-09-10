module booth4x4( 
  input signed [3:0]M, 
  input signed [3:0]Q, 
  output reg signed [7:0]pro); 
  reg Q1; 
  reg [3:0]Mcomp; 
  reg [1:0]x; 
  integer i; 
  always@(Q,M)begin 
    pro=8'd0; 
    Q1=1'b0; 
    Mcomp=-M; 
    for(i=0;i<4;i=i+1) begin 
      x={Q[i],Q1}; 
      case(x) 
        2'b01:pro[7:4]=pro[7:4]+M; 
        2'b10:pro[7:4]=pro[7:4]+Mcomp; 
      endcase 
      pro = pro >> 1; 
      pro[7] = pro[6]; 
      Q1=Q[i]; 
    end 
  end 
endmodule

