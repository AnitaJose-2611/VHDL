library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity logical_right_shift is
   Port (
      A: in  STD_LOGIC_VECTOR(7 downto 0);
      SHAMT: in  STD_LOGIC_VECTOR(2 downto 0);
      RESULT: out STD_LOGIC_VECTOR(7 downto 0)
   );
end logical_right_shift;

architecture Behavioral of logical_right_shift is
begin
  RESULT <= STD_LOGIC_VECTOR(shift_right(unsigned(A), to_integer(unsigned(SHAMT))));
end Behavioral;
