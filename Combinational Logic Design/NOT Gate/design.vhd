library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT_GATE is
  port(
    A: in STD_LOGIC;
    B: in STD_LOGIC;
    Y: out STD_LOGIC
  );
end NOT_GATE;

architecture Behavioural of NOT_GATE is 
  begin
    Y <= A AND B;
  end Behavioural;
  
