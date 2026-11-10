library IEEE;
use IEEE.std_logic_1164.all;

entity NAND_GATE is
   port(
      A: in STD_LOGIC;
      B: in STD_LOGIC;
      Y: out STD_LOGIC
   );
end NAND_GATE;

architecture Behavioural of NAND_GATE is
begin
   Y <= not(A and B);
end Behavioural;
