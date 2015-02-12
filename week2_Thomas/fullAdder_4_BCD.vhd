----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:57:11 02/12/2015 
-- Design Name: 
-- Module Name:    fullAdder_4_BCD - Behavioral 
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

entity fullAdder_4_BCD is
    Port ( a : in  STD_LOGIC_VECTOR(3 downto 0);
           b : in  STD_LOGIC_VECTOR(3 downto 0);
			  C_in : in STD_LOGIC;
			  BCD0 : out STD_LOGIC_VECTOR(3 downto 0);
			  BCD1 : out STD_LOGIC_VECTOR(3 downto 0));
end fullAdder_4_BCD;

architecture Behavioral of fullAdder_4_BCD is
	component fullAdder_4_1 Port (
		a : in STD_LOGIC_VECTOR(3 downto 0);
		b : in STD_LOGIC_VECTOR(3 downto 0);
      Cin : in  STD_LOGIC;
      Cout : out  STD_LOGIC_VECTOR(3 downto 0);
      sum : out  STD_LOGIC_VECTOR(3 downto 0)
	);
	end component;
	
	component BinaryToBCD Port ( 
		binary : in  STD_LOGIC_VECTOR(7 downto 0);
		BCD0 : out STD_LOGIC_VECTOR(3 downto 0);
		BCD1 : out STD_LOGIC_VECTOR(3 downto 0)
	);
	end component;
	
	signal binaryIn : STD_LOGIC_VECTOR(7 downto 0);
	
	begin
		ADDER : fullAdder_4_1 port map(a, b, C_in, binaryIn(7 downto 4), binaryIn(3 downto 0));
		BtoBCD : BinaryToBCD port map(binaryIn, BCD0, BCD1);

	end Behavioral;

