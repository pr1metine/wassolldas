----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2022 05:02:09 PM
-- Design Name: 
-- Module Name: I2STransmitter - Behavioral
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

entity I2STransmitter is
    Generic ( WIDTH: INTEGER := 16 );
    Port ( CLK : in STD_LOGIC;
         RESET : in STD_LOGIC;
         READY : out STD_LOGIC;
         TX : in STD_LOGIC_VECTOR(((WIDTH * 2) - 1) downto 0);
         LRCK : out STD_LOGIC;
         SCLK : out STD_LOGIC;
         SDIN : out STD_LOGIC);
end I2STransmitter;

architecture Behavioral of I2STransmitter is
    type State is (STATE_RESET, STATE_LOAD_WORD, STATE_TRANSMIT_WORD);
    signal currState: State := STATE_RESET;

    signal regTX: STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0) := (others => '0');
    signal regREADY: STD_LOGIC := '0';
    signal regLRCK: STD_LOGIC := '1';
    signal regSDIN: STD_LOGIC := '0';
    signal enable: STD_LOGIC := '0';

begin
    process (CLK)
        variable bitCounter: INTEGER := 0;
    begin
        if rising_edge(CLK) then
            case currState is
                when STATE_RESET =>
                    regREADY <= '0';
                    regLRCK <= '1';
                    enable <= '1';
                    regSDIN <= '0';
                    regTX <= (others => '0');
                    currState <= STATE_LOAD_WORD;
                when STATE_LOAD_WORD =>
                    bitCounter := 0;
                    regTX <= TX;
                    regLRCK <= '0';
                    currState <= STATE_TRANSMIT_WORD;
                when STATE_TRANSMIT_WORD =>
                    bitCounter := bitCounter + 1;
                    if bitCounter > (WIDTH - 1) then
                        regLRCK <= '1';
                    end if;
                    if bitCounter < (2 * WIDTH) - 1 then
                        regREADY <= '0';
                        currState <= STATE_TRANSMIT_WORD;
                    else
                        regREADY <= '1';
                        currState <= STATE_LOAD_WORD;
                    end if;
                    regTX <= regTX((2 * WIDTH) - 2 downto 0) & "0";
                    regSDIN <= regTX(2 * WIDTH - 1);
            end case;

            if RESET = '1' then
                currState <= STATE_RESET;
            end if;
        end if;
    end process;

    READY <= regREADY;
    SCLK <= CLK and enable;
    LRCK <= regLRCK;
    SDIN <= regSDIN;
end Behavioral;
