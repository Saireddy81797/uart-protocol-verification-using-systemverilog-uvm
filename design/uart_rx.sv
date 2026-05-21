module uart_rx(
    input logic clk,
    input logic rst,
    input logic rx,
    output logic [7:0] data_out
);

always_ff @(posedge clk or posedge rst)
begin
    if(rst)
        data_out <= 8'b0;
    else
        data_out <= {7'b0, rx};
end

endmodule
