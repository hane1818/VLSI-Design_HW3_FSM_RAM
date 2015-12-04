entity RAM is
port(
    clk, W_En: in bit;
    W_Addr, R_Addr: in bit_vector(2 downto 0);
    Data_Input: in bit_vector(7 downto 0);
    Data_Output: out bit_vector(7 downto 0));
end RAM;

architecture MEMORY of RAM is
begin

end MEMORY;