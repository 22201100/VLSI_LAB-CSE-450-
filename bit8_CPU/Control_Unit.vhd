
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Unit is
    Port (
        OPCODE   : in  STD_LOGIC_VECTOR(3 downto 0);
        Z_FLAG   : in  STD_LOGIC;

        ACC_LOAD : out STD_LOGIC;
        Z_LOAD   : out STD_LOGIC;
        ALU_SEL  : out STD_LOGIC_VECTOR(2 downto 0);
        LDI_SEL  : out STD_LOGIC;
        PC_LOAD  : out STD_LOGIC;
        IS_JZ    : out STD_LOGIC
    );
end Control_Unit;

architecture Behavioral of Control_Unit is
begin
    process(OPCODE, Z_FLAG)
    begin
        ACC_LOAD <= '0';
        Z_LOAD   <= '0';
        ALU_SEL  <= "000";
        LDI_SEL  <= '0';
        PC_LOAD  <= '0';
        IS_JZ    <= '0';

        case OPCODE is
            when "0001" => -- LDI
                ACC_LOAD <= '1';
                Z_LOAD   <= '1';
                LDI_SEL  <= '1';

            when "0010" => -- ADD
                ACC_LOAD <= '1';
                Z_LOAD   <= '1';
                ALU_SEL  <= "000";

            when "0100" => -- AND
                ACC_LOAD <= '1';
                Z_LOAD   <= '1';
                ALU_SEL  <= "001";

            when "0111" => -- NOT
                ACC_LOAD <= '1';
                Z_LOAD   <= '1';
                ALU_SEL  <= "010";

            when "1100" => -- JZ
                IS_JZ <= '1';
                if Z_FLAG = '1' then
                    PC_LOAD <= '1';
                end if;

            when others =>
                null; -- NOP
        end case;
    end process;
end Behavioral;