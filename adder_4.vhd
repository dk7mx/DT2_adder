----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.05.2019 14:32:52
-- Design Name: 
-- Module Name: adder_4 - Behavioral
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


entity adder_4 is
    Port ( a    : in STD_LOGIC_VECTOR (3 downto 0);
           b    : in STD_LOGIC_VECTOR (3 downto 0);
           c    : out STD_LOGIC_VECTOR (3 downto 0);
           ovf   : out STD_LOGIC);
end adder_4;

architecture Behavioral of adder_4 is
signal a_int, b_int, c_int : signed(3 downto 0);
begin
    a_int <= signed(a);
    b_int <= signed(b);
    
    c_int <= a_int + b_int;
    
    c <= std_logic_vector(c_int);
    
    ovf <= (not a(3) and not b(3) and c_int(3)) or (a(3) and b(3) and not c_int(3));


end Behavioral;
