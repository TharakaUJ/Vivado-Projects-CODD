----------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 06/30/2022 11:55:37 AM
-- Design Name:
-- Module Name: AU_7_seg_SIM - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description: Testbench for AU_7_seg module
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AU_7_seg_SIM is
end AU_7_seg_SIM;

architecture Behavioral of AU_7_seg_SIM is

    component AU_7_seg
        Port (
            A       : in STD_LOGIC_VECTOR (3 downto 0);
            Clk     : in STD_LOGIC;
            RegSel  : in STD_LOGIC;
            S_LED   : out STD_LOGIC_VECTOR (3 downto 0);
            S_7Seg  : out STD_LOGIC_VECTOR (6 downto 0);
            Carry   : out STD_LOGIC;
            Zero    : out STD_LOGIC
        );
    end component;

    signal S_LED   : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal A       : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal RegSel  : STD_LOGIC := '0';
    signal Clk     : STD_LOGIC := '0';
    signal Zero    : STD_LOGIC;
    signal Carry   : STD_LOGIC;
    signal S_7Seg  : STD_LOGIC_VECTOR (6 downto 0);

begin

    UUT: AU_7_seg
        PORT MAP (
            A       => A,
            Clk     => Clk,
            RegSel  => RegSel,
            S_LED   => S_LED,
            S_7Seg  => S_7Seg,
            Carry   => Carry,
            Zero    => Zero
        );

    -- Clock Generation
    Clock_Process : process
    begin
        Clk <= NOT Clk;
        wait for 2 ns;
    end process;

    -- Stimulus Process
    Stimulus : process
    begin
        A <= "1111";
        wait for 100 ns;
        RegSel <= '1';
        A <= "0001";
        wait for 80 ns;
        RegSel <= '0';

        A <= "0001";
        wait for 80 ns;
        RegSel <= '1';
        A <= "1110";
        wait;
    end process;

end Behavioral;
