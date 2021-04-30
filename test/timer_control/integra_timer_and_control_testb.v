`timescale 1ps/1ps

module integra_timer_and_control_testb(); 

reg  [9:0] y; 
wire [3:0] a;
reg en;
wire Cin;
integer i;
 
	priority_encoder_9x4 U(.d_out(a), .d_in(y),.Cin(Cin), .en(en));

initial
    begin 
	    $dumpfile("integra_timer_and_control.v");
	  $dumpvars();
    en = 1;
    i = 0;
    for(i=0;i<10;i= i+1)
    begin
      y = (1<<i);
      #10 en = 0;
      #10 en = 1;
    end
    end
  
endmodule
