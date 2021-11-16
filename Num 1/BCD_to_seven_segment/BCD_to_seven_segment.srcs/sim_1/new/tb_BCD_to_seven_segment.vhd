LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_BCD_to_seven_segment IS
END tb_BCD_to_seven_segment;
 
ARCHITECTURE behavior OF tb_BCD_to_seven_segment IS 

    COMPONENT BCD_to_seven_segment
    PORT(
         F : IN  std_logic_vector(3 downto 0);
         s : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;

   signal F : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic_vector(6 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: BCD_to_seven_segment PORT MAP (
          F => F,
          s => s
        );
 
    -- Stimulus process
   stim_proc: process
   begin        
        F <= X"1"; wait for 100 ns;
        F <= X"2";   wait for 100 ns;
        F <= X"4";   wait for 100 ns;
        F <= X"5";   wait for 100 ns;
        F <= X"6";   wait for 100 ns;
       
        wait;
   end process;

END;