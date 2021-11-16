LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE behavior OF tb IS 

    -- Component Declaration for the Unit Under Test (UUT) 
    COMPONENT serial_adder
        port(Clk,reset : in std_logic;
            a,b,cin : in std_logic;
            s,cout : out std_logic
            );
    END COMPONENT;   

   --Inputs
   signal Clk,reset : std_logic := '0';
   signal a,b,cin : std_logic := '0';
    --Outputs
   signal s,cout : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
   uut: serial_adder PORT MAP (Clk,reset,a,b,cin,s,cout);

   -- Clock process definitions
   Clk_process :process
   begin
        Clk <= '0';
        wait for Clk_period/2;
        Clk <= '1';
        wait for Clk_period/2;
   end process;


   -- Stimulus process
   stim_proc: process
   begin        
        wait until rising_edge(clk);
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        --add two 4 bit numbers, 1111 + 1101 = 11101
        a <= '1'; b <= '1'; cin <= '1';   wait for 10 ns;
        a <= '1'; b <= '0'; cin <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; cin <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; cin <= '0'; wait for 10 ns;
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        --add two 5 bit numbers, 11011 + 10001 = 101101
        a <= '1'; b <= '1'; cin <= '1';   wait for 10 ns;
        a <= '1'; b <= '0'; cin <= '0'; wait for 10 ns;
        a <= '0'; b <= '0'; cin <= '0'; wait for 10 ns;
        a <= '1'; b <= '0'; cin <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; cin <= '0'; wait for 10 ns;
        reset <= '1';
        wait for 10 ns;
      wait;
   end process;

END;