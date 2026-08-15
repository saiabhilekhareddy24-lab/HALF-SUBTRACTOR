Half Subtractor using Verilog HDL
📌 Project Description

A Half Subtractor is a combinational digital circuit that performs the subtraction of two 1-bit binary numbers.

It has two inputs:

A – Minuend
B – Subtrahend

And two outputs:

Difference (D)
Borrow (Bout)
Boolean Expressions

The outputs of a Half Subtractor are:

Difference:

D = A ⊕ B


Borrow:

Bout = A' · B

🧮 Truth Table
A	B	Difference	Borrow
0	0	0	0
0	1	1	1
1	0	1	0
1	1	0	0
📁 Project Structure
half-subtractor/
│
├── half_subtractor.v
├── half_subtractor_tb.v
├── simulation_output.html
└── README.md

💻 Verilog Design

The Half Subtractor is implemented using continuous assignment statements.

assign difference = A ^ B;
assign borrow = (~A) & B;

🧪 Testbench

The testbench applies all four possible combinations of the two inputs and displays the corresponding outputs.

The expected results are:

A B | Difference Borrow
-----------------------
0 0 |     0        0
0 1 |     1        1
1 0 |     1        0
1 1 |     0        0

▶️ Running the Simulation
Using Icarus Verilog

Compile the design and testbench:

iverilog -o half_subtractor_sim half_subtractor.v half_subtractor_tb.v


Run the simulation:

vvp half_subtractor_sim


To generate a waveform file:

gtkwave half_subtractor.vcd

📊 Expected Simulation Output
Time   A B | Difference Borrow
--------------------------------
0      0 0 |     0        0
10     0 1 |     1        1
20     1 0 |     1        0
30     1 1 |     0        0

🎯 Applications

Half subtractors are basic building blocks used in:

Digital arithmetic circuits
Binary subtraction circuits
Full subtractor design
Arithmetic Logic Units (ALUs)
Digital computer systems
🛠️ Tools Used
Verilog HDL
Icarus Verilog
GTKWave
GitHub
📜 License

This project is intended for educational purposes.
