----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2025 03:03:19 PM
-- Design Name: 
-- Module Name: TB_Multiplier_2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Multiplier_2 is
--  Port ( );
end TB_Multiplier_2;

architecture Behavioral of TB_Multiplier_2 is
component Multiplier_2
    port (
        A : in std_logic_vector (1 downto 0);
        B : in std_logic_vector (1 downto 0);
        Y : out std_logic_vector (3 downto 0));
 end component;       
     
signal A : STD_LOGIC_VECTOR(1 downto 0);
signal B : STD_LOGIC_VECTOR(1 downto 0);
signal Y    : STD_LOGIC_VECTOR(3 downto 0); 
   
begin
UUT: Multiplier_2
    port map(
    A => A,
    B => B,
    Y => Y);
    
 process
 begin
 A <= "01";
 B <= "11";
 
 wait for 100ns;
 
 A <= "00";
 B <= "01";
 
 wait for 100ns;
 
 A <= "11";
 B <= "11";
 
 wait;
 
 end process;


end Behavioral;
