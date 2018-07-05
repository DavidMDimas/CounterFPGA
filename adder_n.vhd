----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    17:35:11 07/26/2016
-- Design Name:
-- Module Name:    adder_n - Behavioral
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

entity adder_n is
  generic (
    N : integer
  );
  port (
    A    : in  std_logic_vector(N-1 downto 0);
    B    : in  std_logic_vector(N-1 downto 0);
    S    : out std_logic_vector(N-1 downto 0)
  );
end adder_n;

architecture Behavioral of adder_n is

begin

  adder_process : process(A,B)
  begin
    S <= std_logic_vector(unsigned(A)+unsigned(B));
  end process;

end Behavioral;

