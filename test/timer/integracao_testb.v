`timescale 1ms/1ps

module integracao_tb();

reg [3:0] in = 4'b0111;
wire [3:0] out;
reg Cin;
reg Cn=1'b1; 
reg clock=1'b0;
reg z = 1'b1;
    wire [3:0] sec_unidade;
    wire [3:0] sec_decimal;
wire [3:0] min;
wire zero;

    timer DUT(in,Cin,Cn,clock, z,sec_unidade,sec_decimal,min, zero);

always #5 clock = ~clock;

initial begin
    $dumpfile("timer.vcd");
    $dumpvars;
    //Carregar 1:99 no contador zera a contagem quando chega em 50 segundos (usando o clear) e encerra o processo
    //Testa a funcionalidade do do contador, do load, do clear e de carregar um número entre 60-99
    Cin = 0;
    in = 1;
    #10 in = 9;
    #10 in = 9;
    #10 Cin=1;
    
end

    always @ (zero,sec_unidade,sec_decimal,min) begin
        if(sec_unidade==0 && sec_tens ==5 && min == 0) Cn <= 0;
    if(Cin ==1 && zero==1) $finish;
end

endmodule
