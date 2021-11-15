LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

USE ieee.std_logic_unsigned.all;

USE ieee.numeric_std.ALL;

ENTITY testbench_num6 IS

END testbench_num6;

ARCHITECTURE behavior OF testbench_num6 IS

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT MooreMachine_Rot_Sens

PORT(

clk : IN std_logic;

in1 : IN std_logic_vector(1 downto 0);

reset : IN std_logic;

out1 : OUT std_logic_vector(1 downto 0)

);

END COMPONENT;

--Inputs

signal clk : std_logic := '0';

signal in1 : std_logic_vector(1 downto 0) := (others => '0');

signal reset : std_logic := '0';

--Outputs

signal out1 : std_logic_vector(1 downto 0);

-- Clock period definitions

constant clk_period : time := 20 ns;

BEGIN

-- Instantiate the Unit Under Test (UUT)

uut: MooreMachine_Rot_Sens PORT MAP (

clk => clk,

in1 => in1,

reset => reset,

out1 => out1

);

-- Clock process definitions

clk_process :process

begin

            clk <= '0';

            wait for clk_period/2;

            clk <= '1';

            wait for clk_period/2;

end process;

-- Stimulus process

stim_proc: process

begin

wait for 20ns;

reset<= '0';

wait for 20ns;

in1<= "00";

wait for 100ns;

in1<= "01";

wait for 100ns;

reset<= '1';

wait for 20ns;

reset<= '0';

wait for 20ns;

in1<= "00";

wait for 100ns;

in1<= "10";

wait for 100ns;

reset<= '1';

wait for 20ns;

-- insert stimulus here

wait;

end process;

END;
