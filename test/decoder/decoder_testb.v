`timescale 1ms/1ps
module decoder_testb();

    reg [3:0] sec, t, min;
    wire [6:0] sec_secs, t_secs, min_secs;

    decoder DUT(sec, t,mins, sec_secs, t_secs, min_secs);

initial begin
    $dumpfile("decoder.v");
    $dumpvars;
    sec = 5;
    t = 4;
    min = 1;
    #10;
    sec = 0;
    t = 4;
    min = 1;
    #10;
    sec = 0;
    t = 4;
    min = 0;
    #10;
    sec = 5;
    t = 0;
    min = 0;
    #100 $finish;

end

endmodule
