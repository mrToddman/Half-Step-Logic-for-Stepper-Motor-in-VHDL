# Half-Step-Logic-for-Stepper-Motor-in-VHDL

<img src="assets/image.jpg?raw=true" width="500px"><br/>

The digital circuit is a half-step stepper motor driver with an up-edge triggered clock input that drives stepper motor speed. It also has a motor direction input. The VHDL code is basic and synthesizable on any programmable logic IC. The circuit is functionally a 3-bit counter driving combinational logic with a clock signal. The output logic, four outputs, are intended to drive an external quadruple half-h or dual full h-bridge circuit for a bi-polar stepper motor.

There is also a digital circuit of four isolated half-step stepper motor drivers, in parallel, on a single CPLD. The target device is an Altera EPM7032SLC44-10N CPLD. This is also pin and logic compatible with an Atmel ATF1504AS-15JC44. The Altera CPLD programming file “quadStepDriver.pof” can be converted to an Atmel CPLD Jedec file using Microchip’s POF2JED utility found on their website: https://www.microchip.com/en-us/development-tool/POF2JED

Current regulation pin out to be added soon. Looking into adding selectable or programmable micro-stepping depending on spare logic units and pins on the PLCC44 package I have.
