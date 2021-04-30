module counterdlay ( input wire clk, input wire clr, output reg out);

reg [2:0] counter=0;



always @(posedge clk) begin
    if(clr) begin
        out <= 0;
        contr<=0;
    end
    else
    begin
        if(contr<7) countr <= contr+1;
        out <= (contr==4) ? 1:0;
    end
    
end
endmodule
