library IEEE;
use IEEE.std_logic_1164.all;

entity tb_DEMUX1to2 is 
end tb_DEMUX1to2;

architecture Behavioural of tb_DEMUX1to2 is
   signal I0: STD_LOGIC:= '0';
   signal S0: STD_LOGIC:= '0';
   signal Y0: STD_LOGIC;
   signal Y1: STD_LOGIC;
begin
   DUT: entity work.DEMUX1to2
      port map(
         I0 => I0,
         S0 => S0,
         Y0 => Y0,
         Y1 => Y1
      );
   process
   begin
      I0 <= '1';
      S0 <= '0';
      wait for 10 ns;
      
      I0 <= '1';
      S0 <= '1';
      wait for 10 ns;
      
      wait;
      
   end process;
 
end Behavioural;
