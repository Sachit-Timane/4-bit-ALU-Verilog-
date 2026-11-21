# 4-Bit Arithmetic Logic Unit (ALU) — Verilog RTL Design

![Verilog](https://img.shields.io/badge/HDL-Verilog-blue)
![Vivado](https://img.shields.io/badge/EDA-Xilinx%20Vivado-orange)
![FPGA](https://img.shields.io/badge/FPGA-Spartan--7-green)
![Verification](https://img.shields.io/badge/Verification-RTL%20Simulation-purple)

## Overview

This project focuses on the RTL design and functional verification of a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic and logical operations based on control inputs, demonstrating combinational circuit design, hardware description techniques and FPGA-oriented development.

The design was developed using Xilinx Vivado, with a dedicated testbench for behavioral simulation and a board-level integration module for FPGA implementation.

## Tools and Technologies

| Category | Technology |
|---|---|
| HDL | Verilog |
| Development Tool | Xilinx Vivado |
| Target FPGA | Xilinx Spartan-7 (XC7S50-CSGA324-1) |
| Design Type | Combinational RTL |
| Verification | Verilog Testbench |
| Debugging | Behavioral Simulation and Waveform Analysis |
| Constraints | Xilinx Design Constraints (XDC) |

## Design Architecture

The ALU accepts two 4-bit operands and an operation-select input to perform arithmetic or logical operations.

### Functional Blocks

- Arithmetic logic for operations on binary operands.
- Logical operations implemented using combinational circuits.
- Operation-selection logic to determine the required output.
- Board-level integration through the `ALU_Board.v` module.

The ALU is designed using synthesizable Verilog RTL.

## RTL Design and Verification

The project includes a dedicated Verilog testbench to evaluate the functionality of the ALU.

Verification involves applying different input combinations and operation-select values, observing the output signals, and checking the results against expected arithmetic and logical behavior.

Vivado behavioral simulation and waveform analysis are used to inspect signal transitions and identify functional mismatches.

## Project Structure

```text
4-bit-ALU-Verilog-/
├── ALU_4_Bit.srcs/
│   ├── sources_1/new/
│   │   ├── alu_4bit.v
│   │   └── ALU_Board.v
│   ├── sim_1/new/
│   │   └── tb_alu_4bit.v
│   └── constrs_1/new/
│       └── alu_4bit.xdc
├── ALU_4_Bit.xpr
└── README.md
```

## Simulation Results

Behavioral simulation is performed using Xilinx Vivado to observe the ALU outputs for different operand values and operation selections.

Simulation screenshots can be added here to demonstrate the verified functionality.

## FPGA Implementation

The project includes an FPGA board-level module and XDC constraint file targeting the Xilinx Spartan-7 XC7S50-CSGA324-1 device.

These files support FPGA implementation and hardware interfacing. Physical board deployment is not claimed unless separately verified.

## Key Learning Outcomes

- RTL design of combinational circuits using Verilog HDL.
- Implementation of arithmetic and logical operations.
- Testbench development and functional verification.
- Behavioral simulation and waveform debugging.
- FPGA design flow and XDC constraint management.
- Modular RTL development and board-level integration.

## Future Scope

- Parameterized ALU supporting configurable operand widths.
- Additional arithmetic and logical operations.
- Status flags such as zero, carry, overflow and sign.
- Expanded automated testbench coverage.
- Physical FPGA validation.

## Author

Sachit Timane  
B.E. Electronics & Telecommunication Engineering  
Pune Institute of Computer Technology (PICT), Pune

GitHub: https://github.com/Sachit-Timane

---

Verilog RTL Design | Functional Verification | FPGA-Oriented Development
