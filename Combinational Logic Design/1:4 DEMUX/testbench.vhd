library IEEE;
use IEEE.std_logic_1164.all;

entity tb_DEMUX1to4 is
end tb_DEMUX1to4;

architecture Simulation of tb_DEMUX1to4 is 
   signal I0: STD_LOGIC:= '0';
   signal S0: STD_LOGIC:= '0';
   signal S1: STD_LOGIC:= '0';
   signal Y0: STD_LOGIC;
   signal Y1: STD_LOGIC;
   signal Y2: STD_LOGIC;
   signal Y3: STD_LOGIC;
begin
   DUT: entity work.DEMUX_1to4
      port map(
         I0 => I0,
         S0 => S0,
         S1 => S1,
         Y0 => Y0,
         Y1 => Y1,
         Y2 => Y2,
         Y3 => Y3
      );
   process
   begin
      I0 <= '1';
      S0 <= '0';
      S1 <= '0';
      wait for 10 ns;
         
      I0 <= '1';
      S0 <= '0';
      S1 <= '1';
      wait for 10 ns;
        
      I0 <= '1';
      S0 <= '1';
      S1 <= '0';
      wait for 10 ns;
         
      I0 <= '1';
      S0 <= '1';
      S1 <= '1';
      wait for 10 ns;
         
      wait;
      
   end process;
   
end Simulation;
