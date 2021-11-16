library IEEE;
use IEEE.std_logic_1164.all;
---A(3) - E , A1- x1, A0 - x0
entity decoder_3to8 is
	port (A : IN std_logic_vector(3 downto 0);
		  d: out std_logic_vector(7 downto 0));
end decoder_3to8;

architecture STRUCTURAL_DEC of decoder_3to8 is



	

	---------------------------------INVERTER-------------------
	component inv
		port ( u : in std_logic; v: out std_logic ) ;
	end component;

	
	

signal x22, x11, x00: std_logic;

begin
		fO: inv port map (A(1), x11);
		fl: inv port map (A(0), x00);
		f2 : inv port map(A(2), x22);
		d(0) <= A(3) and x22 and x11 and x00;
		d(1) <= A(3) and x22 and x11 and A(0);
		d(2) <= A(3) and x22 and A(1) and x00;
		d(3) <= A(3) and x22 and A(1) and A(0);
		d(4) <= A(3) and A(2) and x11 and x00;
		d(5) <= A(3) and A(2) and x11 and A(0);
		d(6) <= A(3) and A(2) and A(1) and x00;
		d(7) <= A(3) and A(2) and A(1) and A(0);
		
		
		
		

end STRUCTURAL_DEC;
