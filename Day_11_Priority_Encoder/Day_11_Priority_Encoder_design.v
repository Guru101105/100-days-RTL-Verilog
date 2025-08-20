module pencod(
  input [3:0]A,
  input v,
  output reg[1:0]D);
  always@(*)begin
    if (v) begin
      assign D[0]=A[3]| (A[1]&(!A[2]));
      assign D[1]=A[2]|A[3];
    end
    else begin
      assign D=2'b00;
    end
  end 
endmodule
