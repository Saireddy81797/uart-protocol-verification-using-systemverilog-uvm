class uart_driver extends uvm_driver #(uart_transaction);

`uvm_component_utils(uart_driver)

virtual uart_if vif;

function new(string name, uvm_component parent);
    super.new(name,parent);
endfunction

task run_phase(uvm_phase phase);

uart_transaction tr;

forever begin
    seq_item_port.get_next_item(tr);

    vif.data_in = tr.data;
    vif.tx_start = 1'b1;

    #10;

    vif.tx_start = 1'b0;

    seq_item_port.item_done();
end

endtask

endclass
