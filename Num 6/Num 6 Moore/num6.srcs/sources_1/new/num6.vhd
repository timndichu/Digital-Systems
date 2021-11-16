library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating

---- any Xilinx primitives in this code.

--library UNISIM;

--use UNISIM.VComponents.all;

entity MooreMachine_Rot_Sens is

   Port ( clk : in STD_LOGIC;

     in1 : in STD_LOGIC_VECTOR(1 downto 0);

      reset : in STD_LOGIC;

      out1 : out STD_LOGIC_VECTOR(1 downto 0));

end MooreMachine_Rot_Sens;

architecture Behavioral of MooreMachine_Rot_Sens is
type state_type is (s0,s1,s2,s3);----State declaration

signal state:state_type;

begin

process(clk,reset)---clocked process

begin

    if reset= '1' then

        state<= s0;--------reset state

    elsif clk'event and clk= '1' then

        case state is

        when s0=>

                if in1 = "00" then

                    state<=s1;

                end if;

        when s1=>

                if in1 = "10" then

                    state<=s2;

                elsif in1 = "01" then

                    state<=s3;

                elsif in1 = "11" then

                    state<=s0;

                end if;

        when others=> null;

        end case;

    end if;

end process;

output_p:process(state) ---- combinational process

begin

case state is

when s0=> out1<= "00";

when s1=> out1<= "01";

when s2=> out1<= "10";

when s3=> out1<= "11";

when others=> null;

end case;

end process;

end Behavioral;