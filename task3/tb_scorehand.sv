module tb_scorehand();

reg [3:0] card1,card2,card3;
//reg [3:0] card;
wire [3:0] total;
//wire [3:0] value;

scorehand DUT(card1,card2,card3,total);
//getvalue DUTT(card,value);

initial begin
//normal case
card1 = 0'b0001;//A
card2 = 0'b0100;//4
card3 = 0'b1101;//K
#50// ans=5/0101
// only two card
card1 = 0'b0010;//2
card2 = 0'b0101;//5
card3 = 0'b0000;//0
#50// ans=7/0111
// misc. w/ modulus
card1 = 0'b0101;//5
card2 = 0'b0011;//3
card3 = 0'b1000;//8
#50// ans=6/0110
$stop;
end
endmodule
