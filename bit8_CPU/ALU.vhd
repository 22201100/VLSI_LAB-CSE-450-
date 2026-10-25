----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:56 10/08/2026 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port (
        A        : in  STD_LOGIC_VECTOR(7 downto 0);
        B        : in  STD_LOGIC_VECTOR(7 downto 0);
        ALU_SEL  : in  STD_LOGIC_VECTOR(2 downto 0);
        RESULT   : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ALU;

architecture Behavioral of ALU is

begin

    process(A, B, ALU_SEL)
    begin

        case ALU_SEL is

            -- ADD
            when "000" =>
                RESULT <= std_logic_vector(unsigned(A) + unsigned(B));

            -- AND
            when "001" =>
                RESULT <= A and B;

            -- NOT
            when "010" =>
                RESULT <= not A;

            -- Default
            when others =>
                RESULT <= (others => '0');

        end case;

    end process;

end Behavioral;