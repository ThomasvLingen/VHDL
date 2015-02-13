----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Thomas van Lingen
-- 
-- Create Date:    12:40:19 02/13/2015 
-- Design Name: 
-- Module Name:    fullAdder_4_7Seg - Behavioral 
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

entity fullAdder_4_7Seg is
	Port(
		input0 : in STD_LOGIC_VECTOR(3 downto 0);
		input1 : in STD_LOGIC_VECTOR(3 downto 0);
		C_in : in STD_LOGIC;
		CLK_in : in STD_LOGIC;
		Seg7 : out STD_LOGIC_VECTOR(6 downto 0);
		Rows : out STD_LOGIC_VECTOR(3 downto 0));
end fullAdder_4_7Seg;

architecture Behavioral of fullAdder_4_7Seg is
	--Used components
	component fullAdder_4_BCD Port(
		a: in STD_LOGIC_VECTOR(3 downto 0);
		b: in STD_LOGIC_VECTOR(3 downto 0);
		C_in : in STD_LOGIC;
		BCD0 : out STD_LOGIC_VECTOR(3 downto 0);
		BCD1 : out STD_LOGIC_VECTOR(3 downto 0));	
	end component;
	
	component ms_counter Port(
		CLK_in : in STD_LOGIC;
		CNTR_out : out STD_LOGIC);
	end component;
	
	component bcdTo7SegDecoder Port(
		BCD : in STD_LOGIC_VECTOR(3 downto 0);
		Seg7 : out STD_LOGIC_VECTOR(6 downto 0));
	end component;
	
	component MUX_2Chan_BCD Port(
		BCD_in0 : in STD_LOGIC_VECTOR(3 downto 0);
		BCD_in1 : in STD_LOGIC_VECTOR(3 downto 0);
		sel : in STD_LOGIC;
		BCD_out : out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	--Signals
	signal BCD0 : STD_LOGIC_VECTOR(3 downto 0);
	signal BCD1 : STD_LOGIC_VECTOR(3 downto 0);
	signal BCD_out : STD_LOGIC_VECTOR(3 downto 0);
	signal CNTR_out : STD_LOGIC;
	
	
	--BEHAVIOUR
	begin
		ADDER_BCD : fullAdder_4_BCD port map(input0, input1, C_in, BCD0, BCD1);
		COUNTER : ms_counter port map(CLK_in, CNTR_out);
		
		--Rows for 7Seg displays
		Rows(0) <= CNTR_out;
		Rows(1) <= not CNTR_out;
			--Turns off the rows that we don't use
		Rows(2) <= '1';
		Rows(3) <= '1';
		
		MUX : MUX_2Chan_BCD port map(BCD0, BCD1, CNTR_out, BCD_out);
		
		BCDTO7SEG : bcdTo7SegDecoder port map(BCD_out, Seg7);
	end Behavioral;

