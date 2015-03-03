----------------------------------------------------------------------------------
-- Company:        Avans 
-- Engineer:       T. van Vliet
-- 
-- Create Date:    14:13:20 04/11/2009 
-- Module Name:    VGA - Behavioral 
-- Target Devices: Xilinx Spartan3 
-- Description: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.ALL;

entity VGA is
    Port ( clk25 : in STD_LOGIC;
			  x, y : in STD_LOGIC_VECTOR(9 downto 0);
			  red, green : out  STD_LOGIC_VECTOR(2 downto 0) := "000";
			  blue : out STD_LOGIC_VECTOR(1 downto 0) := "00";
           hsync, vsync : out  STD_LOGIC);
end VGA;

architecture Behavioral of VGA is
  signal hcount: STD_LOGIC_VECTOR(9 downto 0);
  signal vcount: STD_LOGIC_VECTOR(9 downto 0);
  
  signal width: STD_LOGIC_VECTOR(9 downto 0);
  signal height: STD_LOGIC_VECTOR(9 downto 0);
  
begin

	width <= std_logic_vector(to_unsigned(25, width'length));
	height <= std_logic_vector(to_unsigned(25, height'length));

process (clk25) 
begin	
	if rising_edge(clk25) then
		if (hcount >= 144) and (hcount < 784) and (vcount >= 31) and (vcount < 511) then
			if(hcount >= 144+x) and (hcount < 144+x+width) and (vcount >= 31+y) and (vcount < 31+y+height) then
				red <= "000";
				green <= "110";
				blue <= "00";
			else
				red <= "010";
				green <= "000";
				blue <= "00";
			end if;
      else
        red <= "000";
        green <= "000";
        blue <= "00";
      end if;
	 
      if hcount < 97 then
        hsync <= '0';
      else
        hsync <= '1';
      end if;

      if vcount < 3 then
        vsync <= '0';
      else
        vsync <= '1';
      end if;
	 
      hcount <= hcount + 1;
	 
      if hcount = 800 then
        vcount <= vcount + 1;
        hcount <= (others => '0');
      end if;
	 
      if vcount = 521 then		    
        vcount <= (others => '0');
      end if;
	 end if;
end process;
	
end Behavioral;

