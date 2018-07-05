--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   17:41:54 07/26/2016
-- Design Name:
-- Module Name:   /home/federico/Documents/LSE/Curso_TESCo_2016/clases/ise_projects/dia2_pr0/tb_ffd_n.vhd
-- Project Name:  dia2_pr0
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: ffd_n
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
USE ieee.numeric_std.ALL;

ENTITY tb_ffd_n IS
END tb_ffd_n;

ARCHITECTURE behavior OF tb_ffd_n IS

    -- Component Declaration for the Unit Under Test (UUT)

  component ffd_n is
    generic (
      N : integer
    );
    port (
      clk : in  std_logic;
      d   : in  std_logic_vector(N-1 downto 0);
      q   : out std_logic_vector(N-1 downto 0) := std_logic_vector(to_unsigned(0,N))
    );
  end component ffd_n;


   --Inputs
   signal clk : std_logic := '0';
   signal d : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal q : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: ffd_n
   GENERIC MAP (
    N => 10
   )
   PORT MAP (
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
      wait for 20 ns;

      wait for 13 ns;
      d <= "1010010100";

      wait for 11 ns;
      d <= "0110100101";

      wait for 17 ns;
      d <= "0010101101";


      -- insert stimulus here

      wait;
   end process;

END;
