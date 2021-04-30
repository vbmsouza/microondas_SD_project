module  IntegracaoMagnetron(
    input wire comecan, paren, limpan, portafechada, tdone,
    output wire m_on
);
    wire Reset, Set;
    logicC DUT1(.comecan(comecan), .paren(paren), .limpan(limpan), .portafechada(portafechada), .tdone(tdone), .Set(Set), .Reset(Reset));
    latchsr DUT2(Set, Reset, m_on);  
endmodule
