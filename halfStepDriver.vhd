library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity halfStepDriver is
	port (PWM, Reverse : in std_logic;
	StepperSignal : out std_logic_vector(3 downto 0)
	);
end halfStepDriver;

architecture structure of halfStepDriver is
	signal wire_bus0 : std_logic_vector(2 downto 0);
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
Three_bit_UpDown_Counter : upDownCounter port map(Clock => PWM, Direction => Reverse, Q => wire_bus0);
Stepper_Combinational_Logic : stepperLogic port map(A => wire_bus0, Q => StepperSignal);
end structure;
