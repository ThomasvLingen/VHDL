----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:43:58 02/26/2015 
-- Design Name: 
-- Module Name:    BlockPosition - Behavioral 
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

entity BlockPosition is
    Port(
		clk25 : in  STD_LOGIC;
      blockX1, blockX2 : out  STD_LOGIC_VECTOR(9 downto 0) := "0000000000";
      blockY1, blockY2 : out  STD_LOGIC_VECTOR(9 downto 0) := "0000000000"
	);
end BlockPosition;

architecture Behavioral of BlockPosition is

begin
	process (clk25) 
	begin
		blockX1 <= "0111001011";
		blockX2 <= "0111010101";
		blockY1 <= "0100001010";
		blockY2 <= "0100010100";
	end process;
end Behavioral;

