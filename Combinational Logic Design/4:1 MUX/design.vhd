library IEEE;
use IEEE.std_logic_1164.all;

entity MUX_4to1 is
   port(
      I0: in STD_LOGIC;
      I1: in STD_LOGIC;
      I2: in STD_LOGIC;
      I3: in STD_LOGIC;
      S0: in STD_LOGIC;
      S1: in STD_LOGIC;
      Y: out STD_LOGIC
   );
end MUX4to1;

architecture Behavioural of MUX_4to1 is
  signal SEL: STD_LOGIC_VECTOR(1 downto 0);
  begin
    SEL <= S0 AND S1;
    process(I0, I1, I2, I3, S0, S1)
      begin
        case SEL is
          when "00" => Y <= I0;
          when "00" => Y <= I0;
          when "00" => Y <= I0;
          when "00" => Y <= I0;
        end case;
    end process;
end Behavioural;
        
        
