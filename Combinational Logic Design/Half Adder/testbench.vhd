library IEEE;
use IEEE.std_logic_1164.all;

entity tb_Half_Adder is
end tb_Half_Adder;

architecture Simulation of tb_Half_Adder is
   signal A: STD_LOGIC:= '0';
   signal B: STD_LOGIC:= '0';
   signal Sum: STD_LOGIC;
   signal Carry: STD_LOGIC;
begin
   DUT: entity work.Half_Adder
      port map(
         A => A,
         B => B,
         Sum => sum,
         Carry => carry
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
