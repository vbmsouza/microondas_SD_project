module  IntegracaoMagnetron( input wire comecan, paren, limpan, portafechada, tdone, output wire m_on);
    wire Reset, Set;
    and_or_not_logic DUT1(.comecan(comecan), .paren(paren), .limpan(limpan), .portafechada(portafechada), .tdone(tdone), .Set(Set), .Reset(Reset));
    latchSR DUT2(Set, Reset, m_on);  
endmodule
