library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier_VHDL is
   port
   (
      A, B: in std_logic_vector(3 downto 0);

      P: out std_logic_vector(7 downto 0)
   );
end entity Multiplier_VHDL;

architecture Behavioral of Multiplier_VHDL is
begin

   P <= std_logic_vector(unsigned(A) * unsigned(B));

end architecture Behavioral;