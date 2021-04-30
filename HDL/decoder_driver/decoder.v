module decoder( input wire [3:0] sec_on, sec_t, min, output wire [6:0] sec_on_secs, sec_t_secs, min_secs);
  wire en_secs_on;
  wire en_secs_t;
  wire ground;
  
  decoderUnit Dec1(.binary_in(sec_on), .decoder_out(sec_on_secs), .en_in(en_secs_on) , .en_out(ground));
  decoderUnit Dec2(.binary_in(sec_t), .decoder_out(sec_t_secs), .en_in(en_secs_t) , .en_out(en_secs_on));
  decoderUnit Dec3(.binary_in(min), .decoder_out(min_secs), .en_in(1'b0), .en_out(en_secs_t));
  
endmodule

module decoderU(
  input wire [3:0] binary_in   ,
  output wire [6:0] decoder_out ,
  input wire en_in,
  output wire en_out
); 
  assign decoder_out = (binary_in==0 && en_in) ? 10'b1111110:
                       (binary_in==0 && ~(en_in)) ? 10'b0000000:
                       (binary_in==1) ? 10'b0110000:
                       (binary_in==2) ? 10'b1101101:
                       (binary_in==3) ? 10'b1111001:
                       (binary_in==4) ? 10'b0110011:
                       (binary_in==5) ? 10'b1011011:
                       (binary_in==6) ? 10'b1011111:
                       (binary_in==7) ? 10'b1110000:
                       (binary_in==8) ? 10'b1111111:10'b1111011;

  assign en_out = (binary_in[0] | binary_in[1] | binary_in[2] | binary_in[3] | en_in);  
endmodule
