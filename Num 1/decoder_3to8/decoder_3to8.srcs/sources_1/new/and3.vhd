library IEEE;
use IEEE.std_logic_1164.all;

--VHDL code for and3
entity and3 is
		port (a, b, c: in std_logic; f: out std_logic);
end and3;

architecture LOGIC of and3 is
begin
		f<= a and b and c;
end LOGIC;