LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_decoder_3to8 IS
END tb_decoder_3to8;
 
ARCHITECTURE behavior OF tb_decoder_3to8 IS 

    COMPONENT decoder_3to8
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         d : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;

   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal d : std_logic_vector(7 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: decoder_3to8 PORT MAP (
          A => A,
          d => d
        );
 
    -- Stimulus process
   stim_proc: process
   begin        
        A <= X"F"; wait for 100 ns;
        A <= X"A";   wait for 100 ns;
        A <= X"B";   wait for 100 ns;
        A <= X"C";   wait for 100 ns;
        A <= X"5";   wait for 100 ns;
       
        wait;
   end process;

END;