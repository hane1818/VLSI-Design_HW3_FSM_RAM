entity Controller is
port(
    clk, Read, Write: in bit;
    W_En: out bit;
    R_Addr, W_Addr: out bit_vector(2 downto 0));
end Controller;

architecture FSM of Controller is
type state_t is (Idle, RState1, RState2, RState3, RState4, RState5, RState6, RState7, RState8,
                WState1, WState2, WState3, WState4, WState5, WState6, WState7, WState8);
signal current_state, next_state : state_t;
begin
    process(clk)
    begin
        if(clk'EVENT and clk='1') then
            current_state <= next_state;
        end if;
    end process;

    process(current_state)
    begin
        R_Addr <= "000";
        W_Addr <= "000";
        W_En <= '0';
        
        case current_state is
            when Idle =>
                if (Write='1') then
                    W_En <= '1';
                    next_state <= WState1;
                elsif (Read='1') then
                    next_state <= RState1;
                else
                    next_state <= Idle;
                end if;
                
            when RState1 =>
                next_state <= RState2;
            
            when RState2 =>
                R_Addr <= "001";
                
                next_state <= RState3;
            
            when RState3 =>
                R_Addr <= "010";
                
                next_state <= RState4;
            
            when RState4 =>
                R_Addr <= "011";
                
                next_state <= RState5;
            
            when RState5 =>
                R_Addr <= "100";
                
                next_state <= RState6;
            
            when RState6 =>
                R_Addr <= "101";
                
                next_state <= RState7;
            
            when RState7 =>
                R_Addr <= "110";
                
                next_state <= RState8;
            
            when RState8 =>
                R_Addr <= "111";
                
                next_state <= Idle;
            
            when WState1 =>
            
            when WState2 =>
            
            when WState3 =>
            
            when WState4 =>
            
            when WState5 =>
            
            when WState6 =>
            
            when WState7 =>
            
            when WState8 =>
        end case;
    end process;
end FSM;