module latchSR (set, reset, Q);
    input set;
    input reset;
    output Q;

    nor (Q, reset);
    nor (Q, set);
endmodule
