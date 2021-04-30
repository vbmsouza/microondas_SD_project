module controller (
    input wire [9:0] entrada,
    input wire en,
    input wire clock,
    output wire [3:0] out,
    output wire Cin,
    output wire pt
);

wire z1; 
wire z2;
    priority_encoder encoder(.d_out(out), .d_in(entrada), .en(en), .Cin(Cin));
    counter_delay delay(clock, Cin,w1);
freq_converter converter(clock,w2);
    mux2x1 mux(en,z1,z2,pt);

endmodule
