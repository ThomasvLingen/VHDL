----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:39 03/11/2015 
-- Design Name: 
-- Module Name:    audioPlayer - Behavioral 
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

entity audioPlayer is
    Port ( clk25 : in  STD_LOGIC;
			  audio_outR: out STD_LOGIC;
			  audio_outL: out STD_LOGIC);
end audioPlayer;

architecture Behavioral of audioPlayer is
	component player Port ( 
			  sampleCounter : in  STD_LOGIC_VECTOR(11 downto 0);
           soundByte : in  STD_LOGIC_VECTOR(7 downto 0);
			  clk25 : in STD_LOGIC;
			  audio : out STD_LOGIC);
	end component;
	
	component soundByteSelector Port (
			  sampleCounter : in  STD_LOGIC_VECTOR(11 downto 0);
			  clk25 : in STD_LOGIC;
           soundByte : out  STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	signal sampleCounter : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
	signal soundByte : STD_LOGIC_VECTOR(7 downto 0);
	signal audio_out : STD_LOGIC := '0';
begin

	SB : soundByteSelector port map(sampleCounter, clk25, soundByte);
	PL : player port map(sampleCounter, soundByte, clk25, audio_out);
	
	process(clk25) begin
		if (rising_edge(clk25)) then
			if (sampleCounter >= 3125) then
				sampleCounter <= (others => '0');
			else
				sampleCounter <= sampleCounter + 1;
			end if;
			audio_outR <= audio_out;
			audio_outL <= audio_out;
		end if;
	end process;
end Behavioral;

