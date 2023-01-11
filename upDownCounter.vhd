library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity upDownCounter is
	port(Clock, Direction : in std_logic;
	Q : out std_logic_vector(2 downto 0)
	);
end upDownCounter;

architecture behavior of upDownCounter is
	signal tmp: std_logic_vector(2 downto 0);
begin
	process (Clock, Direction)
	begin
	if (rising_edge(Clock)) then
		if (Direction = '0') then
			tmp <= tmp + 1;
			else
			tmp <= tmp - 1;
			end if;
		end if;
	end process;
	Q <= tmp;
end behavior;
