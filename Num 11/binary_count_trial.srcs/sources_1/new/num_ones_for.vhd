library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity num_ones_for is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           ones : out  STD_LOGIC_VECTOR (2 downto 0));
end num_ones_for;

architecture Behavioral of num_ones_for is

component fulladder is
    port (a : in std_logic;
            b : in std_logic;
           cin : in std_logic;
           sum : out std_logic;
           carry : out std_logic
         );
end component;

component halfadder is
    port (a : in std_logic;
            b : in std_logic;
           sum : out std_logic;
           carry : out std_logic
         );
end component;

signal S,C : std_logic_vector(7 downto 0);

begin

fa0 : fulladder port map(A(1),A(2),A(3),S(0),C(0));
fa1 : fulladder port map(A(4),A(5),A(6),S(1),C(1));
fa2 : fulladder port map(S(0),S(1),A(7),S(2),C(2));
fa3 : fulladder port map(C(0),C(1),C(2),S(3),C(3));


ones <= C(3) & S(3) & S(2); --final output assignment.

end Behavioral;
