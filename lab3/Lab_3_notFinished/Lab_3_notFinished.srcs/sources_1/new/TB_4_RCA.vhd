----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 02:56:39 PM
-- Design Name: 
-- Module Name: TB_4_RCA - Behavioral
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

entity TB_4_RCA is
--  Port ( );
end TB_4_RCA;

architecture Behavioral of TB_4_RCA is
COMPONENT RCA_4
    PORT( A,B,C_in : IN STD_LOGIC;
          S, C_out  : OUT STD_LOGIC);
END COMPONENT;

SIGNAL A, B,C_in : std_logic;
SIGNAL S, C_out   : std_logic;

begin
UUT: FA PORT MAP(
        A => A,
        B => B,
        C_in => C_in,
        S => S,
        C_out => C_out
);

process
begin
    A <= '0';
    B <= '0';
    C_in <= '0';
    
    WAIT FOR 100ns;
    
    B <= '1';
  
    WAIT FOR 100ns;

    A <= '1';
    B <= '0'; 
    
    WAIT FOR 100ns;

    B <= '1'; 
    
    WAIT FOR 100ns;
    A <= '0';
    B <= '0';
    C_in <= '1';
    
    WAIT FOR 100ns;
    
    B <= '1';
  
    WAIT FOR 100ns;

    A <= '1';
    B <= '0'; 
    
    WAIT FOR 100ns;

    B <= '1'; 
    
    WAIT;
end process;

end Behavioral;