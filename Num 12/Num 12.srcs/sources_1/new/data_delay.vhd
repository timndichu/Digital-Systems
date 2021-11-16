Library ieee;
USE ieee.std_logic_1164.all;


ENTITY data_delay is
    port(d: in std_logic_vector(7 downto 0 );
    clk: in std_logic;
    sel: in integer range 0 to 3;
    q:out std_logic_vector(7 downto 0));
END data_delay;

Architecture data_delay of data_delay is
    Type register_array is array (0 to 3) of
        std_logic_vector(7 downto 0);
    signal internal:register_array;
begin
    process (clk,sel)
    begin
        if(clk'event and clk='1') then 
            internal  <= d & internal(0 to 2);
        end if;
    end process;
    q <= internal(sel);
end data_delay;