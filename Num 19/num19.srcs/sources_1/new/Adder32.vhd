library ieee;
use ieee.std_logic_1164.all;

--serial adder for N bits. Note that we dont have to mention N here. 
entity serial_adder is
    port(Clk,reset : in std_logic; --clock and reset signal
            a,b,cin : in std_logic;  --note that cin is used for only first iteration.
            s,cout : out std_logic  --note that s comes out at every clock cycle and cout is valid only for last clock cycle.
            );
end serial_adder;

architecture behav of serial_adder is

--intermediate signals.
signal c,flag : std_logic := '0';

begin

process(clk,reset)
--we use variable, so that we need the carry value to be updated immediately.
variable c : std_logic := '0'; 
begin
if(reset = '1') then --active high reset
    s <= '0';
    cout <= c;
    flag <= '0';
elsif(rising_edge(clk)) then
    if(flag = '0') then
        c := cin;  --on first iteration after reset, assign cin to c.
        flag <= '1';  --then make flag 1, so that this if statement isnt executed any more.
    end if; 
    cout <= '0'; 
    s <= a xor b xor c;  --SUM
    c := (a and b) or (c and b) or (a and c);  --CARRY
end if;
end process;

end behav;
