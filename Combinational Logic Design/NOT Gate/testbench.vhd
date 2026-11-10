library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_NOT_GATE is
end tb_NOT_GATE;

architecture Simulation of tb_NOT_GATE is
  signal A: STD_LOGIC:= '0';
  signal Y: STD_LOGIC;
begin
  DUT: entity work.NOT_GATE
    port(
      A => A,
      Y => Y
    );
    stimulus: process
      begin
        A <= '0';
        wait for 10 ns;
        B <= '1';
        wait for 10 ns;

        wait;

    end process;

end Simulation;
