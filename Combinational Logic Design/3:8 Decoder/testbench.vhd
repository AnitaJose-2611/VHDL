library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_Decoder_3to8 is
end tb_Decoder_3to8;

architecture Simulation of tb_Decoder_3to8 is 
   signal D: STD_LOGIC_VECTOR(2 downto 0):= "000";
   signal Y: STD_LOGIC_VECTOR(7 downto 0);
begin
   DUT: entity work.Decoder_3to8
      port map(
         D => D,
         Y => Y
      );
   stimulus: process
   variable expected: std_logic_vector(7 downto 0);
      begin
      for i in 0 to 7 loop
         D <= std_logic_vector(to_unsigned(i, 3));
         expected:= (others => '0');
         expected(i):= '1';
         
         wait for 10 ns;
         
         assert Y = expected
            report "3:8 Decoder mismatch"
            severity error;
         
         report "3:8 Decoder test completed successfully"
         severity note;
     
      end loop;
      
      wait;
         
      end process;
   end Simulation;
      
