library IEEE;
use IEEE.std_logic_1164.all;

entity XNOR_GATE is
   port(
      A: in STD_LOGIC;
      B: in STD_LOGIC;
      Y: out STD_LOGIC
   );
end XNOR_GATE;

architecture Behavioural of XNOR_GATE is
begin
   Y <= not(A xor B);
end Behavioural;
