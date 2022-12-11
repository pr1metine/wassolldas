----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2022 05:30:16 PM
-- Design Name: 
-- Module Name: ROMReader - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROMReader is
    Generic ( ROM_SIZE: INTEGER := 100000 );
    Port ( CLK : in STD_LOGIC;
         RESET : in STD_LOGIC;
         READY : in STD_LOGIC;
         DOUT : out STD_LOGIC_VECTOR(15 downto 0));
end ROMReader;

architecture Behavioral of ROMReader is
    component PCMROM is
        Port (
            clka : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    end component;

    type State is (STATE_RESET, STATE_WAIT_FOR_READY, STATE_INCREMENT_ADDRESS, STATE_WAIT_FOR_START);

    signal currState: State := STATE_RESET;
    signal address: STD_LOGIC_VECTOR(16 downto 0) := (others => '0');
begin
    rom: PCMROM
        port map(
            clka => CLK,
            addra => address,
            douta => DOUT
        );

    process (CLK)
        variable addressCounter: INTEGER := 0;
    begin
        if rising_edge(CLK) then
            case currState is
                when STATE_RESET =>
                    addressCounter := 0;
                    currState <= STATE_WAIT_FOR_READY;
                when STATE_WAIT_FOR_READY =>
                    if READY = '1' then
                        currState <= STATE_WAIT_FOR_START;
                    else
                        currState <= STATE_WAIT_FOR_READY;
                    end if;
                when STATE_WAIT_FOR_START =>
                    if READY = '0' then
                        currState <= STATE_INCREMENT_ADDRESS;
                    else
                        currState <= STATE_WAIT_FOR_START;
                    end if;
                when STATE_INCREMENT_ADDRESS =>
                    if addressCounter < ROM_SIZE - 1 then
                        addressCounter := addressCounter + 1;
                    else
                        addressCounter := 0;
                    end if;
                    address <= STD_LOGIC_VECTOR(to_unsigned(addressCounter, address'length));
                    currState <= STATE_WAIT_FOR_READY;
            end case;

            if RESET = '1' then
                currState <= STATE_RESET;
            end if;
        end if;
    end process;
end Behavioral;
