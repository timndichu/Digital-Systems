library IEEE;
use IEEE.std_logic_1164.all;
---A(2) - E , A1- x1, A0 - x0
entity decoder_2to4 is
	port (A : IN std_logic_vector(2 downto 0);
		  d: out std_logic_vector(3 downto 0));
end decoder_2to4;

architecture STRUCTURAL_DEC of decoder_2to4 is



	

	---------------------------------INVERTER-------------------
	component inv
		port ( u : in std_logic; v: out std_logic ) ;
	end component;

	
	--------------------------------------AND -----------------------------
	component and3
		port (a, b, c: in std_logic; f: out std_logic);
	end component;

	
	-------------------------------------------------------------------------------

signal xll, x00,d0,d1,d2,d3: std_logic;

begin
		fO: inv port map (A(1), xll);
		fl: inv port map (A(0), x00);
		f2: and3 port map (A(2), xll, x00, d0);
		f3: and3 port map (A(2), xll, A(0), d1);
		f4: and3 port map (A(2), A(1), x00, d2);
		f5: and3 port map (A(2), A(1), A(0), d3);
		f6 : inv port map(d0, d(0));
		f7 : inv port map(d1, d(1));
		f8 : inv port map(d2, d(2));
		f9 : inv port map(d3, d(3));
		

end STRUCTURAL_DEC;

