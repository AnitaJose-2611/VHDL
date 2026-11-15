library IEEE;
use IEEE.std_logic_1164.all;

entity Seven_Segment_Decoder is
   port(
      BCD: in std_logic_vector(3 downto 0);
      SEG: out std_logic_vector(7 downto 0)
   );
entity Seven_Segment_Decoder;

architecture Behavioural of Seven_Segment_Decoder is
begin
   case BCD is
      when "0000" => SEG <= 11111110;
      when "0001" => SEG <= 11111110;
      when "0010" => SEG <= 11111110;
      when "0011" => SEG <= 11111110;
      when "0100" => SEG <= 11111110;
      when "0101" => SEG <= 11111110;
      when "0110" => SEG <= 11111110;
      when "0111" => SEG <= 11111110;
      when "1000" => SEG <= 11111110;
      when "1001" => SEG <= 11111110;
      when "1010" => SEG <= 11111110;
      when "1011" => SEG <= 11111110;
      when "1100" => SEG <= 11111110;
      when "1101" => SEG <= 11111110;
      when "1110" => SEG <= 11111110;
      when "1111" => SEG <= 11111110;
      when others => SEG <=(others => '0');
   end case;
end Behavioural;
      
