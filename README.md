# ElectraVote: Microcontroller-Based Voting System for Institutional Applications

ElectraVote is a microcontroller-based electronic voting system designed for use in schools, colleges, and other institutional environments. Built around the PIC16F877A microcontroller, it aims to deliver a secure, reliable, and user-friendly voting experience while minimizing human intervention and ensuring accurate result display in real time.

---

## 📌 Project Objective

- Design a **secure and easy-to-use** voting system using PIC16F877A.
- Display **real-time voting feedback** on a 16x2 LCD.
- Enable **dynamic result calculation** and display with reset capabilities.
- Ensure the system is **simple and scalable** for small-scale elections.

---

## ⚙️ System Overview

The system accepts user votes via push-button switches, increments vote counters within the microcontroller, and displays the results on an LCD screen. Visual indicators (LEDs) are provided to confirm vote casting.

### 🧩 Main Features

- PIC16F877A handles logic and I/O.
- 6 push-button switches for candidates.
- 1 result button to show total votes.
- Real-time LCD feedback (Thank You message & Results).
- Visual LED indicators for each vote.

---

## 🔋 Hardware Components

| Component              | Description                                |
|-----------------------|--------------------------------------------|
| PIC16F877A            | Main control unit (40-pin microcontroller) |
| 16x2 LCD Display       | Vote confirmation and result display       |
| Push-Button Switches  | 6 for voting, 1 for result display         |
| IC 7805               | Voltage regulator (9V input to 5V output)  |
| LEDs (x6)             | Indicator for each vote                    |
| Resistors             | 10kΩ (pull-down), 220Ω (LED protection)    |
| Capacitors            | 100µF, 10µF, 22pF for filtering and timing |
| Crystal Oscillator    | 8 MHz for stable MCU clock                 |
| Potentiometer (VR1)   | For LCD contrast control                   |

---

## 🧠 Microcontroller Details

**PIC16F877A** Microcontroller:
- 33 I/O pins (PORTA-E)
- 8-channel 10-bit ADC
- PWM & USART support
- Supports LCD and switch interfacing
- Low-power, high-performance RISC architecture

Key Port Usage:
- `PORTB`: Switches
- `PORTD`: LCD Data Pins (D4-D7)
- `PORTC`: LCD Control Pins (RS, EN)
- `MCLR`: Connected to manual reset

---

## 🔌 Circuit Operation

1. **System Initialization**: LCD shows a welcome message.
2. **Vote Casting**: Pressing any of the S1–S6 switches increments a vote and shows a "Thank You" note on the LCD.
3. **Result Display**: Press S7 to show total votes per candidate and declare the winner or a tie.
4. **LED Indicators**: Light up during vote cast to confirm action.

---

## 🖥️ Simulation Details

The system is simulated using **Proteus Design Suite**. All functional modules including the microcontroller, LCD, switches, and LEDs are integrated and tested.

### Proteus Screenshots:
- **Welcome Message**
- **Vote Confirmation**
- **Final Result Display**

---

## 🗂️ Project Structure

```
ElectraVote/
├── SourceCode/               # Embedded C code (MPLAB or MikroC)
├── ProteusSimulation/        # Proteus file
├── CircuitDiagram/           # Schematics and Screenshots
├── Documentation/            # Project report and explanation
└── README.md                 # Project overview
```

---

## 🚀 Future Enhancements

- 🔐 PIN/biometric authentication for secure voting.
- 💾 External storage for logging votes post-election.
- 🌐 Remote monitoring and result publishing through servers.

---

## 📬 Feedback & Contributions

Feel free to fork this repository, raise issues, or contribute improvements. Your suggestions are always welcome!
