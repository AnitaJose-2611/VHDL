library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_Seven_Segment_Decoder is
end tb_Seven_Segment_Decoder;

architecture Simulation of tb_Seven_Segment_Decoder is
   signal BCD: std_logic_vector(3 downto 0):= "0000";
   signal SEG: std_logic_vector(7 downto 0);
begin
   DUT: entity work.Seven_Segment_Decoder
      port map (
         BCD => BCD,
         SEG => SEG
      );
   STIMULUS: process
   begin
      for bcd_value in 0 to 15 loop
         BCD <= std_logic_vector(to_unsigned(bcd_value, 4));
      end loop;
      
      wait;
    
   end process;

end Simulation;
