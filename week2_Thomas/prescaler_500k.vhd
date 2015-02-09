----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:25 02/09/2015 
-- Design Name: 
-- Module Name:    prescaler_500k - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prescaler_500k is
    Port ( CLK_in : in  STD_LOGIC;
           PRESCALE_out : out  STD_LOGIC);
end prescaler_500k;

architecture Behavioral of prescaler_500k is
	signal prescaleCounter : STD_LOGIC_VECTOR(19 downto 0);

	begin
		prescaleProcess : process(CLK_in)
		begin
			if rising_edge(CLK_in) then
				if prescaleCounter = 500000 then
					prescaleCounter <= (others=>'0');
					PRESCALE_out <= '1';
				else
					PRESCALE_out <= '0';
					prescaleCounter <= prescaleCounter + 1;
				end if;
			end if;
		end process;

	end Behavioral;

