----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:56 03/19/2015 
-- Design Name: 
-- Module Name:    counterToRows - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counterToRows is
    Port ( counter : in  STD_LOGIC_VECTOR(1 downto 0);
           rows : out  STD_LOGIC_VECTOR(3 downto 0));
end counterToRows;

architecture Behavioral of counterToRows is

	begin

	process(counter)
	begin
		case counter is
			when "00" =>
				rows <= "0001";
			when "01" =>
				rows <= "0010";
			when "10" =>
				rows <= "0100";
			when "11" =>
				rows <= "1000";
			when others =>
				rows <= "1111";
		end case;
	end process;

	end Behavioral;

