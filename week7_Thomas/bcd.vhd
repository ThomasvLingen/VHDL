----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:20:13 10/08/2009 
-- Design Name: 
-- Module Name:    bcd - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd is
    Port ( hex :      in   STD_LOGIC_VECTOR (7 downto 0);
           unit  :    out  STD_LOGIC_VECTOR (3 downto 0);
           tens :     out  STD_LOGIC_VECTOR (3 downto 0);
           hundreds : out  STD_LOGIC_VECTOR (3 downto 0)
          );
end bcd;

architecture Behavioral of bcd is
    
    procedure add3if( variable digit: inout STD_LOGIC_VECTOR( 3 downto 0 ) ) is
    begin
        case digit is
        when "0000" => digit := "0000";
        when "0001" => digit := "0001";
        when "0010" => digit := "0010";
        when "0011" => digit := "0011";
        when "0100" => digit := "0100";
        when "0101" => digit := "1000";
        when "0110" => digit := "1001";
        when "0111" => digit := "1010";
        when "1000" => digit := "1011";
        when "1001" => digit := "1100";
        when others => digit := "0000";
        end case;
    end add3if;
    
begin

    
    

    
    to_bcd: process ( hex )
        variable bcd : STD_LOGIC_VECTOR( 19 downto 0 );
    begin
        bcd( 7  downto 0 ) := hex;
        bcd( 19 downto 8 ) := (others => '0');
        
        -- Shift and add 8 times
        for I in 0 to 6 loop
           bcd( 19 downto 1 ) :=  bcd( 18 downto 0 );      
           add3if( bcd( 11 downto 08 ) );
           add3if( bcd( 15 downto 12 ) );
        end loop;
        
        -- Shift the 8th time
        bcd( 19 downto 1 ) :=  bcd( 18 downto 0 );
       
        
        -- Assign signals
        unit     <= bcd( 11 downto 08);
        tens     <= bcd( 15 downto 12);
        hundreds <= bcd( 19 downto 16);
  
    end process to_bcd;


end Behavioral;

