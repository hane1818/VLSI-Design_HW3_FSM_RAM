entity My_ckt_3 is
port(
    clk, Read, Write: in bit;
    Data_Input: in bit_vector(7 downto 0);
    Data_Output: out bit_vector(7 downto 0));
end My_ckt_3;

architecture MODEL of My_ckt_3 is
signal W_En: bit;
signal R_Addr, W_Addr: bit_vector(2 downto 0);

begin

end MODEL;