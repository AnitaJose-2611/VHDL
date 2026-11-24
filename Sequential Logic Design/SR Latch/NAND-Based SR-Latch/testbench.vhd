library IEEE;
use IEEE.std_logic_1164.all;

entity tb_SR_Latch_Nand is 
end tb_SR_Latch_Nand;

architecture Simulation of tb_SR_Latch_Nand is
   signal S_BAR: std_logic:= '1';
   signal R_BAR: std_logic:= '1';
   signal Q: std_logic;
   signal QBAR: std_logic;
begin
   DUT: entity work.SR_Latch_Nand
      port map(
         S_BAR => S_BAR,
         R_BAR => R_BAR,
         Q => Q,
         QBAR => QBAR
      );
   stimulus: process
   begin
      S_BAR <= '1';
      R_BAR <= '1';
      wait for 10 ns;
      
      S_BAR <= '0';
      R_BAR <= '1';
      wait for 10 ns;
      
      S_BAR <= '1';
      R_BAR <= '1';
      wait for 10 ns;
      
      S_BAR <= '1';
      R_BAR <= '0';
      wait for 10 ns;
      
      S_BAR <= '1';
      R_BAR <= '1';
      wait for 10 ns;
      
      S_BAR <= '0';
      R_BAR <= '0';
      wait for 10 ns;
      
      wait;
   
   end process;
   
end Simulation;
      
   
