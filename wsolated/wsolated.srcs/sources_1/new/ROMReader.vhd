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
    Generic ( ROM_SIZE: INTEGER := 100000;
            BURST_LENGTH: INTEGER := 480;
            WIDTH: INTEGER := 16 );
    Port ( CLK : in STD_LOGIC;
         RESET : in STD_LOGIC;
         INCREMENT_ENABLE : in STD_LOGIC_VECTOR(3 downto 0); -- may extract increment enable width to a generic parameter
         DOUT : out STD_LOGIC_VECTOR(WIDTH - 1 downto 0));
end ROMReader;

architecture Behavioral of ROMReader is
    component PCMROM is
        Port (
            clka : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    end component;

    signal address: unsigned(16 downto 0) := (others => '0');
    signal addressNext: unsigned(16 downto 0) := (others => '0');
begin
    rom: PCMROM
        port map(
            clka => CLK,
            addra => std_logic_vector(address),
            douta => DOUT
        );

    process (CLK)
        variable currBurstLength: INTEGER := 0;
        variable offset: INTEGER;
    begin
        if falling_edge(CLK) then
            if INCREMENT_ENABLE /= (3 downto 0 => '0') then
                currBurstLength := currBurstLength + 1;
                if currBurstLength >= BURST_LENGTH then
                    currBurstLength := 0;
                    offset := 1 - BURST_LENGTH / 2;
--                    address <= address + 1; -- TODO: adapt
                else
                    offset := 1;
                end if;
                address <= (address + offset) mod ROM_SIZE;
            end if;
            
            if RESET = '1' then
                currBurstLength := 0;
                address <= (others => '0');
            end if;
        end if;
    end process;
    
    addressNext <= (address + 1) mod ROM_SIZE;
    
end Behavioral;
