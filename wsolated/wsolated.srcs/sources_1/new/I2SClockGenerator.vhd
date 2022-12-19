----------------------------------------------------------------------------------
-- Company:  DHBW Ravensburg
-- Engineer: Quang Thanh Ta
-- 
-- Create Date: 12/11/2022 06:04:26 PM
-- Design Name: wsolated
-- Module Name: I2SClockGenerator - Behavioral
-- Project Name: wassolldas
-- Target Devices: Arty A7-35T
-- Tool Versions: Vivado 2022.1.2
-- Description: 
--      Generates the clocks needed for I2S.
--
-- Dependencies: 
--      IP core "Clocking Wizard"
-- Revision: v1.0.0
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2SClockGenerator is
    Generic (
        RATIO: INTEGER := 8 );
    Port (
        -- A global clock at 100 MHz
        CLK : in STD_LOGIC;
        -- Resets clocks. Active high
        RESET : in STD_LOGIC;
        -- Specifies if clock is stable. Active high  
        LOCKED : out STD_LOGIC;
        -- Master Clock at 12.288 MHz
        MCLK : out STD_LOGIC;
        -- Serial Clock at 1.536 MHz. Also called SCK
        SCLK : out STD_LOGIC );
end I2SClockGenerator;

architecture Behavioral of I2SClockGenerator is
    -- AudioClock entity generated from IP core "Clocking Wizard"
    -- Generates MCLK
    -- Can be reset. Active high
    component AudioClock is
        Port (
            clk_in1: in STD_LOGIC;
            clk_out1: out STD_LOGIC;
            reset: in STD_LOGIC;
            locked: out STD_LOGIC
        );
    end component;

    signal regSCLK: STD_LOGIC := '0';
    signal regMCLK: STD_LOGIC := '0';
begin
    inner: AudioClock
        port map(
            clk_in1 => CLK,
            clk_out1 => regMCLK,
            reset => RESET,
            locked => LOCKED
        );

    -- Generates SCLK
    process (regMCLK)
        variable counter: INTEGER := 0;
    begin
        if rising_edge(regMCLK) then
            if counter < (RATIO / 2) - 1 then
                counter := counter + 1;
            else
                counter := 0;
                regSCLK <= not regSCLK;
            end if;

            if RESET = '1' then
                counter := 0;
                regSCLK <= '0';
            end if;
        end if;
    end process;

    SCLK <= regSCLK;
    MCLK <= regMCLK;
end Behavioral;
