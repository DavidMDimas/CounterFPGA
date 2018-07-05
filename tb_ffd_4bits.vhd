--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   15:14:48 07/26/2016
-- Design Name:
-- Module Name:   /home/federico/Documents/LSE/Curso_TESCo_2016/clases/ise_projects/dia1_pr0/tb_ffd_4bits.vhd
-- Project Name:  dia1_pr0
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: ffd_4bits
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY tb_ffd_4bits IS
END tb_ffd_4bits;

ARCHITECTURE behavior OF tb_ffd_4bits IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT ffd_4bits
    PORT(
         clk : IN  std_logic;
         d : IN  std_logic_vector(3 downto 0);
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;


   --Inputs
   signal clk : std_logic := '0';
   signal d : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: ffd_4bits PORT MAP (
          clk => clk,
          d => d,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;


   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      d <= "0000";

      wait for 13 ns;
      d <= "0001";

      wait for 11 ns;
      d <= "0101";

      wait for 17 ns;
      d <= "1101";


      -- insert stimulus here

      wait;
   end process;

END;
