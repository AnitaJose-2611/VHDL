library IEEE;
use IEEE.std_logic_1164.all;

entity tb_D_Latch is
end tb_D_Latch;

architecture Simulation of tb_D_Latch is
   signal D: std_logic:= '0';
   signal EN: std_logic:= '0';
   signal Q: std_logic;
begin
   DUT: entity work.D_Latch
      port map(
         D => D,
         EN => EN,
         Q => Q
      );
   stimulus: process
   begin
      D <= '0'; EN <= '1';
      wait for 10 ns;
      
      D <= '1'; EN <= '1';
      wait for 10 ns;
      
      D <= '0'; EN <= '0';
      wait for 10 ns;
      
      D <= '0'; EN <= '0';
      wait for 10 ns;
      
      wait;
   
   end process;

end Simulation;
      
