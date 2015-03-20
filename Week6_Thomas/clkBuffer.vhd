----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:07 03/19/2015 
-- Design Name: 
-- Module Name:    clkBuffer - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clkBuffer is
    Port ( KeyCLK : in  STD_LOGIC;
			  clk25 : in STD_LOGIC;
           clkBuff : out  STD_LOGIC);
end clkBuffer;

architecture Behavioral of clkBuffer is
	
	
	
	begin
		process(clk25, KeyCLK)
			variable B0 : STD_LOGIC := '0';
			variable B1 : STD_LOGIC := '0';
			variable B2 : STD_LOGIC := '0';
		begin

			if(rising_edge(clk25)) then
				B2 := B1;
				B1 := B0;
				
				if(KeyCLK = '1') then
					B0 := '1';
				else
					B0 := '0';
				end if;
			end if;
			
			if(B0 = '1' and B1 = '1' and B2 = '1') then
				clkBuff <= '1';
			end if;
			
			if(B0 = '0' and B1 = '0' and B2 = '0') then
				clkBuff <= '0';
			end if;
		end process;
	end Behavioral;

