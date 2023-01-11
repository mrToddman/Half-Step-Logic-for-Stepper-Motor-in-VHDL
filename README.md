# Half-Step-Logic-for-Stepper-Motor-in-VHDL

The digital circuit is a half-step stepper motor driver with an up-edge triggered clock input that drives stepper motor speed. It also has a motor direction input. The VHDL code is basic and synthesizable on any programmable logic IC. The circuit is functionally a 3-bit counter driving combinational logic with a clock signal. The output logic lines are intended to drive an external quadruple half-h circuit for a bi-polar stepper motor. There are Quartus project files for each component are in main. The target device is an Altera Cyclone V GX FPGA on a Terasic C5G development board. 

There is also a digital circuit of four isolated half-step stepper motor drivers, in parallel, on a single CPLD.
