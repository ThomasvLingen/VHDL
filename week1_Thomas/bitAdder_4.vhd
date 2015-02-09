----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:09 02/04/2015 
-- Design Name: 
-- Module Name:    bitAdder_4 - Behavioral 
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

entity bitAdder_4 is
    Port ( a0 : in  STD_LOGIC;
           b0 : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           a2 : in  STD_LOGIC;
           b2 : in  STD_LOGIC;
           a3 : in  STD_LOGIC;
           b3 : in  STD_LOGIC;
           out0 : out  STD_LOGIC;
           out1 : out  STD_LOGIC;
           out2 : out  STD_LOGIC;
           out3 : out  STD_LOGIC;
           C_in : in  STD_LOGIC;
           C_out : out  STD_LOGIC);
end bitAdder_4;

architecture Behavioral of bitAdder_4 is

component fullAdder Port(
	a : in STD_LOGIC;
	b: in STD_LOGIC;
	Cin : in STD_LOGIC;
	s : out STD_LOGIC;
	Cout : out STD_LOGIC
);
end component;

signal Cout0, Cout1, Cout2 : STD_LOGIC;

begin

	ADDER0 : fullAdder port map(a0, b0, C_in, out0, Cout0);
	ADDER1 : fullAdder port map(a1, b1, Cout0, out1, Cout1);
	ADDER2 : fullAdder port map(a2, b2, Cout1, out2, Cout2);
	ADDER3 : fullAdder port map(a3, b3, Cout2, out3, C_out);

end Behavioral;

