entity RAM is
port(
    clk, W_En: in bit;
    W_Addr, R_Addr: in bit_vector(2 downto 0);
    Data_Input: in bit_vector(7 downto 0);
    Data_Output: out bit_vector(7 downto 0));
end RAM;

architecture MEMORY of RAM is
type memory_t is array(7 downto 0) of bit_vector(7 downto 0);
signal storage : memory_t;
begin

end MEMORY;