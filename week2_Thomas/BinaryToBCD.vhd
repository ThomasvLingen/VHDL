----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:06:22 02/10/2015 
-- Design Name: 
-- Module Name:    BinaryToBCD - Behavioral 
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BinaryToBCD is
    Port ( binary : in  STD_LOGIC_VECTOR(7 downto 0);
			  BCD0 : out STD_LOGIC_VECTOR(3 downto 0);
			  BCD1 : out STD_LOGIC_VECTOR(3 downto 0));
end BinaryToBCD;

architecture Behavioral of BinaryToBCD is

	begin
	
		process(binary)
			variable temp: STD_LOGIC_VECTOR (7 downto 0);
			variable BCD: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
		begin
		
			for i in 0 to 7 loop
				bcd(i) := '0';
			end loop;
 
			temp(7 downto 0) := binary;
			
			for i in 0 to 7 loop
				if BCD(3 downto 0) > 4 then
					BCD(3 downto 0) := BCD(3 downto 0) + 3;
				end if;
				
				if BCD(7 downto 4) > 4 then
					BCD(7 downto 4) := BCD(7 downto 4) + 3;
				end if;
				
				--Shift left
				BCD(7 downto 1) := BCD(6 downto 0);
				BCD(0 downto 0) := temp(7 downto 7);
				temp(7 downto 1) := temp(6 downto 0);
			end loop;
			
			BCD0 <= BCD(3 downto 0);
			BCD1 <= BCD(7 downto 4);
			
		end process;

	
	end Behavioral;

