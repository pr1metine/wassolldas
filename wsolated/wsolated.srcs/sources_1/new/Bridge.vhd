----------------------------------------------------------------------------------
-- Company:  DHBW Ravensburg
-- Engineer: Quang Thanh Ta
-- 
-- Create Date: 12/10/2022 12:01:51 PM
-- Design Name: wsolated
-- Module Name: Bridge - Behavioral
-- Project Name: wassolldas
-- Target Devices: Arty A7-35T
-- Tool Versions: Vivado 2022.1.2
-- Description: 
--      Bridge mediates  between ROMReader and I2STransmitter.
--      If I2STransmitter requests the next ROM data to be transmitted,
--      Bridge shall increment ROMReader by one.
--
-- Dependencies: 
--
-- Revision: v1.0.0
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Bridge is
    Generic (
        WIDTH: INTEGER := 16 -- Bit width of ROMReader
    );
    Port (
        -- A global clock
        CLK : in STD_LOGIC;
        -- Locks. Active high        
        RESET: in STD_LOGIC;
        -- Signals ROM to increment. Active high     
        DIN_INCREMENT: out STD_LOGIC;
        -- I2STransmitter is ready for increment
        TX_INCREMENT: in STD_LOGIC;
        -- Data from ROM
        DIN: in STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
        -- Data to I2STransmitter
        TX: out STD_LOGIC_VECTOR(WIDTH - 1 downto 0)
    );
end Bridge;

architecture Behavioral of Bridge is
    type State is (STATE_RESET, STATE_WAITING_FOR_READ, STATE_BEING_READ);
    signal currState: State := STATE_RESET;
begin

    -- After detecting a rising edge of TX_INCREMENT, this state machine sets 
    -- DIN_INCREMENT <= '1' for one cycle.
    process (CLK)
    begin
        if rising_edge(CLK) then
            case currState is
                when STATE_RESET =>
                    DIN_INCREMENT <= '0';
                    currState <= STATE_WAITING_FOR_READ;
                when STATE_WAITING_FOR_READ =>
                    if TX_INCREMENT = '1' then
                        currState <= STATE_BEING_READ;
                        DIN_INCREMENT <= '1';
                    else
                        currState <= STATE_WAITING_FOR_READ;
                    end if;
                when STATE_BEING_READ =>
                    DIN_INCREMENT <= '0';
                    if TX_INCREMENT = '0' then
                        currState <= STATE_WAITING_FOR_READ;
                    else
                        currState <= STATE_BEING_READ;
                    end if;
            end case;

            if RESET = '1' then
                currState <= STATE_RESET;
            end if;
        end if;
    end process;

    -- Passthrough from ROMReader's data output to I2STransmitter's data input
    TX <= DIN;
end Behavioral;
