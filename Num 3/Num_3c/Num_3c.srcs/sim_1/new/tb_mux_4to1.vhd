LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_mux_4to1 IS
END tb_mux_4to1;
 
ARCHITECTURE behavior OF tb_mux_4to1 IS 

    COMPONENT mux_4to1
    PORT(
        i_Select : in  std_logic_vector(1 downto 0);
        i_Data1  : in  std_logic;
        i_Data2  : in  std_logic;
        i_Data3  : in  std_logic;
        i_Data4  : in  std_logic;
         o_Data : OUT  std_logic
        );
    END COMPONENT;

   signal i_Select : std_logic_vector(1 downto 0) := (others => '0');
   signal i_Data1,i_Data2,i_Data3,i_Data4, o_Data : std_logic;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: mux_4to1 PORT MAP (
          i_Select => i_Select,
          i_Data1 => i_Data1,
          i_Data2 => i_Data2,
          i_Data3 => i_Data3,
          i_Data4 => i_Data4,
          o_Data => o_Data
        );
 
    -- Stimulus process
   stim_proc: process
   begin        
        i_Select <= B"01";
        i_Data1 <= '1';
        i_Data2 <= '0';
        i_Data3 <= '1';
        i_Data4 <= '0'; 
        wait for 100 ns;
        
        i_Select <= B"00";
        i_Data1 <= '1';
        i_Data2 <= '0';
        i_Data3 <= '0';
        i_Data4 <= '0'; 
         wait for 100 ns;
        
      
       
        wait;
   end process;

END;