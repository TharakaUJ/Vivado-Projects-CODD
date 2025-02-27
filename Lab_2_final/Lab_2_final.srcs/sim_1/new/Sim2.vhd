----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 02:13:55 PM
-- Design Name: 
-- Module Name: Sim2 - Behavioral
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

entity Sim2 is
--    Port ( A : in STD_LOGIC;
--           B : in STD_LOGIC;
--           C : in STD_LOGIC;
--           Green : out STD_LOGIC;
--           Amber : out STD_LOGIC;
--           Red : out STD_LOGIC);
end Sim2;

architecture Behavioral of Sim2 is
COMPONENT Circuit2
    PORT(   A, B, C : IN STD_LOGIC;
            Green, Amber, Red: OUT STD_LOGIC);
END COMPONENT;

SIGNAL a_i, b_i, c_i : std_logic;
SIGNAL green_i, amber_i, red_i : std_logic; 
begin
UUT: Circuit2 PORT MAP(
    A => a_i,
    B => b_i,
    C => c_i,
    Green => green_i,
    Amber => amber_i,
    Red => red_i
);

process
begin
    a_i <= '0';
    b_i <= '0';
    c_i <= '0';
    
    WAIT FOR 100 ns;
    c_i <= '1';
    
    WAIT FOR 100 ns;
    b_i <= '1';
    c_i <= '0';
    
    WAIT FOR 100ns;
    c_i <= '1';
    
    WAIT FOR 100ns;
    a_i <= '1';
    b_i <= '0';
    c_i <= '0';
    
    WAIT FOR 100ns;
    c_i <= '1';
    
    WAIT FOR 100ns;
    b_i <= '1';
    c_i <= '0';

    
    WAIT FOR 100ns;
    c_i <= '1';

    WAIT;
end process;
    
    
end Behavioral;
