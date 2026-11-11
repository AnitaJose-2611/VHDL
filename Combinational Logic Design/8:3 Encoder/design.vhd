library IEEE;
use IEEE.std_logic_1164.all;

entity Encoder_8to3 is
   port(
      D: in STD_LOGIC_VECTOR(7 downto 0);
      Y: out STD_LOGIC_VECTOR(2 downto 0)
   );
end Encoder_8to3;

architecture Behavioural of Encoder_8to3 is
   begin
      process(D)
      begin
         case D is
            when "00000001" =>
               Y <= "000";
            when "00000010" =>
               Y <= "001";
            when "00000100" =>
               Y <= "010";
            when "00001000" =>
               Y <= "011";
            when "00010000" =>
               Y <= "100";
            when "00100000" =>
               Y <= "101";
            when "01000000" =>
               Y <= "110";
            when "10000000" =>
               Y <= "111";
            when others =>
               Y <= "XXX";
         end case;
      end process;
   end Behavioural;
            
