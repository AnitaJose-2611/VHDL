library IEEE;
use IEEE.std_logic_1164.all;

entity tb_MUX2to1 is
end tb_MUX2to1;

architecture Simulation of tb_MUX_2to1 is
   signal I0: STD_LOGIC:= '0';
   signal I1: STD_LOGIC:= '0';
   signal S0: STD_LOGIC:= '0';
   signal Y: STD_LOGIC;
begin
   DUT: entity work.MUX_2to1 
      port map(
         I0 => I0,
         I1 => I1,
         S0 => S0,
         Y => Y
      );
   stimulus: process
   begin
      I0 <= '0';
      I1 <= '1';
      S0 <= '0';
      wait for 10 ns;
      
      I0 <= '0';
      I1 <= '1';
      S0 <= '1';
      wait for 10 ns;
      
      I0 <= '1';
      I1 <= '0';
      S0 <= '0';
      wait for 10 ns;
      
      I0 <= '1';
      I1 <= '0';
      S0 <= '1';
      wait for 10 ns;
      
      wait;
      
   end process;

end Simulation;
