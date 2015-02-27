----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:39 02/09/2015 
-- Design Name: 
-- Module Name:    bcdTo7SegDecoder - Behavioral 
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

entity bcdTo7SegDecoder is
    Port ( BCD : in  STD_LOGIC_VECTOR(3 downto 0);
			  Seg7 : out STD_LOGIC_VECTOR (6 downto 0));
end bcdTo7SegDecoder;

architecture Behavioral of bcdTo7SegDecoder is

	begin
		get7Seg : process(BCD)
		begin
			case BCD is
				when "0000" =>
					Seg7 <= "0000001";
				when "0001" =>
					Seg7 <= "1001111";
				when "0010" =>
					Seg7 <= "0010010";
				when "0011" =>
					Seg7 <= "0000110";
				when "0100" =>
					Seg7 <= "1001100";
				when "0101" =>
					Seg7 <= "0100100";
				when "0110" =>
					Seg7 <= "0100000";
				when "0111" =>
					Seg7 <= "0001111";
				when "1000" =>
					Seg7 <= "0000000";
				when "1001" =>
					Seg7 <= "0000100";
				when others =>
					Seg7 <= "1111111";
			end case;
		end process;
	
	end Behavioral;

