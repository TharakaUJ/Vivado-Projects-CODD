----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2025 07:11:40 PM
-- Design Name: 
-- Module Name: AU - Behavioral
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

entity AU is
    Port (
        A       : in  STD_LOGIC_VECTOR (3 downto 0);
        RegSel  : in  STD_LOGIC;
        Clk     : in  STD_LOGIC;
        S       : out STD_LOGIC_VECTOR (3 downto 0);
        Zero    : out STD_LOGIC;
        Carry   : out STD_LOGIC
    );
end AU;

architecture Behavioral of AU is

    -- Slow Clock Divider
    component Slow_Clk_1
        Port (
            Clk_in  : in  STD_LOGIC;
            Clk_out : out STD_LOGIC
        );
    end component;

    -- ? Vector-based RCA_4
    component RCA_4
        Port (
            A     : in  STD_LOGIC_VECTOR (3 downto 0);
            B     : in  STD_LOGIC_VECTOR (3 downto 0);
            C_in  : in  STD_LOGIC;
            S     : out STD_LOGIC_VECTOR (3 downto 0);
            C_out : out STD_LOGIC
        );
    end component;

    -- 4-bit Register
    component Reg
        Port (
            D   : in  STD_LOGIC_VECTOR (3 downto 0);
            En  : in  STD_LOGIC;
            Clk : in  STD_LOGIC;
            Q   : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    -- Signals
    signal slow_clock : STD_LOGIC;
    signal En_A, En_B : STD_LOGIC;
    signal C_out      : STD_LOGIC;
    signal Q_A, Q_B   : STD_LOGIC_VECTOR (3 downto 0);
    signal S_RCA_4    : STD_LOGIC_VECTOR (3 downto 0);

begin

    -- Slow Clock Divider
    Slow_Clk_1_inst : Slow_Clk_1
        port map (
            Clk_in  => Clk,
            Clk_out => slow_clock
        );

    -- Register A
    Reg_A : Reg
        port map (
            D   => A,
            En  => En_A,
            Clk => slow_clock,
            Q   => Q_A
        );

    -- Register B
    Reg_B : Reg
        port map (
            D   => A,
            En  => En_B,
            Clk => slow_clock,
            Q   => Q_B
        );

    -- ? Correct RCA Instance
    RCA_Inst : RCA_4
        port map (
            A     => Q_A,
            B     => Q_B,
            C_in  => '0',
            S     => S_RCA_4,
            C_out => C_out
        );

    -- Output Logic
    En_A  <= RegSel;
    En_B  <= NOT(RegSel);
    S     <= S_RCA_4;
    Carry <= C_out;
    Zero  <= NOT(S_RCA_4(0)) AND NOT(S_RCA_4(1)) AND NOT(S_RCA_4(2)) AND NOT(S_RCA_4(3)) AND NOT(C_out);

end Behavioral;

