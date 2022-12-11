----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/10/2022 12:01:51 PM
-- Design Name: 
-- Module Name: WSOLATransformer - Behavioral
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

-- Window length
entity WSOLATransformer is
    Generic (
        WIDTH: INTEGER := 16;
        WINDOW_LENGTH: INTEGER := 480; -- 100 hz-
        STANDARD_WINDOW_OFFSET: INTEGER := 240 -- two windowed segment overlap half the time
    );
    Port (
        CLK : in STD_LOGIC;
        RESET: in STD_LOGIC;
        DIN_READY: out STD_LOGIC;
        TX_READY: in STD_LOGIC;
        DIN: in STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
        TX: out STD_LOGIC_VECTOR(WIDTH - 1 downto 0)
    );
end WSOLATransformer;

architecture Behavioral of WSOLATransformer is
    signal x: STD_LOGIC_VECTOR(2 * WINDOW_LENGTH * WIDTH - 1 downto 0);
    signal y: STD_LOGIC_VECTOR(2 * WINDOW_LENGTH * WIDTH - 1 downto 0);
    
    type State is (STATE_RESET, STATE_INITIAL_DIN_LOADING, STATE_INITIAL_STORING, STATE_DIN_LOADING, STATE_STORING, STATE_WAITING_FOR_READ, STATE_BEING_READ);
    signal currState: State := STATE_RESET;
    signal currYStartPosition: INTEGER := 0;
    
    signal regDIN: STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
begin

    process (CLK)
        variable xPosition: INTEGER := 0;
    begin
        if rising_edge(CLK) then
            case currState is
                when STATE_RESET =>
                    x <= (others => '0');
                    y <= (others => '0');
                    xPosition := 0;
                    currYStartPosition <= 0;
                    currState <= STATE_INITIAL_DIN_LOADING;
                when STATE_INITIAL_DIN_LOADING =>
                    regDIN <= DIN;
                    DIN_READY <= '0';
                    
                when STATE_INITIAL_STORING =>
                when STATE_DIN_LOADING =>
                when STATE_STORING =>
                when STATE_WAITING_FOR_READ =>
                when STATE_BEING_READ =>
            end case;
        end if;
    end process;

end Behavioral;
