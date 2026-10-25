
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Program_ROM is
    Port (
        ADDRESS     : in  STD_LOGIC_VECTOR(3 downto 0);
        INSTRUCTION : out STD_LOGIC_VECTOR(11 downto 0)
    );
end Program_ROM;

architecture Behavioral of Program_ROM is
begin
    process(ADDRESS)
    begin
        case ADDRESS is
            when "0000" => INSTRUCTION <= x"1A5";
            when "0001" => INSTRUCTION <= x"45A";
            when "0010" => INSTRUCTION <= x"C05";
            when "0011" => INSTRUCTION <= x"201";
            when "0100" => INSTRUCTION <= x"201";
            when "0101" => INSTRUCTION <= x"700";
            when "0110" => INSTRUCTION <= x"40F";
            when "0111" => INSTRUCTION <= x"C00";
            when "1000" => INSTRUCTION <= x"201";
            when others => INSTRUCTION <= x"000";
        end case;
    end process;
end Behavioral;