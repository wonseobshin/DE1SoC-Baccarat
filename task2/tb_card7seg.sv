module test_card7seg;
reg [3:0] card;
wire [6:0] seg7;

//intantiate
card7seg omgyes(card, seg7);

initial begin
//Test for A-k
card = 4'b0001;
#50
card = 4'b0010;
#50
card = 4'b0011;
#50
card = 4'b0100;
#50
card = 4'b0101;
#50
card = 4'b0110;
#50
card = 4'b0111;
#50
card = 4'b1000;
#50
card = 4'b1001;
#50
card = 4'b1010;
#50
card = 4'b1011;
#50
card = 4'b1100;
#50
card = 4'b1101;
#50

//Test for when card is invalid (aka >13)
card = 4'b1110;
#50

$stop(0);
end
endmodule
