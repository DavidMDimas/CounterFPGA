----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    18:36:13 07/26/2016
-- Design Name:
-- Module Name:    counter_n_mod - Behavioral
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

entity counter_n_mod is
end counter_n_mod;

architecture Behavioral of counter_n_mod is
  signal out_adder_s : std_logic_vector (N-1 downto 0);
  signal mux_sel_s : std_logic;
begin


  flip_flop : ffd_n
  generic map (
  )
  port map (
  );

  adder : adder_n
  generic map (
  )
  port map(
  );

  mux_process : process (out_adder_s, mux_sel_s) -- lista de sensibilidad (entradas)
  begin
    -- acá asigno las salidas
    if mux_sel_s = '0' then
      out_mux_s <= out_adder_s;
    else
      out_mux_s <= (others => '0');
    end if;
  end process;

  comparator_process : process () -- lista de sensibilidad (entradas)
  begin
    -- acá asigno las salidas

  end process;




end Behavioral;




















