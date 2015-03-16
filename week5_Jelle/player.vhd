----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:18 03/11/2015 
-- Design Name: 
-- Module Name:    player - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity player is
    Port ( sampleCounter : in  STD_LOGIC_VECTOR(11 downto 0);
           soundByte : in  STD_LOGIC_VECTOR(7 downto 0);
			  clk25 : in STD_LOGIC;
			  audio : out STD_LOGIC);
end player;

architecture Behavioral of player is

begin
	process(clk25, soundByte, sampleCounter)
		variable counter : STD_LOGIC_VECTOR(7 downto 0);
	begin
		if(rising_edge(clk25)) then
			if(counter > soundByte) then
				audio <= '0';
			else
				audio <= '1';
			end if;
			
			if(sampleCounter >= 3125) then
				--lolwut
				--counter := (others => '0');
			else
				counter := counter + 1;
			end if;
			
			if( counter >= 255) then
				counter := (others => '0');
			end if;
		end if;
	end process;
end Behavioral;
