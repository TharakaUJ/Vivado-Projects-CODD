----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 06:42:25 PM
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AU is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
end AU;

architecture Behavioral of AU is
component Reg
     Port ( EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
 end component;
 
 component Slow_Clk
    Port ( CLK_in : in STD_LOGIC; 
           Clk_out : out STD_LOGIC);
end component;
 
 component RCA_4
     Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           C_out : out STD_LOGIC);
  end component;

signal EN_0, EN_1, C_out, Clk_n:  std_logic;
signal Q_0, Q_1, S_out: std_logic_vector (3 downto 0);

begin

Slow_Clk_0: Slow_Clk
    port map (
        CLK_in => Clk,
        Clk_out => Clk_n);
        

EN_0 <= not RegSel;
EN_1 <= RegSel;

Reg_0: Reg
    port map (
        EN => EN_0,
        Clk => Clk_n,
        D => A,
        Q => Q_0);

Reg_1: Reg
    port map (
        EN => EN_1,
        Clk => Clk_n,
        D => A,
        Q => Q_1);

RCA_0: RCA_4
    port map (
        A0 => Q_0(0),
        A1 => Q_0(1),
        A2 => Q_0(2),
        A3 => Q_0(3),
        
        B0 => Q_1(0),
        B1 => Q_1(1),
        B2 => Q_1(2),
        B3 => Q_1(3),
        C_in => '0',
        S0 => S_out(0),
        S1 => S_out(1),
        S2 => S_out(2),
        S3 => S_out(3),
        
        C_out => C_out);


Zero <= not(C_out or S_out(0) or S_out(1) or S_out(2) or S_out(3));
Carry <= C_out;
S <= S_out;


end Behavioral;
