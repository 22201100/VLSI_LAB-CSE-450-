----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:21:12 10/05/2026 
-- Design Name: 
-- Module Name:    alu_4bit - Behavioral 
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

entity alu_4bit is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0);
        B    : in  STD_LOGIC_VECTOR(3 downto 0);
        SEL  : in  STD_LOGIC_VECTOR(1 downto 0);
        Y    : out STD_LOGIC_VECTOR(3 downto 0);
        COUT : out STD_LOGIC
    );
end alu_4bit;

architecture Structural of alu_4bit is

    signal AND_RESULT : STD_LOGIC_VECTOR(3 downto 0);
    signal OR_RESULT  : STD_LOGIC_VECTOR(3 downto 0);
  signal ADD_RESULT : STD_LOGIC_VECTOR(3 downto 0);
    signal ADD_COUT   : STD_LOGIC;

    signal ZERO_RESULT : STD_LOGIC_VECTOR(3 downto 0);

begin

    ZERO_RESULT <= "0000";

    -- AND Unit
    U_AND: entity work.and_unit
        port map (
            A => A,
            B => B,
            Y => AND_RESULT
        );
  -- OR Unit
    U_OR: entity work.or_unit
        port map (
            A => A,
            B => B,
            Y => OR_RESULT
        );

    -- 4-bit Adder
    U_ADDER: entity work.adder_4bit
        port map (
            A    => A,
            B    => B,
            SUM  => ADD_RESULT,
            COUT => ADD_COUT
        );

    -- 4-to-1 Multiplexer
    U_MUX: entity work.mux_4to1
        port map (
            D0  => AND_RESULT,
            D1  => OR_RESULT,
            D2  => ADD_RESULT,
            D3  => ZERO_RESULT,
            SEL => SEL,
            Y   => Y
        );

    -- Carry output is valid only for ADD
    COUT <= ADD_COUT when SEL = "10" else '0';

end Structural;