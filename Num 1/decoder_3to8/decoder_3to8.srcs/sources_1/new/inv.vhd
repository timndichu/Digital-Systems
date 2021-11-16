library IEEE;
use IEEE.std_logic_1164.all;


entity inv is
		port (u: in std_logic; v: out std_logic);
end inv;

architecture LOGIC1 of inv is
	begin
		v<=not u;
end LOGIC1;