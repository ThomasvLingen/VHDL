----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:12:07 03/20/2015 
-- Design Name: 
-- Module Name:    dataBuffer - Behavioral 
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
use ieee.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dataBuffer is
	Port ( keyData : in  STD_LOGIC;
		clkBuff : in STD_LOGIC;
		enableOut : out STD_LOGIC;
        scancodeOut : out  STD_LOGIC_VECTOR(7 downto 0));
end dataBuffer;

architecture Behavioral of dataBuffer is
begin
	process(keyData, clkBuff)
		variable startBit : STD_LOGIC := '0';
		variable F0Bit : STD_LOGIC := '1';
		variable PBit : STD_LOGIC := '1';
		variable enable: STD_LOGIC := '0';
		variable buffCounter : STD_LOGIC_VECTOR(3 downto 0) := "0000";
		variable scancode : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	begin
		if (rising_edge(clkBuff)) then	
			enable := '0';
			if ((keyData = '0') and (buffCounter = 0)) then
				startBit := '1';
			end if;
			if (startBit = '1') then
				if (buffCounter = 8) then
					if (PBit = '1') then
						if (scancode = x"F0") then
							F0Bit := '1';
						else
							if (F0Bit = '1') then
								scancodeOut <= scancode;
								enable := '1';
							end if;
						end if;
						buffCounter := (others => '0');
						startBit := '0';
					else
						PBit := '1';	
					end if;
				else
					scancode(7 downto 1) := scancode(6 downto 0);
					scancode := scancode + keyData;
					buffCounter := buffCounter + '1';
				end if;
			end if;
			enableOut <= enable;
		end if;
	end process;

end Behavioral;

