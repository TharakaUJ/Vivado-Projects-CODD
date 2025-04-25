----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2025 07:23:12 PM
-- Design Name: 
-- Module Name: Slow_Clk_1 - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Slow_Clk_1 is
    Port (
        Clk_in  : in  STD_LOGIC;
        Clk_out : out STD_LOGIC
    );
end Slow_Clk_1;

architecture Behavioral of Slow_Clk_1 is
    signal counter  : INTEGER range 0 to 10 := 0;
    signal temp_clk : STD_LOGIC := '0';
begin
    process (Clk_in)
    begin
        if rising_edge(Clk_in) then
            if counter = 10 then
                temp_clk <= NOT temp_clk;
                counter  <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    Clk_out <= temp_clk;
end Behavioral;

