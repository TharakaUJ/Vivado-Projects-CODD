----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2025 07:09:23 PM
-- Design Name: 
-- Module Name: RCA_4 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity RCA_4 is
    Port (
        A     : in  STD_LOGIC_VECTOR (3 downto 0);
        B     : in  STD_LOGIC_VECTOR (3 downto 0);
        C_in  : in  STD_LOGIC;
        S     : out STD_LOGIC_VECTOR (3 downto 0);
        C_out : out STD_LOGIC
    );
end RCA_4;

architecture Behavioral of RCA_4 is
    signal carry : STD_LOGIC_VECTOR (4 downto 0); -- internal carry
begin
    carry(0) <= C_in;

    gen_adder : for i in 0 to 3 generate
        begin
            S(i) <= A(i) XOR B(i) XOR carry(i);
            carry(i+1) <= (A(i) AND B(i)) OR (A(i) AND carry(i)) OR (B(i) AND carry(i));
    end generate;

    C_out <= carry(4);
end Behavioral;
