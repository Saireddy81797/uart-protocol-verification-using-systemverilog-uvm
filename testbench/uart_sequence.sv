class uart_sequence extends uvm_sequence #(uart_transaction);

`uvm_object_utils(uart_sequence)

function new(string name="uart_sequence");
    super.new(name);
endfunction

task body();

uart_transaction tx;

repeat(10)
begin
    tx = uart_transaction::type_id::create("tx");
    start_item(tx);
    assert(tx.randomize());
    finish_item(tx);
end

endtask

endclass
