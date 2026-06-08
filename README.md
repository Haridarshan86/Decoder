# 2-to-4 Decoder Using Verilog HDL

## Description

This project implements a **2-to-4 Decoder** using Verilog HDL. A decoder is a combinational logic circuit that converts binary information from `n` input lines to a maximum of `2ⁿ` unique output lines. In this design, a 2-bit input is decoded into one of four output lines.

A testbench is included to verify the functionality of the decoder by applying all possible input combinations.

---


## Module Specification

### Inputs

| Signal | Width | Description |
|---------|--------|-------------|
| in | 2 bits | Binary input |

### Outputs

| Signal | Width | Description |
|---------|--------|-------------|
| out | 4 bits | Decoded output |

---

## Truth Table

| Input (in) | Output (out) |
|------------|--------------|
| 00 | 0001 |
| 01 | 0010 |
| 10 | 0100 |
| 11 | 1000 |

---

## Verilog Implementation

The decoder is implemented using a combinational `always @(*)` block and a `case` statement to generate the corresponding output for each input combination.

---

## Testbench

The testbench applies all possible 2-bit input combinations using a `for` loop and monitors the output.

### Test Sequence

```verilog
for(integer i = 0; i < 4; i = i + 1)
begin
    in = i;
    #10;
end
```

---

## Simulation Output

```text
Time    Input   Output
0       00      0001
10      01      0010
20      10      0100
30      11      1000
```

## Simulation result

<img width="753" height="416" alt="image" src="https://github.com/user-attachments/assets/c51b604d-2d15-4dee-8365-ab6c75abaaec" />

## TCL output

<img width="698" height="164" alt="image" src="https://github.com/user-attachments/assets/6e5dc18c-63a1-41aa-9c17-282e8b89929a" />


