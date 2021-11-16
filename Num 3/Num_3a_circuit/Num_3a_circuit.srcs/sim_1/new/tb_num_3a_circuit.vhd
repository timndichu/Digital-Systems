LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_num_3a_circuit IS
END tb_num_3a_circuit;
 
ARCHITECTURE behavior OF tb_num_3a_circuit IS 

    COMPONENT num_3a_circuit
    PORT(
         F : IN  std_logic_vector(2 downto 0);
         d : OUT  std_logic
        );
    END COMPONENT;

   signal F : std_logic_vector(2 downto 0) := (others => '0');
   signal d : std_logic;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: num_3a_circuit PORT MAP (
          F => F,
          d => d
        );
 
    -- Stimulus process
   stim_proc: process
   begin        
        F <= B"001"; wait for 100 ns;
        F <= B"111";   wait for 100 ns;
        F <= B"000";   wait for 100 ns;
        F <= B"110";   wait for 100 ns;
        F <= B"100";   wait for 100 ns;
       
        wait;
   end process;

END;