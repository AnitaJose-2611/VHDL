library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOR_GATE is
  port(
    A: in STD_LOGIC;
    B: in STD_LOGIC;
    Y: out STD_LOGIC
  );

architecture Behavioural of NOR_GATE is
  begin
    Y <= NOT(A OR B);
end Behavioural;
