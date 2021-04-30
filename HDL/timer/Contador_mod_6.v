module contador_mod6(input wire [3:0] in, input wire Cin, input wire clk,input wire Cn, input wire z,
                     output reg [3:0]  out, output wire x, output reg zero );

  assign x = (z & ~out[0] & ~out[1] & ~out[2] & ~out[3]);

initial begin
    out  = 0;
end

  always @(posedge clk,negedge Cn)
    begin
      if(~Cn)
        begin
            out <= 0;
            zero <= 1;
        end
      else if(~Cin)
            begin
                out <= in;
              zero <= (in==0)? 1 : 0;
            end
      else if(z)
        begin
            if(out==0)
            begin
                out <= 5;
                zero <= 0;
            end
            else if(out==1)
            begin
                out <= out-1;
                zero <= 1;
            end
            else
            begin
                out <= out-1;
                zero <= 0;
            end
        end
    end

endmodule
