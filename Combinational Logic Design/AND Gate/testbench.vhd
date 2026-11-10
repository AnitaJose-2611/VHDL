library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_AND_GATE is 
end tb_AND_GATE;

architecture Simulation of tb_AND_GATE is
  signal A: STD_LOGIC:= '0';
  signal B: STD_LOGIC:= '0';
  signal Y: STD_LOGIC;
begin
  DUT: entity work.AND_GATE
    A => A,
    B => B,
    Y => Y
  );
stimulus process
    begin
      A = '0';
      B = '0';
      wait for 10 ns;

      A = '0';
      B = '1';
      wait for 10 ns;

      A = '1';
      B = '0';
      wait for 10 ns;

      A = '1';
      B = '1';
      wait for 10 ns;

      wait;
  end process;
end Simulation;

