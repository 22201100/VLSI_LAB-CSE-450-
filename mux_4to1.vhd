----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:19:52 10/05/2026 
-- Design Name: 
-- Module Name:    mux_4to1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_4to1 is
    Port (
        D0  : in  STD_LOGIC_VECTOR(3 downto 0);
        D1  : in  STD_LOGIC_VECTOR(3 downto 0);
        D2  : in  STD_LOGIC_VECTOR(3 downto 0);
        D3  : in  STD_LOGIC_VECTOR(3 downto 0);
        SEL : in  STD_LOGIC_VECTOR(1 downto 0);
        Y   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end mux_4to1;

architecture Behavioral of mux_4to1 is
begin
  process(D0, D1, D2, D3, SEL)
    begin

        case SEL is

            when "00" =>
                Y <= D0;

            when "01" =>
                Y <= D1;

            when "10" =>
                Y <= D2;

            when "11" =>
                Y <= D3;

            when others =>
                Y <= "0000";

        end case;

    end process;

end Behavioral;