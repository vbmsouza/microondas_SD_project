`timescale 1us/1ps
module  Magnetron_tb();
    reg comecan, paren, limpan, portafechada, tdone;
    wire m_on;
    integer i;
    Magnetron DUT(.comecan(comecan),.paren(paren),.limpan(limpan),.portafechada(portafechada),.tdone(tdone),.m_on(m_on));

    initial begin
    
        $dumpfile("integracaomagnetron.v");
        $dumpvars();
        for(i=0 ; i<3000; i++)begin
            #10comecan = (i%2);
            paren = $urandom%2;
            limpan = $urandom%2;
            portafechada =$urandom%2;
            tdone = $urandom%2;
        end    
    end
endmodule
