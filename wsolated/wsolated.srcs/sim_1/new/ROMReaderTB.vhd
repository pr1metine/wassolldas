----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/17/2022 02:04:14 PM
-- Design Name: 
-- Module Name: ROMReaderTB - Behavioral
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

entity ROMReaderTB is
--  Port ( );
end ROMReaderTB;

architecture Behavioral of ROMReaderTB is
    component ROMReader is
        Generic ( ROM_SIZE: INTEGER := 100000;
                BURST_LENGTH: INTEGER := 480;
                WIDTH: INTEGER := 16 );
        Port ( CLK : in STD_LOGIC;
             RESET : in STD_LOGIC;
             INCREMENT_ENABLE : in STD_LOGIC_VECTOR(3 downto 0); -- may extract increment enable width to a generic parameter
             DOUT : out STD_LOGIC_VECTOR(WIDTH - 1 downto 0));
    end component;

    signal CLK :  STD_LOGIC := '0';
    signal RESET :  STD_LOGIC := '0';
    signal INCREMENT_ENABLE :  STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal DOUT :  STD_LOGIC_VECTOR(15 downto 0);
    signal count : INTEGER := 0;
begin
    dut: ROMReader
    port map(
        CLK => CLK,
        RESET => RESET,
        INCREMENT_ENABLE => INCREMENT_ENABLE,
        DOUT => DOUT
    );
    process begin
        CLK <= '1';
        wait for 5 ns;
        CLK <= '0';
        wait for 5 ns;
    end process;
    
    process begin
        wait for 20 ns;
        for i in 1 to 10 loop
            INCREMENT_ENABLE <= "1111";
            count <= count + 1;
            wait for 10 ns;
--            INCREMENT_ENABLE <= "0000";
--            wait for 30 ns;
        end loop;
        wait;
    end process;
end Behavioral;
