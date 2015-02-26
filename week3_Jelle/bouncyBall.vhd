----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:53 02/26/2015 
-- Design Name: 
-- Module Name:    bouncyBall - Behavioral 
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

entity bouncyBall is
		Port(
			clk25 : in STD_LOGIC;
			red, green, blue : out  STD_LOGIC;
         hsync, vsync : out  STD_LOGIC
		);
end bouncyBall;

architecture Behavioral of bouncyBall is
	component BlockPosition
		port(
			clk25 : in STD_LOGIC;
			blockX1, blockX2 : out  STD_LOGIC_VECTOR(9 downto 0);
         blockY1, blockY2 : out  STD_LOGIC_VECTOR(9 downto 0)
		);
	end component;
	
	component VGA
		port(
			clk25 : in STD_LOGIC;
			blockX1, blockX2 : in  STD_LOGIC_VECTOR(9 downto 0);
         blockY1, blockY2 : in  STD_LOGIC_VECTOR(9 downto 0);
			red, green, blue : out  STD_LOGIC;
         hsync, vsync : out  STD_LOGIC
		);
	end component;
	signal blockX1: STD_LOGIC_VECTOR(9 downto 0);
	signal blockX2: STD_LOGIC_VECTOR(9 downto 0);
	signal blockY1: STD_LOGIC_VECTOR(9 downto 0);
	signal blockY2: STD_LOGIC_VECTOR(9 downto 0);
begin

	BP : BlockPosition port map(
		clk25 => clk25,
		blockX1 => blockX1,
		blockX2 => blockX2,
		blockY1 => blockY1,
		blockY2 => blockY2
	);
	
	V : VGA port map(
		clk25 => clk25,
		blockX1 => blockX1,
		blockX2 => blockX2,
		blockY1 => blockY1,
		blockY2 => blockY2,
		red => red,
		green => green,
		blue => blue,
		hsync => hsync,
		vsync => vsync
	);

end Behavioral;

