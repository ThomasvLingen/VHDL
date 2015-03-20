----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:45 03/19/2015 
-- Design Name: 
-- Module Name:    keyboardStuff - Behavioral 
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

entity keyboardStuff is
    Port ( KeyCLK : in  STD_LOGIC;
           clk25 : in  STD_LOGIC;
           buffCLK : out  STD_LOGIC);
end keyboardStuff;

architecture Behavioral of keyboardStuff is

	component clkBuffer Port (
			  KeyCLK : in  STD_LOGIC;
			  clk25 : in STD_LOGIC;
           clkBuff : out  STD_LOGIC);
	end component;

begin

CLKBUFF : clkBuffer port map(KeyCLK, clk25, buffCLK);

end Behavioral;

