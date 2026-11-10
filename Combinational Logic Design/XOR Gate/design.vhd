library IEEE;
use IEEE.std_logic_1164.all;

entity XOR_GATE is
   port(
      A: in STD_LOGIC;
      B: in STD_LOGIC;
      Y: out STD_LOGIC
   );
end XOR_GATE;

architecture Behavioural of XOR_GATE is 
begin
   Y <= A xor B;
end Behavioural;
