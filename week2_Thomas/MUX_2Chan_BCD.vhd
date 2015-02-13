----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:42:55 02/13/2015 
-- Design Name: 
-- Module Name:    MUX_2Chan_BCD - Behavioral 
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

entity MUX_2Chan_BCD is
    Port ( BCD_in0 : in  STD_LOGIC_VECTOR(3 downto 0);
           BCD_in1 : in  STD_LOGIC_VECTOR(3 downto 0);
           sel : in  STD_LOGIC;
           BCD_out : out  STD_LOGIC_VECTOR(3 downto 0));
end MUX_2Chan_BCD;

architecture Behavioral of MUX_2Chan_BCD is

	begin
		process(sel, BCD_in0, BCD_in1)
		begin
			case sel is
				when '0' =>
					BCD_out <= BCD_in0;
				when '1' =>
					BCD_out <= BCD_in1;
				when others =>
					BCD_out <= "1111";
					
			end case;
		end process;

	end Behavioral;

