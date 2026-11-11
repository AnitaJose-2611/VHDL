library IEEE;
use IEEE.std_logic_1164.all;

entity Decoder_2to4 is
   port(
      D: in STD_LOGIC_VECTOR(1 downto 0);
      Y: out STD_LOGIC_VECTOR(3 downto 0);
   );
end Decoder_2to4;

architecture Behavioural of Decoder_2to4 is 
   begin
      process(D)
      begin
         case D is
            when "00" =>
               Y <= 0001;
            when "01" =>
               Y <= 0010;
            when "10" =>
               Y <= 0100;
            when "11" =>
               Y <= 1000;
         end case;
      end process;
   end Behavioural;
            
