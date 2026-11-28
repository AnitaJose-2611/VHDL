library IEEE;
use IEEE.std_logic_1164.all;

entity tb_reg_rst_en is
end tb_reg_rst_en;

architecture Simulation of tb_reg_rst_en is
   signal clk: std_logic:= '0';
   signal rst: std_logic:= '0';
   signal en: std_logic:= '0';
   signal D: std_logic_vector:= "0000";
   signal Q: std_logic_vector;
begin
   DUT: entity work.reg_rst_en 
      port map(
         clk => clk,
         rst => rst,
         en => en,
         D => D,
         Q => Q
      );
   clk <= not clk after 5 ns;
   stimulus: process
   begin
      rst <= '1';
      wait for 10 ns;
      rst <= '0';
      wait for 10 ns;
      
      en <= '1';
      D  <= "1010";
      wait for 10 ns;
      en <= '0';
      D  <= "0101"
      wait for 10 ns;
      en <= '1';
      D <= "1100";
      wait for 10 ns;
      
      wait;
   end process;
end Simulation;
