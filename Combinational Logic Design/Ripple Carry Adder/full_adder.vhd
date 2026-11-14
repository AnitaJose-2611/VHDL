library IEEE;
use IEEE.std_logic_1164.all;

entity Full_Adder is
   port(
      A: in STD_LOGIC;
      B: in STD_LOGIC;
      Cin: in STD_LOGIC;
      Sum: out STD_LOGIC;
      Cout: out STD_LOGIC
   );
end Full_Adder;

architecture Behavioural of Full_Adder is
begin
   Sum <= A XOR B XOR Cin;
   Cout <= (A AND B) OR (B AND Cin) OR (Cin AND A);
end Behavioural;
