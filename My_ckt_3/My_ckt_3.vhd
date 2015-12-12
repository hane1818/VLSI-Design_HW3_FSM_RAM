library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity My_ckt_3 is
port(
    clk, Read, Write: in std_logic;
    Data_Input: in std_logic_vector(7 downto 0);
    Data_Output: out std_logic_vector(7 downto 0));
end My_ckt_3;

architecture MODEL of My_ckt_3 is
-- Component List --
component Controller is
port(
    clk, Read, Write: in std_logic;
    W_En: out std_logic;
    R_Addr, W_Addr: out std_logic_vector(2 downto 0));
end component Controller;
component RAM is
port(
    clk, W_En: in std_logic;
    W_Addr, R_Addr: in std_logic_vector(2 downto 0);
    Data_Input: in std_logic_vector(7 downto 0);
    Data_Output: out std_logic_vector(7 downto 0));
end component RAM;
-- Signal List --
signal W_En: std_logic;
signal R_Addr, W_Addr: std_logic_vector(2 downto 0);
begin
    C1: Controller port map (clk, Read, Write, W_En, R_Addr, W_Addr);
    C2: RAM port map (clk, W_En, W_Addr, R_Addr, Data_Input, Data_Output);
end MODEL;