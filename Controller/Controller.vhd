entity Controller is
port(
    clk, Read, Write: in bit;
    W_En: out bit;
    R_Addr, W_Addr: out bit_vector(2 downto 0));
end Controller;

architecture FSM of Controller is
type state_t is (Idle, RState1, RState2, RState3, RState4, RState5, RState6, RState7, RState8,
                WState1, WState2, WState3, WState4, WState5, WState6, WState7, WState8);
signal current_stage, next_stage : state_t;
begin
    process(clk)
    begin
        if(clk'EVENT and clk='1')
            current_stage <= next_stage;
    end

    process(current_stage)
    begin
        R_Addr <= "000";
        W_Addr <= "000";
        W_En <= '0';
        
        case current_stage is
            when Idle =>
                if (Write='1') then
                    W_En <= '1';
                    next_stage <= WState1;
                elsif (Read='1') then
                    next_stage <= RState1;
                else
                    next_stage <= Idle;
                end if;
                
            when RState1 =>
            
            when RState2 =>
            
            when RState3 =>
            
            when RState4 =>
            
            when RState5 =>
            
            when RState6 =>
            
            when RState7 =>
            
            when RState8 =>
            
            when WState1 =>
            
            when WState2 =>
            
            when WState3 =>
            
            when WState4 =>
            
            when WState5 =>
            
            when WState6 =>
            
            when WState7 =>
            
            when WState8 =>
            
    end
end FSM;