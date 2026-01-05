`include "uvm_macros.svh"
import uvm_pkg::*;

class basic_test extends uvm_test;

  `uvm_component_utils(basic_test)

  dut_env env;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = dut_env::type_id::create("env", this);
  endfunction

  task run_phase(uvm_phase phase);
    basic_seq seq;

    phase.raise_objection(this);

    seq = basic_seq::type_id::create("seq");
    seq.start(env.agent.seqr);

    #50;
    phase.drop_objection(this);
  endtask

endclass