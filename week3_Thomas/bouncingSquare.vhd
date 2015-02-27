----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:46:20 02/27/2015 
-- Design Name: 
-- Module Name:    bouncingSquare - Behavioral 
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

entity bouncingSquare is
    Port ( clk50 : in  STD_LOGIC;
			  R, G: out STD_LOGIC_VECTOR(2 downto 0);
			  B : out STD_LOGIC_VECTOR(1 downto 0);
			  hsync, vsync : out STD_LOGIC);
end bouncingSquare;

architecture Behavioral of bouncingSquare is
	component VGA Port ( clk50 : in STD_LOGIC;
		x, y : in STD_LOGIC_VECTOR(9 downto 0);
		red, green : out  STD_LOGIC_VECTOR(2 downto 0);
		blue : out STD_LOGIC_VECTOR(1 downto 0);
		hsync, vsync : out  STD_LOGIC);
	end component;
	
	component positionSelector Port ( clk25 : in STD_LOGIC;
	x, y : out  STD_LOGIC_VECTOR(9 downto 0));
	end component;
	
	signal x, y : STD_LOGIC_VECTOR(9 downto 0);
begin

	POS : positionSelector port map(clk50, x, y);
	VGAOUTPUT : VGA port map(clk50, x, y, R, G, B, hsync, vsync);

end Behavioral;

