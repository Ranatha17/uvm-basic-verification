`include "uvm_macros.svh"
import uvm_pkg::*;

class dut_txn extends uvm_sequence_item;

  rand bit a;   // input stimulus
       bit y;   // output (sampled later)

  `uvm_object_utils(dut_txn)

  function new(string name = "dut_txn");
    super.new(name);
  endfunction

endclass