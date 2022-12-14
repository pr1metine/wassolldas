----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/10/2022 12:01:51 PM
-- Design Name: 
-- Module Name: Top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
library xpm;
use xpm.vcomponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is
    Generic ( WIDTH : INTEGER := 16;
            RATIO : INTEGER := 8;
            WINDOW_LENGTH : INTEGER := 480;
            STANDARD_WINDOW_OFFSET : INTEGER := 240 );
    Port ( CLK_100MHZ : in STD_LOGIC;
         RESET : in STD_LOGIC;
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
                BURST_LENGTH: INTEGER := 480;
                WIDTH: INTEGER := 16 );
        Port ( CLK : in STD_LOGIC;
             RESET : in STD_LOGIC;
             INCREMENT_ENABLE : in STD_LOGIC_VECTOR(3 downto 0);
             DOUT : out STD_LOGIC_VECTOR(WIDTH - 1 downto 0));
    end component;
    component WSOLATransformer is
        Generic (
            WIDTH: INTEGER := 16;
            WINDOW_LENGTH: INTEGER := 480; -- 100 hz-
            STANDARD_WINDOW_OFFSET: INTEGER := 240 -- two windowed segment overlap half the time
        );
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
    signal txIncrementFast: STD_LOGIC := '0';
    signal wireSCLK: STD_LOGIC := '0';
    signal wireDIN: STD_LOGIC_VECTOR(WIDTH - 1 downto 0) := (others => '0');
    signal wireTX: STD_LOGIC_VECTOR(WIDTH - 1 downto 0) := (others => '0');
    signal wireTXSlow: STD_LOGIC_VECTOR(WIDTH - 1 downto 0) := (others => '0');
    signal wireMCLK: STD_LOGIC := '0';
    signal locked: STD_LOGIC := '0';
begin
    clock: I2SClockGenerator
        generic map( RATIO => RATIO )
        port map(CLK => CLK_100MHZ,
                 RESET => RESET,
                 LOCKED => locked,
                 MCLK => wireMCLK,
                 SCLK => wireSCLK );

    rom: ROMReader
        generic map( ROM_SIZE => 100000,
                    BURST_LENGTH => WINDOW_LENGTH,
                    WIDTH => WIDTH)
        port map( CLK => CLK_100MHZ,
                 RESET => systemReset,
                 INCREMENT_ENABLE => dinIncrement & dinIncrement & dinIncrement & dinIncrement, -- TODO: change
                 DOUT => wireDIN);

    transformer: WSOLATransformer
        generic map ( WIDTH => WIDTH,
                    WINDOW_LENGTH => WINDOW_LENGTH,
                    STANDARD_WINDOW_OFFSET => STANDARD_WINDOW_OFFSET )
        port map ( CLK => CLK_100MHZ,
                 RESET => systemReset,
                 DIN_INCREMENT => dinIncrement,
--                 TX_INCREMENT => txIncrementFast,
                 TX_INCREMENT => txIncrement,
                 DIN => wireDIN,
                 TX => wireTX );

    xpm_cdc_Data : xpm_cdc_gray
        generic map ( DEST_SYNC_FF => 4,
                    INIT_SYNC_FF => 0,
                    SIM_ASSERT_CHK => 0,
                    WIDTH => WIDTH
                   )
        port map (  src_clk => CLK_100MHZ,
                 src_in_bin => wireTX,
                 dest_clk => wireSCLK,
                 dest_out_bin => wireTXSlow
                );

    xpm_cdc_Increment : xpm_cdc_single
        generic map ( DEST_SYNC_FF => 4,
                    SRC_INPUT_REG => 1
                   )
        port map (  src_clk => wireSCLK,
                 src_in => txIncrement,
                 dest_clk => CLK_100MHZ,
                 dest_out => txIncrementFast
                );
  
    transmitter: I2STransmitter
        generic map ( WIDTH => WIDTH )
        port map ( CLK => wireSCLK,
                 RESET => systemReset,
                 READY => txIncrement,
--                 TX => wireTXSlow & wireTXSlow,
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
