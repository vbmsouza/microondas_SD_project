module logicC (input wire comecaN , pareN , limpaN, portafechada, tdone, output reg  Set, Reset);

    always @(comecaN, pareN, limpaN, porta_fechada, t_done) begin
        if(!limpaN || !pareN || t_done || !porta_fechada)
            begin
                Set = 0;
                Reset = 1;
            end
        else if(!comecaN && porta_fechada)
            begin
                Set = 1;
                Reset = 0;
            end
        else 
            begin
                Set = 0;
                Reset = 0;
            end
    end
endmodule
