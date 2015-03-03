----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:34:12 02/27/2015 
-- Design Name: 
-- Module Name:    positionSelector - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity positionSelector is
    Port ( x, y : out  STD_LOGIC_VECTOR(9 downto 0);
			  clk25 : in STD_LOGIC);
end positionSelector;

architecture Behavioral of positionSelector is
	signal right, down : std_logic := '1';
	
begin
	process(clk25)
		variable prescale : STD_LOGIC_VECTOR(19 downto 0) := (others => '0');
		variable tempx : STD_LOGIC_VECTOR(9 downto 0) := "0011000110";
		variable tempy : STD_LOGIC_VECTOR(9 downto 0) := "0000000000";
		
		constant step : STD_LOGIC_VECTOR(3 downto 0) := "0001";
	begin
	if rising_edge(clk25) then
		if prescale = 125000 then
			if right = '1' then
				tempx := tempx + step;
			else
				tempx := tempx - step;
			end if;
			
			if down = '1' then
				tempy := tempy + step;
			else
				tempy := tempy - step;
			end if;
			
			if tempx >= 640 - 25 then
				right <= '0';
				tempx := tempx - step;
			end if;
			if tempx <= 0 then
				right <= '1';
				tempx := tempx + step;
			end if;
			
			if tempy >= 480 - 25 then
				down <= '0';
				tempy := tempy - step;
			end if;
			if tempy <= 0 then
				down <= '1';
				tempy := tempy + step;
			end if;

			prescale := (others => '0');
		end if;
		prescale := prescale + 1;
		
		x <= tempx;
		y <= tempy;
	end if;
	end process;
	
end Behavioral;

