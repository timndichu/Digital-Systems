library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating

---- any Xilinx primitives in this code.

--library UNISIM;

--use UNISIM.VComponents.all;

entity MealyMachine_Rot_Sens is

Port ( clk : in STD_LOGIC;

   reset : in STD_LOGIC;
    in1 : in STD_LOGIC_VECTOR(1 downto 0);
    out1 : out STD_LOGIC_VECTOR(1 downto 0));

end MealyMachine_Rot_Sens;

architecture Behavioral of MealyMachine_Rot_Sens is

type state_type is (s0,s1,s2,s3);

signal state: state_type;

begin

process(clk,reset)

begin

    if reset = '1' then

    state<=s0;

        elsif clk'event and clk= '1' then

            case state is

                    when s0=>

                        if in1= "00" then

                            state<=s1;

                            end if;

                            when s1=>
                                
                                if in1 = "10" then

                                state <= s2;

                                elsif in1 = "01" then

                                state <= s3;

                                elsif in1 = "11" then

                                state <= s0;

                        end if;

                when others => null;

            end case;

end if;

end process;

output_p: process(state,in1) ---- combinational process

begin

case state is

when s0 => if in1= "00" then

                            out1 <= "01";

                            else out1<= "00";

                            end if;

when s1=> if in1= "10" then

        out1 <= "10";

        elsif in1= "01" then

                out1 <= "11";

                elsif in1="11" then

                out1<= "00";

                else out1<= "01" ;

                end if;

when s2=> if in1= "00" then

                out1 <= "01";

                else out1 <= "00";

                end if;

when s3=> if in1= "00" then

                out1 <= "01";

                else out1 <= "00";

                end if;

when others => null;

end case;

end process;

end Behavioral;