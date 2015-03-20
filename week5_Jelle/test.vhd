--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:52:36 03/19/2015
-- Design Name:   
-- Module Name:   D:/Docu_Jelle/School/Avans/TI/Blok7/VHDL/wekelijks/VHDL/VHDL/week5_Jelle/test.vhd
-- Project Name:  week5_Jelle
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: audioPlayer
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
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT audioPlayer
    PORT(
         clk25 : IN  std_logic;
         audio_outR : OUT  std_logic;
         audio_outL : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk25 : std_logic := '0';

 	--Outputs
   signal audio_outR : std_logic;
   signal audio_outL : std_logic;

   -- Clock period definitions
   constant clk25_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: audioPlayer PORT MAP (
          clk25 => clk25,
          audio_outR => audio_outR,
          audio_outL => audio_outL
        );

   -- Clock process definitions
   clk25_process :process
   begin
		clk25 <= '0';
		wait for clk25_period/2;
		clk25 <= '1';
		wait for clk25_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk25_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
