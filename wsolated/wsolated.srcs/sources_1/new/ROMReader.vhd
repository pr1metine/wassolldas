----------------------------------------------------------------------------------
-- Company:  DHBW Ravensburg
-- Engineer: Quang Thanh Ta
-- 
-- Create Date: 12/11/2022 05:30:16 PM
-- Design Name: wsolated
-- Module Name: ROMReader - Behavioral
-- Project Name: wassolldas
-- Target Devices: Arty A7-35T
-- Tool Versions: Vivado 2022.1.2
-- Description: 
--      Abstracts ROM behind a simple interface. Whenever CLK is rising and ENABLE
--      is high, the address is incremented by INCREMENT_ADDEND. The internal ROM
--      then loads a 16 bit word and outputs it to DOUT.
--
--      INCREMENT_ADDEND represents a fixed point decimal number with a precision
--      of two digits. If the address is out of bounds of ROM, the address loops over.
--      
--      Please note that it takes 2 cycles from ENABLE = 1 to (correct) output.
--      It takes one cycle to internaly increment the address and another for ROM
--      to load the incremented address.
-- Dependencies: 
--      IP core "Block Memory Generator"
-- Revision: v1.0.0
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ROMReader is
    -- DO NOT CHANGE HERE. Change this by reconfiguring IP
    Generic ( ROM_SIZE: INTEGER := 100000;
            WIDTH: INTEGER := 16 );
    Port (
        -- A global clock
        CLK : in STD_LOGIC;
        -- Triggers increment. Active high
        ENABLE : in STD_LOGIC;
        -- Resets address. Active high
        RESET : in STD_LOGIC;
        -- Fixed point, precision of 2
        INCREMENT_ADDEND : in STD_LOGIC_VECTOR(3 downto 0);
        -- Data for address
        DOUT : out STD_LOGIC_VECTOR(WIDTH - 1 downto 0));
end ROMReader;

architecture Behavioral of ROMReader is
    -- PCMROM entity generated from IP core "Block Memory Generator"
    -- Single Port ROM, always enabled.
    -- width of 16 bit, depth of 100000
    component PCMROM is
        Port (
            clka : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0)
        );
    end component;

    -- Internally stored address. Serves as a pointer capable of being incremented
    signal address: unsigned(18 downto 0) := (others => '0');
    signal nextAddress: unsigned(18 downto 0);
begin
    rom: PCMROM
        port map(
            clka => CLK,
            addra => std_logic_vector(address(18 downto 2)),
            douta => DOUT
        );

    process (CLK)
    begin
        if rising_edge(CLK) then
            if ENABLE = '1' then
                address <= nextAddress;
            end if;

            if RESET = '1' then
                address <= (others => '0');
            end if;
        end if;
    end process;

    -- Calculates the next address concurrently
    nextAddress <= (address + unsigned(INCREMENT_ADDEND)) mod (ROM_SIZE * 4);
end Behavioral;
