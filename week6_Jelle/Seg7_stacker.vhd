----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:00 03/19/2015 
-- Design Name: 
-- Module Name:    Seg7_stacker - Behavioral 
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

entity Seg7_stacker is
    Port ( Seg7_in : in  STD_LOGIC_VECTOR(6 downto 0);
           Enable : in  STD_LOGIC;
           Seg7_0 : out  STD_LOGIC_VECTOR(6 downto 0);
           Seg7_1 : out  STD_LOGIC_VECTOR(6 downto 0);
           Seg7_2 : out  STD_LOGIC_VECTOR(6 downto 0);
           Seg7_3 : out  STD_LOGIC_VECTOR(6 downto 0);
           clk25 : in STD_LOGIC);
end Seg7_stacker;

architecture Behavioral of Seg7_stacker is
	signal last_enable : STD_LOGIC := '0';
begin
	process(Enable, Seg7_in, clk25)
		variable Seg7_0spot : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
		variable Seg7_1spot : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
		variable Seg7_2spot : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
		variable Seg7_3spot : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
	begin
		if(rising_edge(clk25)) then
			if(last_enable = '0' and enable = '1') then --Rising edge
				Seg7_3spot := Seg7_2spot;
				Seg7_2spot := Seg7_1spot;
				Seg7_1spot := Seg7_0spot;

				Seg7_0spot := Seg7_in;
			end if;

			last_enable <= Enable;

			Seg7_0 <= Seg7_0spot;
			Seg7_1 <= Seg7_1spot;
			Seg7_2 <= Seg7_2spot;
			Seg7_3 <= Seg7_3spot;
		end if;
	end process;

end Behavioral;

