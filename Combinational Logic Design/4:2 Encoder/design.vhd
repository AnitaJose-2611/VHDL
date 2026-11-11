library IEEE;
use IEEE.std_logic_1164.all;

entity Encoder_4to2 is
   port(
      D: in STD_LOGIC_VECTOR(3 downto 0);
      Y: out STD_LOGIC_VECTOR(1 downto 0);
   );
end Encoder_4to2;

architecture Behavioural of Encoder_4to2 is
   begin
      Y(0) <= D(1) OR D(3);
      Y(1) <= D(2) OR D(3);
end Behavioural;      
