library ieee;
use ieee.std_logic_1164.all;

----------------------------------------

entity NOT_ent is
port(	x: in std_logic;
	F: out std_logic
);
end NOT_ent;  

----------------------------------------

architecture behavior of NOT_ent is
begin

    process(x)
    begin
        -- compare to truth table
        if (x='1') then
            F <= '0';
        else
            F <= '1';
        end if;
    end process;

end behavior;
