----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2025 11:17:44 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
COMPONENT MUX_8_to_1
Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
 D : in STD_LOGIC_VECTOR (7 downto 0);
 EN : in STD_LOGIC;
 Y : out STD_LOGIC
);
END COMPONENT;
SIGNAL s : std_logic_vector(2 downto 0);
SIGNAL d : std_logic_vector(7 downto 0);
SIGNAL en : std_logic;
SIGNAL y: std_logic;

begin
uut: MUX_8_to_1 PORT MAP (
 D => d,
 S => s,
 EN => en,
 Y => y
 );
 
process 
 begin
 d <= "10000110"; 
 --230278-111 000 001 110 000 110
 en <='1';
 s <= "110";
 
 wait for 100 ns;
 s <= "000";
 
 wait for 100 ns;
 s <= "110";
 
 wait for 100 ns;
 s<= "001";
 
 
 wait for 100 ns;
 s <= "111";

 wait;
 end process;
end Behavioral;