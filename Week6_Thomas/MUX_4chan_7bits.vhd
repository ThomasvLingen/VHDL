----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:03:08 03/19/2015 
-- Design Name: 
-- Module Name:    MUX_4chan_8bits - Behavioral 
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

entity MUX_4chan_8bits is
    Port ( Seg7_0 : in  STD_LOGIC_VECTOR(6 downto 0);
           Seg7_1 : in  STD_LOGIC_VECTOR(6 downto 0);
           Seg7_2 : in  STD_LOGIC_VECTOR(6 downto 0);
           Seg7_3 : in  STD_LOGIC_VECTOR(6 downto 0);
           SEL : in  STD_LOGIC_VECTOR(1 downto 0);
           Seg7_out : out  STD_LOGIC_VECTOR(6 downto 0));
end MUX_4chan_8bits;

architecture Behavioral of MUX_4chan_8bits is 
begin
	process(Seg7_0, Seg7_1, Seg7_2, Seg7_3, SEL)
	begin
		case SEL is
			when "00" =>
				Seg7_out <= Seg7_0;
			when "01" =>
				Seg7_out <= Seg7_1;
			when "10" =>
				Seg7_out <= Seg7_2;
			when "11" =>
				Seg7_out <= Seg7_3;
			when others =>
				Seg7_out <= "0000000";
		end case;
	end process;
end Behavioral;

