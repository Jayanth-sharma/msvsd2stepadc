module async_counter(
    input wire v_bias,
    input wire v_inn,
    output wire  out_bit
);

wire ring_Fout;

RING_OSCILLATOR ring_osc(
    .FOUT(ring_Fout)
);

COMPARATOR one_bit(
    .INP(ring_Fout),
    .INN(v_inn),
    .BIAS(v_bias),
    .OUT(out_bit)
);

endmodule

