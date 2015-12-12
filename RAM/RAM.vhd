entity RAM is
port(
    clk, W_En: in bit;
    W_Addr, R_Addr: in bit_vector(2 downto 0);
    Data_Input: in bit_vector(7 downto 0);
    Data_Output: out bit_vector(7 downto 0));
end RAM;

architecture MEMORY of RAM is
type storage is array(7 downto 0) of bit_vector(7 downto 0);
signal Reg : storage;
begin
    process(clk)
    begin
        if(clk'EVENT and clk='1') then
            Data_Output <= Reg(R_Addr);
            
            if(W_En='1') then
                Reg(W_Addr) <= Data_Input;
            end if;
        end if;
    end process;
end MEMORY;