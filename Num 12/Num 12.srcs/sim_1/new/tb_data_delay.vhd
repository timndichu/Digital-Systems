LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_data_delay IS
END tb_data_delay;
 
ARCHITECTURE behavior OF tb_data_delay IS 

    COMPONENT data_delay
    PORT(
         d: in std_logic_vector(7 downto 0 );
        clk: in std_logic;
        sel: in integer range 0 to 3;
        q:out std_logic_vector(7 downto 0)
        );
    END COMPONENT;

   signal d : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic;
   signal q: std_logic_vector(7 downto 0);
   signal sel: integer range 0 to 3;
   
   
   
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: data_delay PORT MAP (
          d => d,
          clk => clk,
          sel=> sel,
          q => q
        );
 
 
  -- Clock process definitions
       clock_process :process
       begin
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
       end process;
    -- Stimulus process
   stim_proc: process
   begin        
        d <= X"1F"; 
   
        sel <= 2;
        wait for 100 ns;
        d <= X"20";  
       
        sel <= 1;
         wait for 100 ns;
        d <= X"48";   
       
        sel <= 2;
        wait for 100 ns;
        
        wait;
   end process;

END;