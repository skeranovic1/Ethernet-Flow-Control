library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ethernet_flow_control is
    port (
        clock      : in  std_logic;
        reset      : in  std_logic;
        pause      : in  std_logic;
        p_time     : in  std_logic_vector(15 downto 0);
        is_paused  : out std_logic;
        in_data    : in  std_logic_vector(7 downto 0);
        in_valid   : in  std_logic;
        in_sop     : in  std_logic;
        in_eop     : in  std_logic;
        in_ready   : out std_logic; 
        out_data   : out std_logic_vector(7 downto 0);
        out_valid  : out std_logic;
        out_sop    : out std_logic;
        out_eop    : out std_logic;
        out_ready  : in  std_logic
    );
end ethernet_flow_control;

architecture arch of ethernet_flow_control is

    type tx_state_type is (IDLE, SEND_DEST, SEND_SRC, SEND_TYPE, SEND_OPCODE, SEND_PTIME, SEND_PADDING);
    signal tx_state : tx_state_type;
    signal tx_counter : integer range 0 to 63;

    type rx_state_type is (WAIT_SOP, CHECK_DEST, CHECK_SRC, CHECK_TYPE, CHECK_OPCODE, GET_PTIME, WAIT_EOP, HOLD_PAUSE);
    signal rx_state : rx_state_type;
    signal rx_counter : integer range 0 to 63;
    
    signal pause_timer_sig : unsigned(23 downto 0);
    signal captured_ptime  : unsigned(15 downto 0);

    constant DEST_ADDR : std_logic_vector(47 downto 0) := x"0180C2000001";
    constant SRC_ADDR  : std_logic_vector(47 downto 0) := x"11223344AABB";
    constant ETH_TYPE  : std_logic_vector(15 downto 0) := x"8808";
    constant OP_CODE   : std_logic_vector(15 downto 0) := x"0001";

begin

    -- strana koja inicira pauzu
    process(clock, reset)
    begin
        if reset = '1' then
            tx_state <= IDLE;
            out_valid <= '0'; 
				out_sop <= '0'; 
				out_eop <= '0';
            out_data <= (others => '0');
            tx_counter <= 0;
        elsif rising_edge(clock) then
            case tx_state is
                when IDLE =>
                    out_eop <= '0';
                    if pause = '1' then
                        tx_state <= SEND_DEST;
                        tx_counter <= 0;
                        out_valid <= '1'; 
								 out_sop <= '1';
                        out_data <= DEST_ADDR(47 downto 40);
                    else
                        out_valid <= '0';
                    end if;

                when SEND_DEST =>
                    if out_ready = '1' then
                        out_sop <= '0';
                        if tx_counter = 5 then
                            tx_state <= SEND_SRC; 
									 tx_counter <= 0;
                            out_data <= SRC_ADDR(47 downto 40);
                        else
                            tx_counter <= tx_counter + 1;
                            case tx_counter is
                                when 0 => out_data <= DEST_ADDR(39 downto 32);
                                when 1 => out_data <= DEST_ADDR(31 downto 24);
                                when 2 => out_data <= DEST_ADDR(23 downto 16);
                                when 3 => out_data <= DEST_ADDR(15 downto 8);
                                when 4 => out_data <= DEST_ADDR(7 downto 0);
                                when others => null;
                            end case;
                        end if;
                    end if;

                when SEND_SRC =>
                    if out_ready = '1' then
                        if tx_counter = 5 then 
                            tx_state <= SEND_TYPE; tx_counter <= 0;
                            out_data <= ETH_TYPE(15 downto 8);
                        else
                            tx_counter <= tx_counter + 1;
                            case tx_counter is
                                when 0 => out_data <= SRC_ADDR(39 downto 32);
                                when 1 => out_data <= SRC_ADDR(31 downto 24);
                                when 2 => out_data <= SRC_ADDR(23 downto 16);
                                when 3 => out_data <= SRC_ADDR(15 downto 8);
                                when 4 => out_data <= SRC_ADDR(7 downto 0);
                                when others => null;
                            end case;
                        end if;
                    end if;

                when SEND_TYPE =>
                    if out_ready = '1' then
                        out_data <= ETH_TYPE(7 downto 0);
                        tx_state <= SEND_OPCODE; 
								tx_counter <= 0;
                    end if;

                when SEND_OPCODE =>
                    if out_ready = '1' then
                        if tx_counter = 0 then 
                            out_data <= OP_CODE(15 downto 8); 
									 tx_counter <= 1;
                        else 
                            out_data <= OP_CODE(7 downto 0); 
									 tx_state <= SEND_PTIME; 
									 tx_counter <= 0;
                        end if;
                    end if;

                when SEND_PTIME =>
                    if out_ready = '1' then
                        if tx_counter = 0 then 
                            out_data <= p_time(15 downto 8); 
									 tx_counter <= 1;
                        else 
                            out_data <= p_time(7 downto 0); 
									 tx_state <= SEND_PADDING; 
									 tx_counter <= 0;
                        end if;
                    end if;

                when SEND_PADDING =>
                    if out_ready = '1' then
                        out_data <= x"00";
                        if tx_counter = 45 then 
                            out_eop <= '1'; 
									 tx_state <= IDLE;
                        else tx_counter <= tx_counter + 1; 
								end if;
                    end if;
            end case;
        end if;
    end process;

    -- strana koja prima pause okvir
    
    in_ready <= '0' when rx_state = HOLD_PAUSE else '1';

    process(clock, reset)
    begin
        if reset = '1' then
            rx_state <= WAIT_SOP;
            is_paused <= '0';
            pause_timer_sig <= (others => '0');
            captured_ptime <= (others => '0');
            rx_counter <= 0;
        elsif rising_edge(clock) then
            case rx_state is
                when WAIT_SOP =>
                    is_paused <= '0';
                    
                    if in_valid = '1' and in_sop = '1' then
                        rx_state <= CHECK_DEST; 
								rx_counter <= 0;
                    end if;

                when CHECK_DEST =>
                    if in_valid = '1' then
                        if rx_counter = 4 then 
                            rx_state <= CHECK_SRC; 
									 rx_counter <= 0;
                        else rx_counter <= rx_counter + 1; 
								end if;
                    end if;

                when CHECK_SRC =>
                    if in_valid = '1' then
                        if rx_counter = 5 then 
                            rx_state <= CHECK_TYPE; 
									 rx_counter <= 0;
                        else rx_counter <= rx_counter + 1; 
								end if;
                    end if;

                when CHECK_TYPE =>
                    if in_valid = '1' then
                        if rx_counter = 1 then 
                            rx_state <= CHECK_OPCODE; 
									 rx_counter <= 0;
                        else rx_counter <= rx_counter + 1; 
								end if;
                    end if;

                when CHECK_OPCODE =>
                    if in_valid = '1' then
                        if rx_counter = 1 then 
                            rx_state <= GET_PTIME; 
									 rx_counter <= 0;
                        else rx_counter <= rx_counter + 1; 
								end if;
                    end if;

                when GET_PTIME =>
                    if in_valid = '1' then
                        if rx_counter = 0 then
                            captured_ptime(15 downto 8) <= unsigned(in_data);
                            rx_counter <= 1;
                        else
                            captured_ptime(7 downto 0) <= unsigned(in_data);
                            rx_state <= WAIT_EOP;
                        end if;
                    end if;

                when WAIT_EOP =>
                    if in_valid = '1' and in_eop = '1' then
                        
                        pause_timer_sig <= shift_left(resize(captured_ptime, 24), 6);
                        rx_state <= HOLD_PAUSE;
                    end if;

                when HOLD_PAUSE =>
                    if pause_timer_sig > 0 then
                        is_paused <= '1';
                        pause_timer_sig <= pause_timer_sig - 1;
                    else
                        is_paused <= '0';
                        rx_state <= WAIT_SOP;
                    end if;
            end case;
        end if;
    end process;

end arch;