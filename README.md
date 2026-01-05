\# UVM Basic Verification Project



This repository contains a complete \*\*UVM (Universal Verification Methodology)\*\*

based verification environment for a simple sequential design.

The project demonstrates industry-standard UVM architecture and verification flow.



---



\## DUT Description

\- \*\*Inputs:\*\* `clk`, `rst`, `a`

\- \*\*Output:\*\* `y`

\- \*\*Functionality:\*\*  

&nbsp; On every rising edge of `clk`, output `y` follows input `a`.  

&nbsp; When `rst` is asserted, output `y` is reset to `0`.



---



\## UVM Architecture

The verification environment is built using standard UVM components:



\- \*\*Transaction\*\* – Defines stimulus data

\- \*\*Sequence\*\* – Generates transactions

\- \*\*Driver\*\* – Drives DUT signals through interface

\- \*\*Monitor\*\* – Observes DUT behavior

\- \*\*Agent\*\* – Encapsulates sequencer, driver, and monitor

\- \*\*Environment\*\* – Instantiates agent and scoreboard

\- \*\*Scoreboard\*\* – Verifies DUT output correctness

\- \*\*Test\*\* – Controls simulation execution

\- \*\*Interface\*\* – Connects UVM testbench to DUT

\- \*\*Top Module (`tb\_top`)\*\* – Instantiates DUT and starts the UVM test



---



\## Features

\- Clocking block based interface

\- Transaction-level stimulus generation

\- Monitor to scoreboard analysis flow

\- PASS/FAIL reporting using UVM messages

\- Waveform generation and debugging using EPWave



---



\## File Structure

.

├── design.sv

├── interface.sv

├── testbench.sv

├── transaction.sv

├── sequence.sv

├── driver.sv

├── monitor.sv

├── agent.sv

├── env.sv

├── scoreboard.sv

├── test.sv

└── README.md



---



\## Tools \& Technologies

\- \*\*Language:\*\* SystemVerilog

\- \*\*Methodology:\*\* UVM 1.2

\- \*\*Simulator:\*\* Siemens Questa

\- \*\*Platform:\*\* EDA Playground



---



\## How to Run

1\. Open \*\*EDA Playground\*\*

2\. Load all `.sv` files into the workspace

3\. Select:

&nbsp;  - Language: SystemVerilog

&nbsp;  - UVM Version: UVM 1.2

&nbsp;  - Simulator: Siemens Questa

4\. Run the simulation

5\. View waveforms using \*\*EPWave\*\*



---

\## Waveform Output



The following waveform was captured using EPWave after running the UVM testbench.



!\[UVM Waveform](images/waveform.png)





\## Author

\*\*Ranatha D\*\*



