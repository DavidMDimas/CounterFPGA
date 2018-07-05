----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    17:34:47 07/26/2016
-- Design Name:
-- Module Name:    ffd_n - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ffd_n is
  generic (
    N : integer
  );
  port (
    clk : in  std_logic;
    d   : in  std_logic_vector(N-1 downto 0);
    q   : out std_logic_vector(N-1 downto 0) := std_logic_vector(to_unsigned(0,N))
  );
end ffd_n;

architecture Behavioral of ffd_n is

begin

  ffd_process : process(clk)
  begin
    if rising_edge(clk) then
      q <= d;
    end if;
  end process;

end Behavioral;

