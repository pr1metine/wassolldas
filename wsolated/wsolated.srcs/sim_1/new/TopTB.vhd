----------------------------------------------------------------------------------
-- Company:  DHBW Ravensburg
-- Engineer: Quang Thanh Ta
-- 
-- Create Date: 12/18/2022 10:23:00 PM
-- Design Name: wsolated
-- Module Name: TopTB - sim
-- Project Name: wassolldas
-- Target Devices: Arty A7-35T
-- Tool Versions: Vivado 2022.1.2
-- Description: 
--      Simple testbench
-- Dependencies: 
-- 
-- Revision: v1.0.0
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.ALL;

entity TopTB is
end TopTB;

architecture sim of TopTB is
    component Top is
        Generic ( WIDTH : INTEGER := 16;
                RATIO : INTEGER := 8);
        Port ( CLK100MHZ : in STD_LOGIC;
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
    end component;

    signal CLK100MHZ :  STD_LOGIC;
    signal RESET :  STD_LOGIC;
    signal SW   :  STD_LOGIC_VECTOR(3 downto 0) := "0100";
    signal MCLK :  STD_LOGIC;
    signal LRCK :  STD_LOGIC;
    signal SCLK :  STD_LOGIC;
    signal SDIN :  STD_LOGIC;
    signal LED0 :  STD_LOGIC;
    signal LED1 :  STD_LOGIC;
    signal LED2 :  STD_LOGIC;
begin
    dut: Top
        port map(
            CLK100MHZ => CLK100MHZ,
            RESET => RESET,
            SW0  => SW(0),
            SW1  => SW(1),
            SW2  => SW(2),
            SW3  => SW(3),
            MCLK => MCLK,
            LRCK => LRCK,
            SCLK => SCLK,
            SDIN => SDIN,
            LED0 => LED0,
            LED1 => LED1,
            LED2 => LED2
        );

    clk_proc: process begin
        CLK100MHZ <= '1';
        wait for 5 ns;
        CLK100MHZ <= '0';
        wait for 5 ns;
    end process;

    main: process begin
        RESET <= '0';
        wait for 1 ms;
        SW <= "1000";
    end process;
end sim;
