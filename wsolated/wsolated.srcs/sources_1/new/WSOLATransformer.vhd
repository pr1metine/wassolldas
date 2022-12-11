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
        WINDOW_LENGTH: INTEGER := 480; -- 100 hz
        STANDARD_WINDOW_OFFSET: INTEGER := 240 -- two windowed segment overlap half of the
    );
    Port (
        MCLK : in STD_LOGIC
    );
end WSOLATransformer;

architecture Behavioral of WSOLATransformer is

begin


end Behavioral;
