--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   17:41:43 07/26/2016
-- Design Name:
-- Module Name:   /home/federico/Documents/LSE/Curso_TESCo_2016/clases/ise_projects/dia2_pr0/tb_adder_n.vhd
-- Project Name:  dia2_pr0
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: adder_n
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

ENTITY tb_adder_n IS
END tb_adder_n;

ARCHITECTURE behavior OF tb_adder_n IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT adder_n
      generic (
        N : integer
      );
      port (
        A    : in  std_logic_vector(N-1 downto 0);
        B    : in  std_logic_vector(N-1 downto 0);
        S    : out std_logic_vector(N-1 downto 0)
      );
    END COMPONENT;


   --Inputs
   signal A : std_logic_vector(9 downto 0) := (others => '0');
   signal B : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(9 downto 0);
   -- No clocks detected in port list. Replace <clock> below with
   -- appropriate port name

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: adder_n
   GENERIC MAP(
    N => 10
   )
   PORT MAP (
    A => A,
    B => B,
    S => S
  );

   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      wait for 10 ns;
      A <= "1010010100";
      B <= "0000010100";
      wait for 10 ns;
      A <= "1001011100";
      B <= "0101101100";


      -- insert stimulus here

      wait;
   end process;

END;
