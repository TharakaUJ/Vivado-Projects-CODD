----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- Name: Tharaka Jayasena
-- Create Date: 02/18/2025 01:43:51 PM
-- Design Name: Lab 2
-- Module Name: Circuit2 - Behavioral
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

entity Circuit2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Green : out STD_LOGIC;
           Amber : out STD_LOGIC;
           Red : out STD_LOGIC);
end Circuit2;

architecture Behavioral of Circuit2 is
    SIGNAL  not_A, not_B, not_C : STD_LOGIC;

begin
    not_A <= not A;
    not_B <= not B;
    not_C <= not C;
    
    Green <= A and B and C;
    Amber <= (not_A and B and C) or (not_B and A and C) or (not_C and A and B);
    Red <= (not_A and not_B) or (not_B and not_C) or (not_C and not_A);
    

end Behavioral;
