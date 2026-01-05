interface dut_if (input logic clk);
  logic rst;
  logic a;
  logic y;

  clocking cb @(posedge clk);
    output a, rst;
    input  y;
  endclocking
endinterface