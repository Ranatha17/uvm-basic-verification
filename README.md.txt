# UVM Basic Verification Project

This repository contains a complete UVM (Universal Verification Methodology)
based verification environment for a simple sequential DUT.

## DUT Description
- Inputs: clk, rst, a
- Output: y
- Function: Output `y` follows input `a` on the rising edge of `clk`

## UVM Components
- Transaction
- Sequence
- Driver
- Monitor
- Agent
- Environment
- Scoreboard
- Test

## Features
- Interface with clocking block
- Sequence-driven stimulus
- Driver → DUT connection
- Monitor → Scoreboard checking
- PASS/FAIL reporting
- Waveform generation using EPWave

## Tools Used
- SystemVerilog
- UVM 1.2
- Siemens Questa (EDA Playground)

## How to Run
1. Load all `.sv` files into EDA Playground
2. Select:
   - Language: SystemVerilog
   - UVM: UVM 1.2
   - Simulator: Siemens Questa
3. Run the simulation
4. View waveforms using EPWave

## Author
Ranatha D
