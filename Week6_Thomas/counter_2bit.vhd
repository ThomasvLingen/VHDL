----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:32:53 03/19/2015 
-- Design Name: 
-- Module Name:    counter_2bit - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_2bit is
    Port ( clk25 : in  STD_LOGIC;
           counter_out : out  STD_LOGIC_VECTOR(1 downto 0));
end counter_2bit;

architecture Behavioral of counter_2bit is
	constant PRESCALEMAX : integer := 25000;
	signal counter : STD_LOGIC_VECTOR(1 downto 0);
begin
	process(clk25)
		variable prescaler : integer;
	begin
		if(rising_edge(clk25)) then
			prescaler := prescaler + 1;

			if(prescaler >= PRESCALEMAX) then
				prescaler := 0;

				counter <= counter + 1;
			end if;
		end if;
	end process;

	counter_out <= counter;

end Behavioral;

