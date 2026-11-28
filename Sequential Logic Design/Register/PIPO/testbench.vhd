library IEEE;
use IEEE.std_logic_1164.all;

entity tb_pipo is
end tb_pipo;

architecture Simulation of tb_pipo is
   signal clk: std_logic:= '0';
   signal rst: std_logic:= '0';
   signal D: std_logic_vector:= "0000";
   signal Q: std_logic_vector;
begin
   DUT: entity work.pipo 
      port map(
         clk => clk,
         rst => rst,
         D => D,
         Q => Q
      );
   stimulus: process
   begin
      D <= 1010;
      wait for 10 ns;
      D <= 1100;
      wait for 10 ns;
      D <= 1011;
      wait for 10 ns;
      D <= "1111";
      wait for 10 ns;
      
      wait;
   end process;
end Simulation;
