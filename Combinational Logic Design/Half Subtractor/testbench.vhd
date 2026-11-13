library IEEE;
use IEEE.std_logic_1164.all;

entity tb_Half_Subtractor is
end tb_Half_Subtractor;

architecture Simulation of tb_Half_Subtractor is
   signal A: STD_LOGIC:= '0';
   signal B: STD_LOGIC:= '0';
   signal Diff: STD_LOGIC;
   signal Borrow: STD_LOGIC;
begin
   DUT: entity work.Half_Subtractor 
      port map(
         A => A,
         B => B,
         Diff => Diff,
         Borrow => Borrow
      );
   stimulus: process
   begin
      A <= '0'; B <= '0';
      wait for 10 ns;
      
      A <= '0'; B <= '1';
      wait for 10 ns;
      
      A <= '1'; B <= '0';
      wait for 10 ns;
      
      A <= '1'; B <= '1';
      wait for 10 ns;
      
      wait;
   
   end process;
   
end Simulation;
