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
use IEEE.numeric_std.ALL;

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
        DIN_INCREMENT: out STD_LOGIC;
        TX_INCREMENT: in STD_LOGIC;
        DIN: in STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
        TX: out STD_LOGIC_VECTOR(WIDTH - 1 downto 0)
    );
end WSOLATransformer;

architecture Behavioral of WSOLATransformer is
    component WSOLARAM is
        Port (
            clka : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            clkb : IN STD_LOGIC;
            web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addrb : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            dinb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    end component;

    type ReadState is (STATE_RESET, STATE_WAIT_FOR_INCREMENT, STATE_INCREMENT);
    signal currReadState: ReadState := STATE_RESET;
    signal writeEnable: STD_LOGIC_VECTOR(0 downto 0) := (others => '0');
    signal addressA: unsigned(9 downto 0) := (others => '0');
    signal dinA: STD_LOGIC_VECTOR(WIDTH - 1 downto 0) := (others => '0');
    signal doutA: STD_LOGIC_VECTOR(WIDTH - 1 downto 0);

    type WriteState is (STATE_RESET, STATE_ADD, STATE_OVERWRITE, STATE_WAIT_FOR_NEXT_LOAD);
    signal currWriteState: WriteState := STATE_RESET;
    signal addressB: unsigned(9 downto 0) := (others => '0');
    signal doutB: STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
begin
    ram: WSOLARAM
        port map (
            clka => CLK,
            wea => writeEnable,
            addra => std_logic_vector(addressA),
            dina => dinA,
            douta => doutA,
            clkb => CLK,
            web => (0 downto 0 => '0'),
            addrb => std_logic_vector(addressB),
            dinb => (WIDTH - 1 downto 0 => '0'),
            doutb => doutB
        );

    read_process: process (CLK)
    begin
        if rising_edge(CLK) then
            case currReadState is
                when STATE_RESET =>
                    addressB <= (others => '0');
                    currReadState <= STATE_WAIT_FOR_INCREMENT;
                when STATE_WAIT_FOR_INCREMENT =>
                    if TX_INCREMENT = '1' then
                        currReadState <= STATE_INCREMENT;
                        addressB <= addressB + 1;
                    else
                        currReadState <= STATE_WAIT_FOR_INCREMENT;
                    end if;
                when STATE_INCREMENT =>
                    
                    if TX_INCREMENT = '0' then
                        currReadState <= STATE_WAIT_FOR_INCREMENT;
                    else
                        currReadState <= STATE_INCREMENT;
                    end if;
            end case;

            if RESET = '1' then
                currReadState <= STATE_RESET;
            end if;
        end if;
    end process;

    write_process: process (CLK)
        variable currWindowLength: INTEGER := 0;
    begin
        if rising_edge(CLK) then
            case currWriteState is
                when STATE_RESET =>
                    addressA <= (others => '0');
                    currWindowLength := 0;
                    DIN_INCREMENT <= '0';
                    writeEnable <= "0";
                    currWriteState <= STATE_OVERWRITE;
                when STATE_ADD =>
                    dinA <= std_logic_vector(unsigned('0' & DIN(WIDTH - 1 downto 1)) + unsigned(doutA));
                    DIN_INCREMENT <= '1';
                    writeEnable <= "1";
                    addressA <= addressA + 1;
                    
                    currWindowLength := currWindowLength + 1;
                    if currWindowLength >= STANDARD_WINDOW_OFFSET then
                        currWriteState <= STATE_OVERWRITE;
                    else
                        currWriteState <= STATE_ADD;
                    end if;
                when STATE_OVERWRITE =>
                    dinA <= '0' & DIN(WIDTH - 1 downto 1);
                    DIN_INCREMENT <= '1';
                    writeEnable <= "1";
                    addressA <= addressA + 1;
                    
                    currWindowLength := currWindowLength + 1;
                    if currWindowLength >= WINDOW_LENGTH then
                        addressA <= addressA - STANDARD_WINDOW_OFFSET;
                        currWriteState <= STATE_WAIT_FOR_NEXT_LOAD;
                    else
                        currWriteState <= STATE_OVERWRITE;
                    end if;
                when STATE_WAIT_FOR_NEXT_LOAD =>
                    DIN_INCREMENT <= '0';
                    writeEnable <= "0";
                    currWindowLength := 0;
                    
                    if addressB >= addressA then
                        currWriteState <= STATE_ADD;
                    else
                        currWriteState <= STATE_WAIT_FOR_NEXT_LOAD;
                    end if;
            end case;
            
            if RESET = '1' then
                currWriteState <= STATE_RESET;
            end if;
        end if;
    end process write_process;

    TX <= doutB;
end Behavioral;
