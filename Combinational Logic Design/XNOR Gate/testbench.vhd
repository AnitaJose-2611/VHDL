library IEEE;
use IEEE.std_logic_1164.all;

entity tb_XNOR_GATE is
end tb_XNOR_GATE;

architecture Simulation of tb_XNOR_GATE is
   signal A: STD_LOGIC:= '0';
   signal B: STD_LOGIC:= '0';
   signal Y: STD_LOGIC;
begin
   DUT: entity work.XNOR_GATE
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
