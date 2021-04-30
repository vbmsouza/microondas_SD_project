module micro(
    input wire [9:0] teclado,
    input wire clk,
    input wire comecan,
    input wire paren,
    input wire limpan,
    input wire portafechada,
    output wire m_on,
    output wire [6:0] sec_one_sec,
    output wire [6:0] sec_ten_sec,
    output wire [6:0] min_sec
);

wire magnetron;
wire [3:0]d_data;
wire Cin;
wire pt_timer_clk;
wire [3:0] sec_one;
wire [3:0] sec_ten;
wire [3:0] min;
wire tdone;
    controller controlador(teclado,magnetron, clk,d_data,Cin,pt_timer_clk);
    timer time_device(d_data,Cin,limpan,pt_timer_clk,magnetron,sec_one,sec_ten,min,tdone);
    priority_decoder4x7 decoder_device(sec_one,sec_ten,min,sec_one_sec,sec_ten_sec,min_sec);
    Magnetron magnetron_device(comecan,paren,limpan,portafechada, tdone,magnetron);

assign m_on = magnetron;    
endmodule
