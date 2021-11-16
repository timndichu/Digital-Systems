library IEEE;
useIEEE.std-logic-ll64.all;
---A(2) - E , A1- x1, A0 - x0
entity decoder2to4 is
	port (A : IN std_logic_vector(2 downto 0);
		  d: out std_logic_vector(3 downto 0));
end decoder2to4;

architecture STRUCTURAL-DEC of decoder2to4 is

	---------------------------------INVERTER-------------------
	component inv
		port ( u : in BIT; v: out BIT);
	end component;

	--VHDL code for inv
	entity inv is
		port (u: in BIT; v: out BIT);
	end inv;

	architecture LOGIC1 of inv is
	begin
		v<=not u;
	end LOGIC1;
	--------------------------------------AND -----------------------------
	component and3
		port (a, b, c: in BIT; f: out BIT);
	end component;

	--VHDL code for and3
	entity and3 is
		port (a, b, c: in BIT; f: out BIT);
	end and3;

	architecture LOGIC of and3 is
	begin
		f<= a and b and c;
	end LOGIC;
	-------------------------------------------------------------------------------

signal xll, x00,d0,d1,d2,d3: BIT;

begin
		fO: inv port map (A(l), xll);
		fl: inv port map (A(0), x00);
		f2: and3 port map (A(2), xll, x00, d0);
		f3: and3 port map (A(2), xll, A(0), d1;
		f4: and3 port map (A(2), A(1), x00, d2;
		f5: and3 port map (A(2), A(l), A(0), d3);
		f6 : inv port map(d0, d(0));
		f7 : inv port map(d1, d(1));
		f8 : inv port map(d2, d(2));
		f9 : inv port map(d3, d(3));
		

end STRUCTURAL-DEC;

