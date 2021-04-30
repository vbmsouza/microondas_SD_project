`timescale 1ns/1ps
module latchsr_tb();
    integer y;
	reg Reset, Set;
	wire mon;

	latchsr DUT(.Reset(Reset), .Set(Set), .m_on(mon));
	
    initial
		begin
		
			$dumpfile("latchSR.v");
			$dumpvars();
			for(y = 0; y<30000; y++)begin
              		 #10 Set = y%2;
               		 Reset = 1-Set; 
            		end
		end

endmodule
