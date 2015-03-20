----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:07 03/19/2015 
-- Design Name: 
-- Module Name:    synchronise - Behavioral 
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

entity synchronise is
    Port ( KeyCLK : in  STD_LOGIC;
			  clk25 : in STD_LOGIC;
           clkSync : out  STD_LOGIC);
end synchronise;

architecture Behavioral of synchronise is
	
	
	
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
			
				if(B0 = '1' and B1 = '1' and B2 = '1') then
					clkSync <= '1';
				elsif (B0 = '0' and B1 = '0' and B2 = '0') then
					clkSync <= '0';
				end if;
			end if;

		end process;
	end Behavioral;

