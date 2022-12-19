----------------------------------------------------------------------------------
-- Company:  DHBW Ravensburg
-- Engineer: Quang Thanh Ta
-- 
-- Create Date: 12/10/2022 12:01:51 PM
-- Design Name: wsolated
-- Module Name: Top - Behavioral
-- Project Name: wassolldas
-- Target Devices: Arty A7-35T
-- Tool Versions: Vivado 2022.1.2
-- Description: 
--      Connects all entities with each other or with physical pins on
--      Arty A7-35T.
--
--      I2SClockGenerator generates the necessary clock signals for 
--      I2STransmitter. ROMReader, Bridge, and of course I2SClockGenerator are 
--      powered by CLK100MHZ.
--
--      ROMReader is connected to I2SClockGenerator over Bridge. The I2S output
--      from I2STransmitter and I2SClockGenerator is fed to Pmod I2S2 which is
--      on Pmod Connector JA. INCREMENT_ADDEND of ROMReader is controlled by
--      four switches.
--
--      Lastly, a system reset is triggered when either the reset
--      button is pressed or the internal clock of I2SClockGenerator is not
--      locked yet. If a system reset is in progress, a blue LED lights up.
--      If the reset button is pressed, a red LED lights up. If 
--      I2SClockGenerator's internal clock is locked, a green LED lights up.
--
-- Dependencies: 
--      I2SClockGenerator
--      ROMReader
--      Bridge
--      I2STransmitter
-- Revision: v1.0.0
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top is
    Generic ( WIDTH : INTEGER := 16;
            RATIO : INTEGER := 8);
    -- Refer to XDC file
    Port (
        CLK100MHZ : in STD_LOGIC;
        RESET : in STD_LOGIC;
        SW0 : in STD_LOGIC;
        SW1 : in STD_LOGIC;
        SW2 : in STD_LOGIC;
        SW3 : in STD_LOGIC;
        MCLK : out STD_LOGIC;
        LRCK : out STD_LOGIC;
        SCLK : out STD_LOGIC;
        SDIN : out STD_LOGIC;
        LED0 : out STD_LOGIC;
        LED1 : out STD_LOGIC;
        LED2 : out STD_LOGIC
    );
end Top;

architecture Behavioral of Top is

    component I2SClockGenerator is
        Generic ( RATIO: INTEGER := 8 );
        Port ( CLK : in STD_LOGIC;
             RESET : in STD_LOGIC;
             LOCKED : out STD_LOGIC;
             MCLK : out STD_LOGIC;
             SCLK : out STD_LOGIC );
    end component;
    component ROMReader is
        Generic ( ROM_SIZE: INTEGER := 100000;
                WIDTH: INTEGER := 16 );
        Port ( CLK : in STD_LOGIC;
             ENABLE : in STD_LOGIC;
             RESET : in STD_LOGIC;
             INCREMENT_ADDEND : in STD_LOGIC_VECTOR(3 downto 0);
             DOUT : out STD_LOGIC_VECTOR(WIDTH - 1 downto 0));
    end component;
    component Bridge is
        Generic ( WIDTH: INTEGER := 16 );
        Port (
            CLK : in STD_LOGIC;
            RESET: in STD_LOGIC;
            DIN_INCREMENT: out STD_LOGIC;
            TX_INCREMENT: in STD_LOGIC;
            DIN: in STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
            TX: out STD_LOGIC_VECTOR(WIDTH - 1 downto 0)
        );
    end component;
    component I2STransmitter is
        Generic ( WIDTH: INTEGER := 16 );
        Port ( CLK : in STD_LOGIC;
             RESET : in STD_LOGIC;
             READY : out STD_LOGIC;
             TX : in STD_LOGIC_VECTOR(((WIDTH * 2) - 1) downto 0);
             LRCK : out STD_LOGIC;
             SCLK : out STD_LOGIC;
             SDIN : out STD_LOGIC);
    end component;

    signal systemReset: STD_LOGIC := '1';
    signal dinIncrement: STD_LOGIC := '0';
    signal txIncrement: STD_LOGIC := '0';
    signal wireSCLK: STD_LOGIC := '0';
    signal wireDIN: STD_LOGIC_VECTOR(WIDTH - 1 downto 0) := (others => '0');
    signal wireTX: STD_LOGIC_VECTOR(WIDTH - 1 downto 0) := (others => '0');
    signal wireMCLK: STD_LOGIC := '0';
    signal locked: STD_LOGIC := '0';
begin
    clock: I2SClockGenerator
        generic map( RATIO => RATIO )
        port map(CLK => CLK100MHZ,
                 RESET => RESET,
                 LOCKED => locked,
                 MCLK => wireMCLK,
                 SCLK => wireSCLK );

    rom: ROMReader
        generic map( WIDTH => WIDTH )
        port map( CLK => CLK100MHZ,
                 ENABLE => dinIncrement,
                 RESET => systemReset,
                 INCREMENT_ADDEND => SW3 & SW2 & SW1 & SW0, -- TODO: change
                 DOUT => wireDIN);

    bridgey: Bridge
        generic map ( WIDTH => WIDTH )
        port map ( CLK => CLK100MHZ,
                 RESET => systemReset,
                 DIN_INCREMENT => dinIncrement,
                 TX_INCREMENT => txIncrement,
                 DIN => wireDIN,
                 TX => wireTX );

    transmitter: I2STransmitter
        generic map ( WIDTH => WIDTH )
        port map ( CLK => wireSCLK,
                 RESET => systemReset,
                 READY => txIncrement,
                 TX => wireTX & wireTX,
                 LRCK => LRCK,
                 SCLK => SCLK,
                 SDIN => SDIN);

    MCLK <= wireMCLK;
    systemReset <= RESET or not locked;
    LED0 <= systemReset;
    LED1 <= RESET;
    LED2 <= locked;
end Behavioral;
