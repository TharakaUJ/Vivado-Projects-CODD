----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- Name: Tharaka Jayasena
-- Create Date: 02/11/2025 02:09:50 PM
-- Design Name: 
-- Module Name: Lab 1 - Behavioral
-- Project Name: Lab 1
-- Target Devices: FPGA
-- Tool Versions: 
-- Description: This is the source code for lab 1.
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

entity Lab_1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC);
end Lab_1;

architecture Behavioral of Lab_1 is
signal AND_out_sig : std_logic;

begin
    AND_out_sig <= A AND B;
    X <= AND_out_sig OR C;
end Behavioral;
