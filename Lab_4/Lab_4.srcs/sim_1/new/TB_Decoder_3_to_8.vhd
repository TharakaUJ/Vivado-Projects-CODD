----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 02:30:48 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
COMPONENT DECODER_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;


signal I : STD_LOGIC_VECTOR (2 downto 0);
signal EN : STD_LOGIC;
signal Y : STD_LOGIC_VECTOR (7 downto 0);


begin
UUT : Decoder_3_to_8 PORT MAP (
    I => I,
    EN => EN,
    Y => Y
    );
    
process
begin
    
    EN <= '1';
    I <= "110";
    
    WAIT FOR 100ns;

    I <= "000";
    
    WAIT FOR 100ns;
    
    I <= "110";
    
    WAIT FOR 100ns;
    
    I <= "001";
    
    WAIT FOR 100ns;
    
    I <= "000";
    
    WAIT FOR 100ns;
    
    I <= "111";
    
    WAIT;
    
end process;

end Behavioral;