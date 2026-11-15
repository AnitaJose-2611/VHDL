library IEEE;
use IEEE.std_logic_1164.all;

entity tb_SR_Latch is
end tb_SR_Latch;

architecture Simulation of tb_SR_Latch is
   signal S: std_logic:= '0';
   signal R: std_logic:= '0';
   signal Q: std_logic;
   signal QBAR: std_logic;
begin
   DUT: entity work.SR_Latch
      port map(
         S => S,
         R => R,
         Q => Q,
         QBAR => QBAR
      );
   stimulus: process
   begin
      --Hold--
      S <= '0'; R <= '0';
      wait for 10 ns;
      
      --Set
      S <= '1'; R <= '0';
      wait for 10 ns;
      
      --Hold--
      S <= '0'; R <= '0';
      wait for 10 ns;
      
      --Reset
      S <= '0'; R <= '1';
      wait for 10 ns;
      
      --Hold--
      S <= '0'; R <= '0';
      wait for 10 ns;
      
      --Invalid--
      S <= '1'; R <= '1';
      wait for 10 ns;
      
      --Hold--
      S <= '0'; R <= '0';
      wait for 10 ns;
      
      wait;
   
   end process;

end Simulation;
      
