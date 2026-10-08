----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:29:48 10/05/2026 
-- Design Name: 
-- Module Name:    alu_4bit_tb - Behavioral 
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

entity alu_4bit_tb is
end alu_4bit_tb;

architecture Behavioral of alu_4bit_tb is

    signal A    : STD_LOGIC_VECTOR(3 downto 0);
    signal B    : STD_LOGIC_VECTOR(3 downto 0);
    signal SEL  : STD_LOGIC_VECTOR(1 downto 0);
    signal Y    : STD_LOGIC_VECTOR(3 downto 0);
    signal COUT : STD_LOGIC;

begin

    -- Unit Under Test
    UUT: entity work.alu_4bit
        port map (
            A    => A,
				   B    => B,
            SEL  => SEL,
            Y    => Y,
            COUT => COUT
        );

    -- Test Process
    stim_proc: process
    begin

        -- STEP 1
        SEL <= "00";
        A <= "1100";
        B <= "1010";
        wait for 10 ns;
		          assert (Y = "1000" and COUT = '0')
        report "STEP 1 FAILED"
        severity error;

        -- STEP 2
        SEL <= "00";
        A <= "1111";
        B <= "0101";
        wait for 10 ns;

        assert (Y = "0101" and COUT = '0')
        report "STEP 2 FAILED"
        severity error;

        -- STEP 3
        SEL <= "01";
        A <= "1100";
        B <= "0011";
        wait for 10 ns;

        assert (Y = "1111" and COUT = '0')
        report "STEP 3 FAILED"
        severity error;

        -- STEP 4
        SEL <= "01";
        A <= "1001";
        B <= "0100";
        wait for 10 ns;
        assert (Y = "1101" and COUT = '0')
        report "STEP 4 FAILED"
        severity error;

        -- STEP 5
        SEL <= "10";
        A <= "0011";
        B <= "0101";
        wait for 10 ns;

        assert (Y = "1000" and COUT = '0')
        report "STEP 5 FAILED"
        severity error;

        -- STEP 6
        SEL <= "10";
        A <= "1111";
        B <= "0001";
        wait for 10 ns;

        assert (Y = "0000" and COUT = '1')
        report "STEP 6 FAILED"
        severity error;

        -- STEP 7
        SEL <= "10";
        A <= "1010";
        B <= "0101";
        wait for 10 ns;

        assert (Y = "1111" and COUT = '0')
        report "STEP 7 FAILED"
        severity error;

        -- STEP 8
        SEL <= "11";
        A <= "1010";
        B <= "0101";
        wait for 10 ns;

        assert (Y = "0000" and COUT = '0')
        report "STEP 8 FAILED"
        severity error;

      report "ALL 8 TEST CASES PASSED!"
        severity note;

        wait;

    end process;

end Behavioral;

