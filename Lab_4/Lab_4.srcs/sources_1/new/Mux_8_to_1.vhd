----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 02:15:55 PM
-- Design Name: 
-- Module Name: Decoder_3_8 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
component Decoder_3_to_8
    port(
        I : in STD_LOGIC_VECTOR;
        EN : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR);
end component;

signal Y0, Y1 : STD_LOGIC_VECTOR (7 downto 0);

begin
Decoder_3_to_8_0: Decoder_3_to_8
port map (
    I => S,
    EN => EN,
    Y => Y0);

Y1 <= Y0 and D;

Y <= Y1(0) or Y1(1) or Y1(2) or Y1(3) or Y1(4) or Y1(5) or Y1(6) or Y1(7);




end Behavioral;
