library IEEE;
use IEEE.Std_logic_1164.all;

use IEEE.NUMERIC_STD.ALL;

entity counter is 
port(D: in unsigned(3 downto 0);
     clk, clr, ent, enp, up, load: in bit;
	 q: inout unsigned(3 downto 0); co: out bit);
end counter;

architecture Behavioral of counter is
begin 
process(clk, clr)
	begin 
	     if clr= '0' then Q <="0000";
	  elsif clk= '1' and clk'event then
	     if load = '0' then q <= d;  --load
	  elsif (ent= '1' and enp = '1' and (not up)= '1') then
	     if q = "0000" then q<= "1001"; -- wrap around
	  else q <= q - 1; end if; --decrement
	  elsif (ent = '1' and enp = '1' and up = '1') then
	     if q = "1001" then q <= "0000"; -- wrap around
		 else q <= q + 1; end if; --increment
	end if;
	end if;
  end process;
  co <= '1' when (ent = '1' ) and ((up = '1' and (Q = "1001")) or 
     (up = '0' and (Q = "0000"))) else '0';
	 
	 
end Behavioral;
	  
	  