class uart_env extends uvm_env;

`uvm_component_utils(uart_env)

uart_agent agt;
uart_scoreboard sb;

function new(string name, uvm_component parent);
    super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);

agt = uart_agent::type_id::create("agt",this);
sb = uart_scoreboard::type_id::create("sb",this);

endfunction

endclass
