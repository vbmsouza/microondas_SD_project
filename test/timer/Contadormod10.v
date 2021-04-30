`timescale 1ms/1ps

module timer_ten_tb();

reg clk = 1;
reg Cin = 1;
reg Cn = 1;
reg z = 1;
reg [3:0] in;
wire [3:0] out;
wire x;
wire zero;

 timer_ten DUT(in,Cin,clk,Cn,z,out,x,zero);
parameter N = 8;

always #5 clk = ~clk;    

 always @(posedge clk && Cin==1)
begin
 
 if(out == N+1 && Cin == 1) $finish; 

end    

initial 
    begin
        $dumpfile("timer_ten.vcd");
        $dumpvars;
        Cin = 0;
        in = N;
        #10 Cin = 1;

    end
  
endmodule
