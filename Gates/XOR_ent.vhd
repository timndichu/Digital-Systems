library ieee;
use ieee.std_logic_1164.all;

--------------------------------------

entity XOR_ent is
port(	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end XOR_ent;  

--------------------------------------

architecture behavior of XOR_ent is
begin

    process(x, y)
    begin
        -- compare to truth table
		if (x/=y) then
	        F <= '1';
		else
		    F <= '0';
		end if;
    end process;

end behavior;