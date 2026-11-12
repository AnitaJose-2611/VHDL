library IEEE;
use IEEE.std_logic_1164.all;

entity Comparator_1Bit is
   port(
      A: in STD_LOGIC;
      B: in STD_LOGIC;
      GT: out STD_LOGIC;
      LT: out STD_LOGIC;
      EQ: out STD_LOGIC
   );
end Comparator_1Bit;

architecture Behavioural of Comparator_1Bit is
   begin
      GT <= A AND (not B);
      LT <= (not A) AND B;
      EQ <= A XNOR B;
   end Behavioural;
   
