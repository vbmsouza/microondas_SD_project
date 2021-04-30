module controller (
    input wire [9:0] teclado,
    input wire en,
    input wire clk,
    output wire [3:0] out,
    output wire Cin,
    output wire pt
);

    wire x1; 
    wire x2; 

    priority_encoder_9x4 encoder(.d_out(out), .d_in(teclado), .en(en), .Cin(Cin));
    cont_delay delay(clk, Cin,x1);
    freq100 converter(clk,x2);
    mux2_1 mux(en,x1,x2,pt);

endmodule
