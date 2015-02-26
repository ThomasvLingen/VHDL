----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:42 02/09/2015 
-- Design Name: 
-- Module Name:    ms_counter - Behavioral 
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

entity ms_counter is
    Port ( CLK_in : in  STD_LOGIC;
           CNTR_out : out  STD_LOGIC);
end ms_counter;

architecture Behavioral of ms_counter is

	component prescaler_500k Port (
		CLK_in : in  STD_LOGIC;
      PRESCALE_out : out  STD_LOGIC);
	end component;
	
	component counter_2state Port (
		 CLK_in : in  STD_LOGIC;
       CNTR_out : out  STD_LOGIC);
	end component;

	signal prescale : STD_LOGIC := '0';

	begin
	
		PRESCALER : prescaler_500k port map(CLK_in, prescale);
		COUNTER : counter_2state port map(prescale, CNTR_out);
	
	end Behavioral;

