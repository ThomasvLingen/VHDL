----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:14:11 03/19/2015 
-- Design Name: 
-- Module Name:    ScancodeTo7Seg - Behavioral 
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

entity ScancodeTo7Seg is
    Port ( scancode : in  STD_LOGIC_VECTOR(7 downto 0);
           Seg7 : out  STD_LOGIC_VECTOR(6 downto 0));
end ScancodeTo7Seg;

architecture Behavioral of ScancodeTo7Seg is

begin

get7Seg : process(scancode)
begin
	case scancode is
		when "01000101" =>
			Seg7 <= "1000000";
		when "00010110" =>
			Seg7 <= "1111001";
		when "00011110" =>
			Seg7 <= "0100100";
		when "00100110" =>
			Seg7 <= "0110000";
		when "00100101" =>
			Seg7 <= "0011001";
		when "00101110" =>
			Seg7 <= "0010010";
		when "00110110" =>
			Seg7 <= "0000010";
		when "00111101" =>
			Seg7 <= "1111000";
		when "00111110" =>
			Seg7 <= "0000000";
		when "01000110" =>
			Seg7 <= "0010000";
		when others =>
			Seg7 <= "0000110";
	end case;
end process;

end Behavioral;

