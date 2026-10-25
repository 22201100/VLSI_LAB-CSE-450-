----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:26:00 10/08/2026 
-- Design Name: 
-- Module Name:    Registers - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registers is
    Port (
        CLK       : in  STD_LOGIC;
        RESET     : in  STD_LOGIC;

        ACC_LOAD  : in  STD_LOGIC;
        ACC_IN    : in  STD_LOGIC_VECTOR(7 downto 0);
        ACC_OUT   : out STD_LOGIC_VECTOR(7 downto 0);

        R_LOAD    : in  STD_LOGIC;
        R_IN      : in  STD_LOGIC_VECTOR(7 downto 0);
        R_OUT     : out STD_LOGIC_VECTOR(7 downto 0);

        Z_LOAD    : in  STD_LOGIC;
        Z_IN      : in  STD_LOGIC;
        Z_OUT     : out STD_LOGIC
    );
end Registers;


architecture Behavioral of Registers is

    signal ACC_REG : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal R_REG   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Z_REG   : STD_LOGIC := '1';

begin

    process(CLK)
    begin

        if rising_edge(CLK) then

            if RESET = '1' then

                ACC_REG <= (others => '0');
                R_REG   <= (others => '0');
                Z_REG   <= '1';

            else

                if ACC_LOAD = '1' then
                    ACC_REG <= ACC_IN;
                end if;

                if R_LOAD = '1' then
                    R_REG <= R_IN;
                end if;

                if Z_LOAD = '1' then
                    Z_REG <= Z_IN;
                end if;

            end if;

        end if;

    end process;

    ACC_OUT <= ACC_REG;
    R_OUT   <= R_REG;
    Z_OUT   <= Z_REG;

end Behavioral;

