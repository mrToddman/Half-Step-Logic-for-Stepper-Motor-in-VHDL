library IEEE; 
use ieee.std_logic_1164.all; 

entity stepperLogic is
	port(A : in std_logic_vector(2 downto 0);
	Q : buffer std_logic_vector(3 downto 0)
	);
end stepperLogic;

architecture dataflow of stepperLogic is
begin
	process (A, Q)
	begin
		case A is
			when "000" => Q <= "1000";
			when "001" => Q <= "1100";
			when "010" => Q <= "0100";
			when "011" => Q <= "0110";
			when "100" => Q <= "0010";
			when "101" => Q <= "0011";
			when "110" => Q <= "0001";
			when others => Q <= "1001";
		end case;
	end process;
end dataflow;