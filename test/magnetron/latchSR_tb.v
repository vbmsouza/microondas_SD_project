`timescale 1ns/1ps
module latchsr_tb();
    integer i;
	reg Reset, Set;
	wire mon;

	latchsr DUT(.Reset(Reset), .Set(Set), .m_on(mon));
	
    initial
		begin
		
			$dumpfile("latchSR.v");
			$dumpvars();
            for(i = 0; i<30000; i++)begin
               #10 Set = i%2;
                Reset = 1-Set; 
            end
		end

endmodule
