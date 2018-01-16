module card7seg(input [3:0] reg4, output[6:0] HEX0);

logic [7:0] hex;
assign HEX0 = hex;

always_comb
begin
	case (reg4)
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













/*
module lab4_top(SW,KEY,HEX0);
  input [9:0] SW;
  input [3:0] KEY;
  output [6:0] HEX0;
  reg [6:0] HEX0;

  wire CLK;
  wire RESET;
  reg [6:0] present_state;

  assign RESET=~KEY[1];//reset is when key 1 is pressed
  assign CLK=~KEY[0];//clock when key 0 is pressed

  always @(posedge CLK)
  begin

		if (RESET) begin
			present_state=7'b0011001;//4
			end
		else if (~SW[0])
			begin
				case (present_state)
				7'b0011001: present_state = 7'b0010000;//9
				7'b0010000: present_state = 7'b0000000;//8
				7'b0000000: present_state = 7'b0100100;//2
				7'b0100100: present_state = 7'b1000000;//0
				7'b1000000: present_state = 7'b0011001;//original 4
				endcase
			end
		else
			begin
				case (present_state)
				7'b1000000: present_state = 7'b0100100;//0
				7'b0100100: present_state = 7'b0000000;//2
				7'b0000000: present_state = 7'b0010000;//8
				7'b0010000: present_state = 7'b0011001;//9
				7'b0011001: present_state = 7'b1000000;//original 4
				endcase
			end
		HEX0 = present_state;
end
endmodule


*/
