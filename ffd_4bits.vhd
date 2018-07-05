----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    15:12:42 07/26/2016
-- Design Name:
-- Module Name:    ffd_4bits - Behavioral
-- Project Name:
-- Target Devices:
-- Tool versions:
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ffd_4bits is
  port (
    clk : in  std_logic;
    d   : in  std_logic_vector(3 downto 0);
    q   : out std_logic_vector(3 downto 0) := "0000"
  );
end ffd_4bits;

architecture Behavioral of ffd_4bits is
begin

  clk_process : process (clk)
  begin
    if rising_edge(clk) then
      q <= d;
    end if;
  end process;

end Behavioral;

