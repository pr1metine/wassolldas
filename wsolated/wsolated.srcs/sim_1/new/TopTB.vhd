library IEEE;
use IEEE.std_logic_1164.ALL;

entity TopTB is
end TopTB;

architecture sim of TopTB is
    component Top is
        Generic ( WIDTH : INTEGER := 16;
                RATIO : INTEGER := 8);
        Port ( CLK_100MHZ : in STD_LOGIC;
             RESET : in STD_LOGIC;
             MCLK : out STD_LOGIC;
             LRCK : out STD_LOGIC;
             SCLK : out STD_LOGIC;
             SDIN : out STD_LOGIC
            );
    end component;

    signal        CLK_100MHZ :  STD_LOGIC;
    signal         RESET :  STD_LOGIC;
    signal         MCLK :  STD_LOGIC;
    signal         LRCK :  STD_LOGIC;
    signal         SCLK :  STD_LOGIC;
    signal         SDIN :  STD_LOGIC;
begin
    dut: Top
        port map(
            CLK_100MHZ => CLK_100MHZ,
            RESET => RESET,
            MCLK => MCLK,
            LRCK => LRCK,
            SCLK => SCLK,
            SDIN => SDIN
        );

    clk_proc: process begin
        for i in 0 to 100000 loop
            CLK_100MHZ <= '1';
            wait for 5 ns;
            CLK_100MHZ <= '0';
            wait for 5 ns;
        end loop;
    end process;

    main: process begin
        RESET <= '0';
        wait;
    end process;
end sim;
