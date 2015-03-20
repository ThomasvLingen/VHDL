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
		variable F0Bit : STD_LOGIC := '0';
		variable PBit : STD_LOGIC := '0';
		variable enable: STD_LOGIC := '0';
		variable buffCounter : STD_LOGIC_VECTOR(3 downto 0) := "0000";
		variable scancode : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	begin
		if (falling_edge(clkBuff)) then	
			if ((keyData = '0') and (startBit = '0')) then
				startBit := '1';
				enable := '0';
			else
				for i in 0 to 7 loop
					scancode(i) := keyData;
				end loop;
				scancodeOut <= scancode;
				enable := '1';
			end if ;
			enableOut <= enable;
		end if;
	end process;
end Behavioral;