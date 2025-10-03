# Sequence Detector `0110` (Verilog)

## 📌 Overview
This project implements a **sequence detector** in **Verilog HDL** that detects the bit pattern **`0110`**.  

The detector is modeled as a **Finite State Machine (FSM)** and raises the output `z` high whenever the sequence is detected in the input stream. Both **overlapping** sequences are supported.

---

## 📂 Project Structure
sequence-detector-0110/

│── sq0110.v            # Verilog module

│── tb_sq0110.v         # Testbench

│── sq0110.vcd          # Waveform dump after simulation

│── docs/
│    ├── fsm.png        # FSM design diagram
│    ├── output.png     # GTKWave output screenshot
│── README.md


---

## ⚙️ Requirements
- [Icarus Verilog](http://iverilog.icarus.com/) – Verilog simulator  
- [GTKWave](http://gtkwave.sourceforge.net/) – waveform viewer  

---

## 🚀 How to Run
1. Clone this repository
     ```bash
     git clone https://github.com/your-username/sequence-detector-0110.git
     ```
     ```
     cd sequence-detector-0110
     ```
2. Compile the design and testbench:
     ```
     iverilog -o sq0110 sq0110.v tb_sq0110.v
     ```
3. Run the simulation
   ```
      vvp sq0110
   ```
4. Open the waveform in GTKWave
   ```
      gtkwave sq0110.vcd
   ```

## Example Input/Output :
Input (x):  0 0 1 1 0 1 1 0 0 1 1 0
Output (z):          1       1

