library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.CONV_INTEGER;

entity RAM is
port(
    clk, W_En: in std_logic;
    W_Addr, R_Addr: in std_logic_vector(2 downto 0);
    Data_Input: in std_logic_vector(7 downto 0);
    Data_Output: out std_logic_vector(7 downto 0));
end RAM;

architecture MEMORY of RAM is
type storage is array(7 downto 0) of std_logic_vector(7 downto 0);
signal Reg : storage;
begin
    process(clk)
    begin
        Data_Output <= Reg(conv_integer(R_Addr));
        if(W_En='1'and (clk'EVENT and clk='1')) then
            Reg(conv_integer(W_Addr)) <= Data_Input;
        end if;
    end process;
end MEMORY;
