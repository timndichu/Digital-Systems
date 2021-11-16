library IEEE;
use IEEE.std_logic_1164.all;

entity num_3a_circuit is
	port (F : IN std_logic_vector(2 downto 0);
		  D: out std_logic);
end num_3a_circuit;

architecture STRUCTURAL_DEC of num_3a_circuit is



signal a,b,c: std_logic;

begin
        a <= F(2);
        b <= F(1);
        c <= F(0);
      
        
        d<=  not(((a and b) or (not c)) and a);
		
		
		
		
		
		

end STRUCTURAL_DEC;