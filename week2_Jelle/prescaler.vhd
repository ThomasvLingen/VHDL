library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity prescaler_500K is
    Port ( CLK_in : in  STD_LOGIC;
           PULSE_out : out  STD_LOGIC);
end prescaler_500K;

architecture Behavioral of prescaler_500K is
signal prescaleCounter: std_logic_vector(20 downto 0);
begin
	PrescaleProcess : process(CLK_in)
	begin
		if rising_edge(CLK_in) then
			if prescaleCounter >= 500000 then
				prescaleCounter <= 0;
			else
				prescaleCounter <= prescaleCounter + 1;
			end if;
		end if;
	end process;
end Behavioral;

