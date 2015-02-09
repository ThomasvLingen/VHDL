----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:48 02/09/2015 
-- Design Name: 
-- Module Name:    fullAdder_4_1 - Behavioral 
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

entity fullAdder_4_1 is
    Port ( a : in STD_LOGIC_VECTOR(3 downto 0);
			  b : in STD_LOGIC_VECTOR(3 downto 0);
           Cin : in  STD_LOGIC;
           Cout : in  STD_LOGIC_VECTOR(3 downto 0);
           sum : in  STD_LOGIC_VECTOR(3 downto 0));
end fullAdder_4_1;

architecture Behavioral of fullAdder_4_1 is

	component fullAdder Port(
		a : in STD_LOGIC;
		b: in STD_LOGIC;
		Cin : in STD_LOGIC;
		s : out STD_LOGIC;
		Cout : out STD_LOGIC
	);
	end component;
	
	signal CoutSig : STD_LOGIC_VECTOR(2 downto 0);

	begin

		ADDER0: fullAdder port map(a(0), b(0), Cin, sum(0), Cout0);
		ADDER1: fullAdder port map(a(1), b(1), CoutSig(0), sum(1), Cout1);
		ADDER2: fullAdder port map(a(2), b(2), CoutSig(1), sum(2), Cout2);
		ADDER3: fullAdder port map(a(3), b(3), CoutSig(2), sum(3), Cout);
		
end Behavioral;

