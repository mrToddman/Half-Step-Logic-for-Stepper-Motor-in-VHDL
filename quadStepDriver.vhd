library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- This is a set of 4 parallel half stepper logic circuits

entity quadStepDriver is
	port (PWM0, PWM1, PWM2, PWM3, Reverse0, Reverse1, Reverse2, Reverse3 : in std_logic;
	StepperSignal0, StepperSignal1, StepperSignal2, StepperSignal3 : out std_logic_vector(3 downto 0)
	);
end quadStepDriver;

architecture structure of quadStepDriver is
	signal wire_bus0, wire_bus1, wire_bus2, wire_bus3 : std_logic_vector(2 downto 0);
component upDownCounter is
	port(Clock, Direction : in std_logic;
	Q : out std_logic_vector(2 downto 0)
	);
end component;

component stepperLogic is
	port(A : in std_logic_vector(2 downto 0);
	Q : buffer std_logic_vector(3 downto 0)
	);
end component;
begin
-- Stepper logic circuit 0
Three_bit_UpDown_Counter0 : upDownCounter port map(Clock => PWM0, Direction => Reverse0, Q => wire_bus0);
Stepper_Combinational_Logic0 : stepperLogic port map(A => wire_bus0, Q => StepperSignal0);
-- Stepper logic circuit 1
Three_bit_UpDown_Counter1 : upDownCounter port map(Clock => PWM1, Direction => Reverse1, Q => wire_bus1);
Stepper_Combinational_Logic1 : stepperLogic port map(A => wire_bus1, Q => StepperSignal1);
-- Stepper logic circuit 2
Three_bit_UpDown_Counter2 : upDownCounter port map(Clock => PWM2, Direction => Reverse2, Q => wire_bus2);
Stepper_Combinational_Logic2 : stepperLogic port map(A => wire_bus2, Q => StepperSignal2);
-- Stepper logic circuit 3
Three_bit_UpDown_Counter3 : upDownCounter port map(Clock => PWM3, Direction => Reverse3, Q => wire_bus3);
Stepper_Combinational_Logic3 : stepperLogic port map(A => wire_bus3, Q => StepperSignal3);
end structure;