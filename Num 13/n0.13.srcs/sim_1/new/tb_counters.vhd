library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity tb_counter is
end tb_counter;

architecture Behavioral of tb_counter is

component counter 
    Port ( D: in unsigned(3 downto 0);
    clk: in std_logic; -- clock input
           clr:  in std_logic;
           ent: in std_logic;
           enp: in std_logic;
           up: in std_logic;
           load: in std_logic;
    
           q: inout std_logic_vector(3 downto 0); -- output 4-bit counter
           co: out bit
     );
end component;
signal clk,up,enp,load,clr,ent: std_logic;
signal co: bit;
signal q:std_logic_vector(3 downto 0);
signal d:unsigned(3 downto 0);

begin
dut:counter port map (d=>d, co=>co,clk => clk, up=>up, enp => enp, load=>load, ent=>ent, clr=>clr, q => q);
   -- Clock process definitions
clock_process :process
begin
     clk <= '0';
	 
     wait for 100 ns;
     clk <= '1';
     wait for 10 ns;
end process;


-- Stimulus process
stim_proc: process
begin        
  
     clr <= '0';
    wait for 20 ns;    
    clr <= '1';
  wait for 300 ns;    
end process;
D<=X"5";
   load <= '0';
   
    enp <='1';
    ent <='1';
   up <= '1';

 

end Behavioral;
