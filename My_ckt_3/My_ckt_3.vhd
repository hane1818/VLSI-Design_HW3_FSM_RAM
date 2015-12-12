library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity My_ckt_3 is
port(
    clk, Read, Write: in std_logic;
    Data_Input: in std_logic_vector(7 downto 0);
    Data_Output: out std_logic_vector(7 downto 0));
end My_ckt_3;

architecture MODEL of My_ckt_3 is
signal W_En: std_logic;
signal R_Addr, W_Addr: std_logic_vector(2 downto 0);

begin

end MODEL;