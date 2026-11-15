library IEEE;
use IEEE.std_logic_1164.all;

entity tb_D_Flip_Flop is
end tb_D_Flip_Flop;

architecture Simulation of tb_D_Flip_Flop is
   signal CLK: std_logic:= '0';
   signal D: std_logic:= '0';
   signal Q: std_logic;
begin
   DUT: entity work.D_Flip_Flop
      port map(
         CLK => CLK,
         D => D,
         Q => Q
      );
   clk <= not clk after 5 ns;
   stimulus: process
   begin
      D <= '0';
      wait for 10 ns;
      
      D <= '0';
      wait for 10 ns;
      
      D <= '0';
      wait for 10 ns;
      
      D <= '0';
      wait for 10 ns;
      
      wait;
   
   end process;

end Simulation;
      
