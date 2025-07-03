# Basic Logic Gates in Verilog

This repository contains Verilog implementations of the following logic gates:

- AND
- OR
- NOT
- XOR

Each gate has:
- A separate `.v` file for the module
- A corresponding `_tb.v` file as its testbench

## Simulation

You can simulate these modules using:
- Icarus Verilog + GTKWave
- ModelSim
- Vivado

Example:
```bash
iverilog and_gate.v and_gate_tb.v -o and_gate
vvp and_gate
