LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_ones IS
END tb_ones;
 
ARCHITECTURE behavior OF tb_ones IS 

    COMPONENT num_ones_for
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         ones : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;

   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal ones : std_logic_vector(2 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: num_ones_for PORT MAP (
          A => A,
          ones => ones
        );
 
    -- Stimulus process
   stim_proc: process
   begin        
        A <= B"00100101"; wait for 100 ns;
        A <= B"01111111";   wait for 100 ns;
        A <= B"00000001";   wait for 100 ns;
        A <= B"00111111";   wait for 100 ns;
        A <= B"11111111";   wait for 100 ns;
        A <= B"01010101";   wait for 100 ns;
        A <= B"01010110";   wait for 100 ns;
        wait;
   end process;

END;