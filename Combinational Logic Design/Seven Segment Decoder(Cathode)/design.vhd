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
      when "0000" => SEG <= "1111110";
      when "0001" => SEG <= "0110000";
      when "0010" => SEG <= "1101101";
      when "0011" => SEG <= "1111001";
      when "0100" => SEG <= "0110011";
      when "0101" => SEG <= "1011011";
      when "0110" => SEG <= "1011111";
      when "0111" => SEG <= "1110000";
      when "1000" => SEG <= "1111111";
      when "1001" => SEG <= "1111011";
      when others => SEG <=(others => '0');
   end case;
end Behavioural;
      
