
module priority_encoder_9x4 (
  output wire [3:0] dout,
  input wire[9:0] din,
  input wire en,
  output wire Cn
);

      assign Cn = (en | ~(din[0] | din[1] | din[2] | din[3] | din[4] | din[5] | din[6] | din[7] | din[8] | din[9]));
      assign dout = (din[9] ==1'b1) ? 4'b1001:
                      (din[8] ==1'b1) ? 4'b1000:
                      (din[7] ==1'b1) ? 4'b0111:
                      (din[6] ==1'b1) ? 4'b0110:
                      (din[5] ==1'b1) ? 4'b0101:
                      (din[4] ==1'b1) ? 4'b0100:
                      (din[3] ==1'b1) ? 4'b0011:
                      (din[2] ==1'b1) ? 4'b0010:
                      (din[1] ==1'b1) ? 4'b0001:
                      (din[0] ==1'b1) ? 4'b0000: 4'b0000;
endmodule
