library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity num10_testbench is

end num10_testbench;

architecture Behavior of num10_testbench is


COMPONENT num10
PORT(

    inp : in std_logic_vector(7 downto 1);
    outp : out std_logic_vector(2 downto 0)
);

END COMPONENT;
 
--Inputs
signal inp : std_logic_vector(7 downto 1);

 
--Outputs
signal outp :  std_logic_vector(2 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: num10 PORT MAP (
          inp => inp,
          outp => outp
        );
 
    -- Stimulus process
   stim_proc: process
   begin        
        inp <= B"1100011"; wait for 100 ns;
        inp <= B"1001110";   wait for 100 ns;
        inp <= B"0101011";   wait for 100 ns;
        inp <= B"1010101";   wait for 100 ns;
        inp <= B"1000110";   wait for 100 ns;
       
        wait;
   end process;

END;