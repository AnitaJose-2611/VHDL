library IEEE;
use IEEE.std_logic_1164.all;

entity tb_master_slave_jk is
end tb_master_slave_jk;

architecture Simulation of tb_master_slave_jk is
   signal clk: std_logic:= '0';
   signal J: std_logic:= '0';
   signal K: std_logic:= '0';
   signal Q: std_logic;
   signal QBAR:  std_logic;
begin
   DUT: entity work.master_slave_jk 
      port map(
         clk => clk,
         J => J,
         K => K,
         Q => Q,
         QBAR => QBAR
      );
   clk <= not clk after 5 ns;
   stimulus: process
   begin
      --Hold--
      J <= '0';
      K <= '0';
      wait for 10 ns;
      
      --Set--
      J <= '1';
      K <= '0';
      wait for 10 ns;
     
      --Reset--
      J <= '0';
      K <= '1';
      wait for 10 ns;

     --Toggle--
     J <= '1';
     K <= '1';
     wait for 10 ns;

     --Hold--
     J <= '0';
     K <= '0';
     wait for 10 ns;

     wait;
   end process;
end Simulation;


         
