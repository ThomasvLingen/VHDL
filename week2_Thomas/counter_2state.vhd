----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:30 02/09/2015 
-- Design Name: 
-- Module Name:    counter_2state - Behavioral 
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_2state is
    Port ( CLK_in : in  STD_LOGIC;
           CNTR_out : out  STD_LOGIC);
end counter_2state;

architecture Behavioral of counter_2state is
	
	constant PRESCALE1MS : integer := 1;
	signal cnt2 : STD_LOGIC_VECTOR(7 downto 0);
	signal cnt : STD_LOGIC := '0';
	begin
		countProcess : process(CLK_in)
		begin
		
			if rising_edge(CLK_in) then
			
				cnt2 <= cnt2 + 1;
				
				if cnt2 = PRESCALE1MS then
						cnt2 <= (others=>'0');
						cnt <= NOT(cnt);
				end if;
				
			end if;
			
		end process;
		
		CNTR_out <= cnt;
	end Behavioral;

