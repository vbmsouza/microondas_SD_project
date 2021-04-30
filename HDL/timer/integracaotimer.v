
module integracaotimer(input wire [3:0] in, input wire Cin, input wire Cn, 
             input wire clock, input wire z,
                       output wire [3:0] sec_unidade, output wire [3:0] sec_decimal,
             output wire [3:0] min, output reg zero);

wire sec_to_decimal;
wire decimal_to_min;
wire S_uso;
wire z1;
wire z2;
wire z3;

  timer_ten seconds(in, Cin, clock, Cn, z, sec_unidade, sec_to_decimal, z1);
  timer_six ten_secs(sec_unidade, Cin, clock, Cn, sec_to_decimal, sec_decimal, decimal_to_min, z2);
  timer_ten minutes(sec_decimal, Cin, clock, Cn, decimal_to_min, min, S_uso, z3);



  always@(z1,z2,z3)
    begin
        zero = z1 & z2 & z3;
    end



endmodule
