library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter is
end tb_counter;

architecture Behavioral of tb_counter is

component counter 
    Port ( clk: in std_logic; -- clock input
           clr:  in std_logic;
           ent: in std_logic;
           enp: in std_logic;
           up: in std_logic;
           load: in std_logic;
    
           d: out std_logic_vector(3 downto 0) -- output 4-bit counter
     );
end component;
signal clk,up,enp,load,clr,ent: std_logic;
signal d:std_logic_vector(3 downto 0);

begin
dut:counter port map (clk => clk, up=>up, enp => enp, load=>load, ent=>ent, clr=>clr, d => d);
   -- Clock process definitions
clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
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
   load <= '0';
    load <='1';
    enp <='1';
    ent <='1';
   up <= '1';

 

end Behavioral;
