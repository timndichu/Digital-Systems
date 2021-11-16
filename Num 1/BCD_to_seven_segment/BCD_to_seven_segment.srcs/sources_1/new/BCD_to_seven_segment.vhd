library IEEE;
use IEEE.std_logic_1164.all;
--- S(6) - a , d(5)- b, d(4)- c, d(3) - d, d(2)- e, d(1)- f, d(0)- g
-- F(3)- A, A(2) - B, A(1) - C, A(0)- D
entity BCD_to_seven_segment is
	port (F : IN std_logic_vector(3 downto 0);
		  S: out std_logic_vector(6 downto 0));
end BCD_to_seven_segment;

architecture STRUCTURAL_DEC of BCD_to_seven_segment is



	

	---------------------------------INVERTER-------------------
	component inv
		port ( u : in std_logic; v: out std_logic ) ;
	end component;

	
	

signal a,b,c,d, abar, bbar, cbar, dbar: std_logic;

begin
        a <= F(3);
        b <= F(2);
        c <= F(1);
        d <= F(0);
        

		fO: inv port map (c, cbar);
		fl: inv port map (d, dbar);
		f2 :inv port map(b, bbar);
		f3: inv port map(a, abar);
		
		S(0) <= (bbar and c) or (b and cbar) or a or (b and dbar);
		S(1) <= (cbar and dbar) or (b and cbar) or (b and dbar) or a;
		S(2) <= (bbar and dbar) or (c and dbar);
		S(3) <= (bbar and dbar) or (bbar and c) or (b and cbar and d) or (c and dbar) or a;
		S(4) <= cbar or d or b;
		S(5) <= bbar or (cbar and dbar) or (c and d);
		S(6) <= (bbar and dbar) or c or (b and d) or a;
		
		
		
		

end STRUCTURAL_DEC;