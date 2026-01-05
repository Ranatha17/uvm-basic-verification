`include "uvm_macros.svh"
import uvm_pkg::*;

`include "interface.sv"
`include "transaction.sv"
`include "sequence.sv"
`include "driver.sv"
`include "monitor.sv"
`include "agent.sv"
`include "scoreboard.sv"   // ✅ MUST COME BEFORE env
`include "env.sv"
`include "test.sv"


module tb_top;

  logic clk;
  always #5 clk = ~clk;

  dut_if vif(clk);

  dut d0 (
    .clk (clk),
    .rst (vif.rst),
    .a   (vif.a),
    .y   (vif.y)
  );

  initial begin
     $dumpfile("waves.vcd");
  $dumpvars(0, tb_top);
    
    clk = 0;
    uvm_config_db#(virtual dut_if)::set(null, "*", "vif", vif);
    run_test("basic_test");
  end

endmodule