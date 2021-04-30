`timescale 1ms/1ps

module Contador_mod6testb();

reg clk = 1;
reg Cin = 1;
reg Cn = 1;
reg z = 1;
reg [3:0] in;
wire [3:0] out;
wire x;
wire zero;

    timer_six DUT(in,Cin,clk,Cn,z,out,x,zero);
parameter N = 3;

always
begin
    #5 clk = ~clk;    
end

always @(posedge clk)
begin
    if(out==N+1 && Cin==1) $finish; 
end    

initial 
    begin
        $dumpfile("Contador_mod_6.v");
        $dumpvars;
        in = N;
        Cin = 0;
        #10 Cin = 1;

    end
endmodule
