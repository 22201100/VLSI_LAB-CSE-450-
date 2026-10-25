----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:32 10/08/2026 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity PC is
    Port (
        CLK       : in  STD_LOGIC;
        RESET     : in  STD_LOGIC;
        PC_LOAD   : in  STD_LOGIC;
        PC_NEXT   : in  STD_LOGIC_VECTOR(3 downto 0);
        PC_OUT    : out STD_LOGIC_VECTOR(3 downto 0)
    );
end PC;

architecture Behavioral of PC is

    signal PC_REG : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin

    process(CLK)
    begin
        if rising_edge(CLK) then

            if RESET = '1' then
                PC_REG <= "0000";

            elsif PC_LOAD = '1' then
                PC_REG <= PC_NEXT;

            else
                PC_REG <= std_logic_vector(unsigned(PC_REG) + 1);

            end if;

        end if;
    end process;

    PC_OUT <= PC_REG;

end Behavioral;