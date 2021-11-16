LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_decoder_2to4 IS
END tb_decoder_2to4;
 
ARCHITECTURE behavior OF tb_decoder_2to4 IS 

    COMPONENT decoder_2to4
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         d : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   signal A : std_logic_vector(2 downto 0) := (others => '0');
   signal d : std_logic_vector(3 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: decoder_2to4 PORT MAP (
          A => A,
          d => d
        );
 
    -- Stimulus process
   stim_proc: process
   begin        
        A <= B"001"; wait for 100 ns;
        A <= B"111";   wait for 100 ns;
        A <= B"000";   wait for 100 ns;
        A <= B"110";   wait for 100 ns;
        A <= B"100";   wait for 100 ns;
       
        wait;
   end process;

END;