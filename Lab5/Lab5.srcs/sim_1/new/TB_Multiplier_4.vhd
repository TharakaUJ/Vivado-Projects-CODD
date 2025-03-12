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

entity TB_Multiplier_4 is
--  Port ( );
end TB_Multiplier_4;

architecture Behavioral of TB_Multiplier_4 is
component Multiplier_4
    port (
        A : in  STD_LOGIC_VECTOR (3 downto 0);
        B : in  STD_LOGIC_VECTOR (3 downto 0);
        Y : out STD_LOGIC_VECTOR (7 downto 0)
    );
end component;      
  
signal A : STD_LOGIC_VECTOR(3 downto 0);
signal B : STD_LOGIC_VECTOR(3 downto 0);
signal Y    : STD_LOGIC_VECTOR(7 downto 0); 

     
begin
 UUT: Multiplier_4
        port map (
            A => A,
            B => B,
            Y => Y
        );

    process
    begin
        A <= "1110"; B <= "1111";
        wait for 100 ns;

        A <= "1011"; B <= "1111";
        wait for 100 ns;

        A <= "1100"; B <= "1111";
        wait for 100 ns;

        A <= "1101"; B <= "1111";
        wait for 100 ns;

        A <= "1111"; B <= "1111";
        wait;
    end process;

end Behavioral;

