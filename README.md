# Combinational_circuit
⭐Verilog HDL implementations of fundamental combinational circuits including Half Adder, Full Adder, Multiplexer (MUX), Demultiplexer (DEMUX), Encoder, Priority Encoder, and Decoder with testbenches and waveform verification.

# Half Adder

## Description
Half Adder adds two 1-bit binary inputs and produces Sum and Carry outputs.

## RTL Code
[View RTL Code](half_adder.v)

## Testbench
[View Testbench](half_adder_tb.v)

## Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |


# Full Adder

## Description
Full Adder adds three 1-bit inputs (A, B, Cin) and produces Sum and Carry outputs.

## RTL Code
[View RTL Code](full_adder.v)

## Testbench
[View Testbench](full_adder_tb.v)

## Truth Table
| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

# Half Subtractor

## Description
A Half Subtractor is a combinational circuit that subtracts one 1-bit binary number (B) from another 1-bit binary number (A). It produces two outputs: Difference (D) and Borrow (Bout).

## RTL Code

[View RTL Code](src/half_sub.v)

## Testbench

[View Testbench](tb/half_sub_tb.v)

## Truth Table

| A | B | D | Bout |
|---|---|---|------|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |

# Full Subtractor

## Description
A Full Subtractor is a combinational circuit that subtracts two 1-bit binary numbers along with a Borrow-In (Bin). It produces two outputs: Difference (D) and Borrow-Out (Bout).

## RTL Code

[View RTL Code](src/full_sub.v)

## Testbench

[View Testbench](tb/full_sub_tb.v)

## Truth Table

| A | B | Bin | D | Bout |
|---|---|-----|---|------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 |

## Simulation Waveform

![Full Subtractor](sim/full_sub_waveform.png)
