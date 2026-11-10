library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_GATE is
  port(
    A: in STD_LOGIC;
    B: in STD_LOGIC;
    Y: out STD_LOGIC
  );

architecture Behavioural of AND_GATE is 
  begin
    Y <= A AND B;
end Behavioural;
