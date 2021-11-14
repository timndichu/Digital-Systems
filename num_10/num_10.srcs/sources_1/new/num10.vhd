library ieee; 
use ieee.std_logic_1164.all;
entity num10 is

port (inp: in std_logic_vector(7 downto 1);

	outp: out std_logic_vector(2 downto 0) );
	
end num10;

architecture a of num10 is

begin
process(inp)
begin
	if (inp(7)='1') then outp<="111";
	elsif (inp(6)='1') then outp<="110";
	elsif (inp(5)='1') then outp<="101";
	elsif (inp(4)='1') then outp<="100";
	elsif (inp(3)='1') then outp<="011";
	elsif (inp(2)='1') then outp<="010";
	elsif (inp(1)='1') then outp<="001";
	else outp<="000";
	end if;
end process;

end a;
