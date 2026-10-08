----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:11:50 10/05/2026 
-- Design Name: 
-- Module Name:    adder_4bit - Behavioral 
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

entity adder_4bit is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0);
        B    : in  STD_LOGIC_VECTOR(3 downto 0);
        SUM  : out STD_LOGIC_VECTOR(3 downto 0);
        COUT : out STD_LOGIC
    );
end adder_4bit;

architecture Structural of adder_4bit is

    signal C : STD_LOGIC_VECTOR(4 downto 0);
begin

    C(0) <= '0';

    FA0: entity work.full_adder
        port map (
            A    => A(0),
            B    => B(0),
            CIN  => C(0),
            SUM  => SUM(0),
            COUT => C(1)
        );

    FA1: entity work.full_adder
        port map (
		  A    => A(1),
            B    => B(1),
            CIN  => C(1),
            SUM  => SUM(1),
            COUT => C(2)
        );

    FA2: entity work.full_adder
        port map (
            A    => A(2),
            B    => B(2),
            CIN  => C(2),
            SUM  => SUM(2),
            COUT => C(3)
        );

    FA3: entity work.full_adder
        port map (
            A    => A(3),
            B    => B(3),
            CIN  => C(3),
            SUM  => SUM(3),
            COUT => C(4)
        );

    COUT <= C(4);

end Structural;