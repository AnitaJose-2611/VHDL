library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Logical_Left_Shifter is
   Port (
      A: in  STD_LOGIC_VECTOR(7 downto 0);
      SHAMT: in  STD_LOGIC_VECTOR(2 downto 0);
      RESULT: out STD_LOGIC_VECTOR(7 downto 0)
   );
end Logical_Left_Shifter;

architecture Behavioral of Logical_Left_Shifter is
begin
  RESULT <= STD_LOGIC_VECTOR(shift_left(unsigned(A), to_integer(unsigned(SHAMT))));
end Behavioral;
