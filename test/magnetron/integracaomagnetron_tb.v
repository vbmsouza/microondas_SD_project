`timescale 1us/1ps
module  IntegracaoMagnetron_tb();
    reg comecan, paren, limpan, portafechada, tdone;
    wire m_on;
    integer y;
    Magnetron DUT(.comecan(comecan),.paren(paren),.limpan(limpan),.portafechada(portafechada),.tdone(tdone),.m_on(m_on));
    initial begin
        $dumpfile("integracaomagnetron.v");
        $dumpvars();
        for(y=0 ; y<3000; y++)begin
            #10comecan = (y%2);
            paren = $urandom%2;
            limpan = $urandom%2;
            portafechada =$urandom%2;
            tdone = $urandom%2;
        end    
    end
endmodule
