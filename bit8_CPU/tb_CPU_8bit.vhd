
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_CPU_8bit is
end tb_CPU_8bit;

architecture Behavioral of tb_CPU_8bit is

    signal CLK   : STD_LOGIC := '0';
    signal RESET : STD_LOGIC := '1';

    signal Q  : STD_LOGIC_VECTOR(7 downto 0);
    signal Z  : STD_LOGIC;
    signal PC : STD_LOGIC_VECTOR(3 downto 0);

begin

    DUT : entity work.CPU_8bit
        port map (
            CLK   => CLK,
            RESET => RESET,
            Q     => Q,
            Z     => Z,
            PC    => PC
        );

    -- 10 ns clock period
    CLK <= not CLK after 5 ns;

    process
    begin
        RESET <= '1';
        wait for 10 ns;

        RESET <= '0';
        wait for 70 ns;

        assert Q = x"10" and PC = "1001" and Z = '0'
            report "CPU final result FAILED"
            severity error;

        if Q = x"10" and PC = "1001" and Z = '0' then
            report "CPU TEST PASSED SUCCESSFULLY!" severity note;
        end if;

        wait;
    end process;

end Behavioral;