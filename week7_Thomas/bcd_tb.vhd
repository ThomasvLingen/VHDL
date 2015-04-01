--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:54:42 03/23/2015
-- Design Name:   
-- Module Name:   C:/Avans/Jaar 2/VHDL/VHDL/week7_Thomas/bcd_tb.vhd
-- Project Name:  week7_Thomas
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bcd
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.ALL;
 
ENTITY bcd_tb IS
END bcd_tb;
 
ARCHITECTURE behavior OF bcd_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd
    PORT(
         hex : IN  std_logic_vector(7 downto 0);
         unit : OUT  std_logic_vector(3 downto 0);
         tens : OUT  std_logic_vector(3 downto 0);
         hundreds : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal hex : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal unit : std_logic_vector(3 downto 0);
   signal tens : std_logic_vector(3 downto 0);
   signal hundreds : std_logic_vector(3 downto 0);
   signal success : STD_LOGIC := '0';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
   --Expected stuff
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd PORT MAP (
          hex => hex,
          unit => unit,
          tens => tens,
          hundreds => hundreds
        );
 
   -- Stimulus process
   stim_proc: process
    variable expectedUnit : STD_LOGIC_VECTOR(3 downto 0);
    variable expectedTens : STD_LOGIC_VECTOR(3 downto 0);
    variable expectedHundreds : STD_LOGIC_VECTOR(3 downto 0);
    variable tmp : integer;
   begin		
      -- hold reset state for 100 ns.
      success <= '1';
      wait for 100 ns;

      for i in 0 to 255 loop
        hex <= std_logic_vector(to_unsigned(i, hex'length));
        wait for 10 ns;

        tmp := i;

        expectedHundreds := std_logic_vector(to_unsigned(tmp / 100, expectedHundreds'length));
        tmp := tmp - ((tmp/100) * 100);

        expectedTens := std_logic_vector(to_unsigned(tmp / 10, expectedTens'length));
        tmp := tmp - ((tmp/10) * 10);

        expectedUnit := std_logic_vector(to_unsigned(tmp, expectedUnit'length));

        if(unit /= expectedUnit or tens /= expectedTens or hundreds /= expectedHundreds) then
            success <= '0';
        end if;
      end loop;

      wait;
   end process;

END;
