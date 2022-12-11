----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2022 06:04:26 PM
-- Design Name: 
-- Module Name: I2SClockGenerator - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2SClockGenerator is
    Generic ( RATIO: INTEGER := 8 );
    Port ( CLK : in STD_LOGIC;
         RESET : in STD_LOGIC;
         LOCKED : out STD_LOGIC;
         MCLK : out STD_LOGIC;
         SCLK : out STD_LOGIC );
end I2SClockGenerator;

architecture Behavioral of I2SClockGenerator is
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
