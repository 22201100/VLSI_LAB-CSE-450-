----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:08 10/08/2026 
-- Design Name: 
-- Module Name:    CPU_8bit - Behavioral 
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

entity CPU_8bit is
    Port (
        CLK   : in STD_LOGIC;
        RESET : in STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(7 downto 0);
        Z     : out STD_LOGIC;
        PC    : out STD_LOGIC_VECTOR(3 downto 0)
    );
end CPU_8bit;


architecture Structural of CPU_8bit is

    -- PC signals
    signal pc_current : STD_LOGIC_VECTOR(3 downto 0);
    signal pc_next    : STD_LOGIC_VECTOR(3 downto 0);
    signal pc_load    : STD_LOGIC;

    -- ROM signals
    signal instruction : STD_LOGIC_VECTOR(11 downto 0);

    -- Instruction fields
    signal opcode   : STD_LOGIC_VECTOR(3 downto 0);
    signal operand  : STD_LOGIC_VECTOR(7 downto 0);

    -- Control signals
    signal acc_load : STD_LOGIC;
    signal z_load   : STD_LOGIC;
    signal alu_sel  : STD_LOGIC_VECTOR(2 downto 0);
    signal ldi_sel  : STD_LOGIC;
    signal is_jz    : STD_LOGIC;

    -- ALU signals
    signal alu_result : STD_LOGIC_VECTOR(7 downto 0);

    -- Register signals
    signal acc_out : STD_LOGIC_VECTOR(7 downto 0);
    signal r_out   : STD_LOGIC_VECTOR(7 downto 0);
    signal z_out   : STD_LOGIC;

    -- Data going into ACC
    signal acc_data : STD_LOGIC_VECTOR(7 downto 0);

    -- Data going into Z
    signal z_data : STD_LOGIC;


begin

    ----------------------------------------------------------------
    -- Instruction decoding
    ----------------------------------------------------------------

    opcode  <= instruction(11 downto 8);
    operand <= instruction(7 downto 0);


    ----------------------------------------------------------------
    -- Program Counter
    ----------------------------------------------------------------

    PC_UNIT : entity work.PC
        port map (
            CLK     => CLK,
            RESET   => RESET,
            PC_LOAD => pc_load,
            PC_NEXT => pc_next,
            PC_OUT  => pc_current
        );


    ----------------------------------------------------------------
    -- Program ROM
    ----------------------------------------------------------------

    ROM_UNIT : entity work.Program_ROM
    port map (
        ADDRESS     => pc_current,
        INSTRUCTION => instruction
    );

    ----------------------------------------------------------------
    -- Control Unit
    ----------------------------------------------------------------

    
CONTROL_UNIT : entity work.Control_Unit
    port map (
        OPCODE => opcode,
        Z_FLAG => z_out,
        ACC_LOAD => acc_load,
        Z_LOAD => z_load,
        ALU_SEL => alu_sel,
        LDI_SEL => ldi_sel,
        PC_LOAD => pc_load,
        IS_JZ => is_jz
    );


    ----------------------------------------------------------------
    -- ALU
    ----------------------------------------------------------------

    ALU_UNIT : entity work.ALU
        port map (
            A       => acc_out,
            B       => operand,
            ALU_SEL => alu_sel,
            RESULT  => alu_result
        );


    ----------------------------------------------------------------
    -- ACC, R and Z Registers
    ----------------------------------------------------------------

    REGISTER_UNIT : entity work.Registers
        port map (
            CLK      => CLK,
            RESET    => RESET,

            ACC_LOAD => acc_load,
            ACC_IN   => acc_data,
            ACC_OUT  => acc_out,

            R_LOAD   => '0',
            R_IN     => (others => '0'),
            R_OUT    => r_out,

            Z_LOAD   => z_load,
            Z_IN     => z_data,
            Z_OUT    => z_out
        );


    ----------------------------------------------------------------
    -- ACC input selection
    --
    -- LDI:
    --      ACC <- immediate operand
    --
    -- Other ALU instructions:
    --      ACC <- ALU result
    ----------------------------------------------------------------

       
    process(pc_current, operand, pc_load)
    begin
        if pc_load = '1' then
            pc_next <= operand(3 downto 0);
        else
            pc_next <= std_logic_vector(unsigned(pc_current) + 1);
        end if;
    end process;
     

     process(ldi_sel, operand, alu_result)
     begin
         if ldi_sel = '1' then
             acc_data <= operand;
         else
             acc_data <= alu_result;
         end if;
     end process;





    ----------------------------------------------------------------
    -- Zero Flag calculation
    --
    -- Z = 1 when the value written into ACC is 00
    ----------------------------------------------------------------

    process(acc_data)
    begin

        if acc_data = x"00" then
            z_data <= '1';
        else
            z_data <= '0';
        end if;

    end process;
   

    ----------------------------------------------------------------
    -- Top-level outputs
    ----------------------------------------------------------------

    Q  <= acc_out;
    Z  <= z_out;
    PC <= pc_current;

end Structural;