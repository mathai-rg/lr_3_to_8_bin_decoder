/* task from course - Verilog HDL for Digital Design and Functional Verification*/

module decoder_3_to_8(
	
	//inputs
	input en,
	input [2:0] a,
	
	//outputs
	output reg [7:0] out );
	
	always @(*) begin
		
		if(en != 1) begin
			out = 0;
		end
		else begin
			case(a)
				3'b000: out = 8'b00000001;
				3'b001: out = 8'b00000010;
				3'b010: out = 8'b00000100;
				3'b011: out = 8'b00001000;
				3'b100: out = 8'b00010000;
				3'b101: out = 8'b00100000;
				3'b110: out = 8'b01000000;
				3'b111: out = 8'b10000000;
				//default
				default: out = 8'b00000000;
			endcase
		end
	end

endmodule