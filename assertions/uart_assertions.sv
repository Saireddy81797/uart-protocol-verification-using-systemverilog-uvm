property tx_valid;
    @(posedge clk) tx_start |-> tx;
endproperty

assert property(tx_valid);
