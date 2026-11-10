library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_OR_GATE is
end tb_OR_GATE;

architecture Simulation of tb_OR_GATE is
   signal A: STD_LOGIC:= '0';
   signal B: STD_LOGIC:= '0';
   SIGNAL Y: STD_LOGIC;

begin
   DUT: entity work.OR_GATE
      port map(
         A => A,
         B => B,
         Y => Y
      );
   stimulus: process
   begin
      A <= '0';
      B <= '0';
      wait for 10 ns;
         
      A <= '0';
      B <= '1';
      wait for 10 ns;
         
      A <= '1';
      B <= '0';
      wait for 10 ns;
         
      A <= '1';
      B <= '1';
      wait for 10 ns;
        
      wait;
   end process;

end Simulation;
