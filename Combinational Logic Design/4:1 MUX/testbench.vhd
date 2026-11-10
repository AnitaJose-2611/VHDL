-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity tb_MUX_4to1 is
end tb_MUX_4to1;

architecture Simulation of tb_MUX_4to1 is
   signal I0: STD_LOGIC:= '0';
   signal I1: STD_LOGIC:= '0';
   signal I2: STD_LOGIC:= '0';
   signal I3: STD_LOGIC:= '0';
   signal S0: STD_LOGIC:= '0';
   signal S1: STD_LOGIC:= '0';
   signal Y: STD_LOGIC;
begin
   DUT: entity work.MUX_4to1
      port map(
         I0 => I0,
         I1 => I1,
         I2 => I2,
         I3 => I3,
         S0 => S0,
         S1 => S1,
         Y => Y
      );
   stimulus: process
   begin
      I0 <= '0';
      I1 <= '1';
      I2 <= '0';
      I3 <= '1';
      S0 <= '0';
      S1 <= '0';
      wait for 10 ns;
      
      I0 <= '0';
      I1 <= '1';
      I2 <= '0';
      I3 <= '1';
      S0 <= '0';
      S1 <= '1';
      wait for 10 ns;
      
      I0 <= '0';
      I1 <= '1';
      I2 <= '0';
      I3 <= '1';
      S0 <= '1';
      S1 <= '0';
      wait for 10 ns;
      
      I0 <= '0';
      I1 <= '1';
      I2 <= '0';
      I3 <= '1';
      S0 <= '1';
      S1 <= '1';
      wait for 10 ns;
      
      wait;
   end process;
   
end Simulation;
