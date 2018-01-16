module card7seg(input [3:0] SW, output[6:0] HEX0);

logic [7:0] hex;
assign HEX0 = hex;
//assign seg7 = hex;

always_comb
begin
	case (SW)
	4'b0001: hex = 7'b0001000;
	4'b0010: hex = 7'b0100100;
	4'b0011: hex = 7'b0110000;
	4'b0100: hex = 7'b0011001;
	4'b0101: hex = 7'b0010010;
	4'b0110: hex = 7'b0000010;
	4'b0111: hex = 7'b1111000;
	4'b1000: hex = 7'b0000000;
	4'b1001: hex = 7'b0010000;
	4'b1010: hex = 7'b1000000;
	4'b1011: hex = 7'b1110001;
	4'b1100: hex = 7'b0011000;
	4'b1101: hex = 7'b0001001;
	default: hex = 7'b1111111;
	endcase
end	

endmodule

