# VHDL Counter with potential Overflow

This repository demonstrates a potential overflow issue in a simple VHDL counter. The counter uses an INTEGER type, which might not be the most robust choice for hardware designs.

## Bug Description
The `counter` entity uses an `INTEGER` to keep track of the count. When the count reaches its maximum value (15), it resets to 0. However, some synthesis tools or simulators may handle integer overflow differently which can lead to unpredictable behaviour. This could manifest as the counter exhibiting incorrect values or even causing simulation crashes.

## Solution
The provided solution demonstrates a more robust method by utilizing an unsigned type that handles the overflow implicitly.

## How to reproduce
1. Simulate the `bug.vhdl` code.
2. Observe the behavior when the counter reaches 15.  Does it reset correctly and predictably across multiple simulations and tools?
3. Compare the behavior with the solution file (`bugSolution.vhdl`).
