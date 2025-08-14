module decoder3x8(
  input  [2:0]x,
  output reg [7:0]y);
  always@(*) begin
    case(x)
      3'b000:assign y=8'b10000000;
      3'b001:assign y=8'b01000000;
      3'b010:assign y=8'b00100000;
      3'b011:assign y=8'b00010000;
      3'b100:assign y=8'b00001000;
      3'b101:assign y=8'b00000100;
      3'b110:assign y=8'b00000010;
      3'b111:assign y=8'b00000001;
    endcase
  end
endmodule
 
