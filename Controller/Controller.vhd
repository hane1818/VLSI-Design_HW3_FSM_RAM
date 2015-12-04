entity Controller is
port(
    clk, Read, Write: in bit;
    W_En: out bit;
    R_Addr, W_Addr: out bit_vector(2 downto 0));
end Controller;

architecture FSM of Controller is
begin

end FSM;