//testbench for 3 to 8 binary decoder

`timescale 1ns / 100ps

module decoder_3_to_8_tb();
	
	//inputs
	reg en;
	reg [2:0] a;
	
	//outputs
	wire [7:0] out;
	
	//testbench variables
	integer i;
	
	decoder_3_to_8 d3t8a(
		//inputs
		.en(en),
		.a(a),
		//outputs
		.out(out) );
		
	initial begin
		#1;
		en = 0;
		#2;
		a = 3'b011;
		#1;
		a = 3'b100;
		#2;
		en = 1;
		#1;
		a = 3'b011;
		#1;
		a = 3'b100;
		#2;
		a = 3'b000;
		for (i = 0; i < 7; i = i + 1) begin
			#1;
			a = a + 1;
			end
		end
		
endmodule