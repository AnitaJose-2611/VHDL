library IEEE;
use IEEE.std_logic_1164.all;

entity Decoder_3to8 is
   port(
      D: in STD_LOGIC_VECTOR(2 downto 0);
      Y: out STD_LOGIC_VECTOR(7 downto 0)
   );
end Decoder_3to8;

architecture Behavioural of Decoder_3to8 is 
   begin
      with D select
         Y <= "00000001" when "000",
              "00000010" when "001",
              "00000100" when "010",
              "00001000" when "011",
              "00010000" when "100",
              "00100000" when "101",
              "01000000" when "110",
              "10000000" when "111",
              "00000000" when others;
   end Behavioural;
            
