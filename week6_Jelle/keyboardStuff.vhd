----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:45 03/19/2015 
-- Design Name: 
-- Module Name:    keyboardStuff - Behavioral 
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

entity keyboardStuff is
    Port ( keyCLK : in  STD_LOGIC;
           keyData: in  STD_LOGIC;
           clk25 : in  STD_LOGIC;
           seg7Out : out STD_LOGIC_VECTOR(6 downto 0);
           rows : out STD_LOGIC_VECTOR(3 downto 0));
end keyboardStuff;

architecture Behavioral of keyboardStuff is

	component clkBuffer Port (
		KeyCLK : in  STD_LOGIC;
		clk25 : in STD_LOGIC;
		clkBuff : out  STD_LOGIC);
	end component;

	component dataBuffer Port ( 
		keyData : in  STD_LOGIC;
		clkBuff : in STD_LOGIC;
		enableOut : out STD_LOGIC;
        scancodeOut : out  STD_LOGIC_VECTOR(7 downto 0));
	end component;

	component ScancodeTo7Seg Port(
		scancode : in  STD_LOGIC_VECTOR(7 downto 0);
        Seg7 : out  STD_LOGIC_VECTOR(6 downto 0));
	end component;

	component Seg7_stacker Port(
		Seg7_in : in  STD_LOGIC_VECTOR(6 downto 0);
		Enable : in  STD_LOGIC;
		Seg7_0 : out  STD_LOGIC_VECTOR(6 downto 0);
		Seg7_1 : out  STD_LOGIC_VECTOR(6 downto 0);
		Seg7_2 : out  STD_LOGIC_VECTOR(6 downto 0);
		Seg7_3 : out  STD_LOGIC_VECTOR(6 downto 0);
		clk25 : in STD_LOGIC);
	end component;

	component MUX_4chan_8bits Port(
		Seg7_0 : in  STD_LOGIC_VECTOR(6 downto 0);
		Seg7_1 : in  STD_LOGIC_VECTOR(6 downto 0);
		Seg7_2 : in  STD_LOGIC_VECTOR(6 downto 0);
		Seg7_3 : in  STD_LOGIC_VECTOR(6 downto 0);
		SEL : in  STD_LOGIC_VECTOR(1 downto 0);
		Seg7_out : out  STD_LOGIC_VECTOR(6 downto 0));
	end component;

	component counter_2bit Port(
		clk25 : in  STD_LOGIC;
		counter_out : out  STD_LOGIC_VECTOR(1 downto 0));
	end component;

	component counterToRows Port(
		counter : in  STD_LOGIC_VECTOR(1 downto 0);
		rows : out  STD_LOGIC_VECTOR(3 downto 0));
	end component;
--Signals
signal clkBuff : STD_LOGIC := '0';
signal enable : STD_LOGIC := '0';
signal scancodeOut : STD_LOGIC_VECTOR(7 downto 0);
signal seg7Pre : STD_LOGIC_VECTOR(6 downto 0);
signal seg7In0 : STD_LOGIC_VECTOR(6 downto 0);
signal seg7In1 : STD_LOGIC_VECTOR(6 downto 0);
signal seg7In2 : STD_LOGIC_VECTOR(6 downto 0);
signal seg7In3 : STD_LOGIC_VECTOR(6 downto 0);
signal sel : STD_LOGIC_VECTOR(1 downto 0);

begin

CLKBUFFF : clkBuffer port map(keyCLK, clk25, clkBuff);
DATABUFF : dataBuffer port map(keyData, clkBuff, enable, scancodeOut);
SCANCODE7SEG : ScancodeTo7Seg port map(scancodeOut, seg7Pre);
SEG7STACKER : Seg7_stacker port map(seg7Pre, enable, seg7In0, seg7In1, seg7In2, seg7In3, clk25);
COUNTER : counter_2bit port map(clk25, sel);
MUX : MUX_4chan_8bits port map(seg7In0, seg7In1, seg7In2, seg7In3, sel, seg7Out);
COMBI : counterToRows port map(sel, rows);
end Behavioral;

