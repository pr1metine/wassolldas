----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/17/2022 02:04:14 PM
-- Design Name: 
-- Module Name: PCMROMTB - Behavioral
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

entity PCMROMTB is
    --  Port ( );
end PCMROMTB;

architecture Behavioral of PCMROMTB is
    component PCMROM is
        Port (
            clka : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    end component;
    signal clka : STD_LOGIC;
    signal addra : STD_LOGIC_VECTOR(16 DOWNTO 0) := (others => '0');
    signal douta :  STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');
begin
    dut: PCMROM
    port map(
        clka => clka,
        addra => addra,
        douta => douta
    );

    process begin
        for i in 0 to 1000000 loop
            clka <= '1';
            wait for 5 ns;
            clka <= '0';
            wait for 5 ns;
        end loop;
    end process;
    
    process begin
        wait for 20 ns;
        addra <= '0' & x"0001";
        wait for 10 ns;
        addra <= '0' & x"0002";
        wait for 10 ns;
        addra <= '0' & x"0003";
        wait for 10 ns;
        addra <= '0' & x"0004";
        wait for 10 ns;
        addra <= '0' & x"0005";
        wait for 10 ns;
        addra <= '0' & x"0006";
        wait;
    end process;
end Behavioral;
