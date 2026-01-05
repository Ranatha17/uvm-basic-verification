`include "uvm_macros.svh"
import uvm_pkg::*;

class dut_env extends uvm_env;

  `uvm_component_utils(dut_env)

  dut_agent      agent;
  dut_scoreboard sb;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agent = dut_agent     ::type_id::create("agent", this);
    sb    = dut_scoreboard::type_id::create("sb",    this);
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    agent.mon.mon_ap.connect(sb.sb_imp);
  endfunction

endclass