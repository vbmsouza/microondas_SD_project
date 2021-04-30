`timescale 1ns/1ps
module  and_or_not_logic_tb();
    reg comecan, paren, limpan, portafechada, tdone;
    wire Set, Reset;
    integer i;
    logicC DUT(.comeca(comecan),.pare(paren),.limpa(limpan),.portafechada(portafechada),.tdone(tdone),.Set(Set),.Reset(Reset));

    initial begin
    
        $dumpfile("and_or_not_logic.v");
        $dumpvars();
        for(i=0 ; i<3000; i++)begin
            #10startn = (i%2);
            stopn = $urandom%2;
            limpan = $urandom%2;
            portafechada =$urandom%2;
            tdone = $urandom%2;
        end    
    end
endmodule
