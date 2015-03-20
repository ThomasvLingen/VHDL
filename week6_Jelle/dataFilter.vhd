----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:12:07 03/20/2015 
-- Design Name: 
-- Module Name:    dataFilter - Behavioral 
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

entity dataFilter is
	Port ( KeyData : in  STD_LOGIC;
		clkSync : in STD_LOGIC;
        dataOut : out  STD_LOGIC);
end dataFilter;

architecture Behavioral of dataFilter is
begin
	process(KeyData, clkSync)
		variable startBit : STD_LOGIC;
		variable buffCounter : STD_LOGIC_VECTOR(7 downto 0);
	begin
		if (rising_edge(clkSync)) then	
			if ((KeyData = '0') and (buffCounter == 0)) then
				startBit := '1';
			end if;
			if (startBit = '1') then
				
				buffCounter := buffCounter + '1';
			end if ;
		end if ;
	end process;

end Behavioral;

