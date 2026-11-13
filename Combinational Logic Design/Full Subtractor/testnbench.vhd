library IEEE;
use IEEE.std_logic_1164.all;

entity tb_Full_Subtractor is
end tb_Full_Subtractor;

architecture Simulation of tb_Full_Subtractor is
   signal A: STD_LOGIC:= '0';
   signal Bin: STD_LOGIC:= '0';
   signal C: STD_LOGIC:= '0';
   signal Diff: STD_LOGIC;
   signal Bout: STD_LOGIC;
begin
   DUT: entity work.Full_Subtractor
      port map(
         A => A,
         Bin => Bin,
         C => C,
         Diff => Diff,
         Bout => Bout
      );
   stimulus: process
   begin
      A <= '0'; Bin <= '0'; C <= '0';
      wait for 10 ns;
      
      A <= '0'; Bin <= '0'; C <= '1';
      wait for 10 ns;
      
      A <= '0'; Bin <= '1'; C <= '0';
      wait for 10 ns;
      
      A <= '0'; Bin <= '1'; C <= '1';
      wait for 10 ns;
      
      A <= '1'; Bin <= '0'; C <= '0';
      wait for 10 ns;
      
      A <= '1'; Bin <= '0'; C <= '1';
      wait for 10 ns;
      
      A <= '1'; Bin <= '1'; C <= '0';
      wait for 10 ns;
      
      A <= '1'; Bin <= '1'; C <= '1';
      wait for 10 ns;
      
      wait;
   
   end process;
   
end Simulation;
