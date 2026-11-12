library IEEE;
use IEEE.std_logic_1164.all;

entity Half_Adder is
   port(
      A: in STD_LOGIC;
      B: in STD_LOGIC;
      Sum: out STD_LOGIC;
      Carry: out STD_LOGIC
   );
end Half_Adder;

architecture Behavioural of Half_Adder is
begin
   Sum <= A xor B;
   Carry <= A and B;
end Behavioural;
