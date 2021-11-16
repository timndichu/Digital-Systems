LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;

ENTITY tb_Multiplier_VHDL IS
END tb_Multiplier_VHDL;

ARCHITECTURE behavior OF tb_Multiplier_VHDL IS

 -- Component Declaration for the Unit Under Test (UUT)

 COMPONENT Multiplier_VHDL
 PORT(
 A : IN std_logic_vector(3 downto 0);
 B : IN std_logic_vector(3 downto 0);
 P : OUT std_logic_vector(7 downto 0)
 );
 END COMPONENT;

 --Inputs
 signal A : std_logic_vector(3 downto 0) := (others => '0');
 signal B : std_logic_vector(3 downto 0) := (others => '0');
 --Outputs
 signal P : std_logic_vector(7 downto 0);

BEGIN

 -- Instantiate the Unit Under Test (UUT)
 uut: Multiplier_VHDL PORT MAP (
 A => A,
 B => B,
 P => P
 );
 -- Stimulus process
 stim_proc: process
 begin
 -- hold reset state for 100 ns.
 wait for 100 ns;
 -- insert stimulus here
 li: for i in 0 to 15 loop
 A <= conv_std_logic_vector(i,4);
 lj: for j in 0 to 15 loop
 B <= conv_std_logic_vector (j,4); wait for 20 ns;
 end loop;
 end loop;
 A <= x"0"; B <= x"0"; wait for 20 ns;
 wait;
 end process;
END; 