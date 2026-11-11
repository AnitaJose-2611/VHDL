library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_Decoder_2to4 is
end tb_Decoder_2to4;

architecture Simulation of tb_Decoder_2to4 is
   signal D: STD_LOGIC_VECTOR(1 downto 0):= "00";
   signal Y: STD_LOGIC_VECTOR(3 downto 0);
   begin
      DUT: entity work.Decoder_2to4
         port map(
            D => D,
            Y => Y
         );
      stimulus: process
      begin
         D <= "00";
         wait for 10 ns;
         assert Y = "0001"
            report "2:4 Decoder mismatch"
            severity error;
         
         D <= "01";
         wait for 10 ns;
         assert Y = "0010"
            report "2:4 Decoder mismatch"
            severity error;
         
         D <= "10";
         wait for 10 ns;
         assert Y = "0100"
            report "2:4 Decoder mismatch"
            severity error;
         
         D <= "11";
         wait for 10 ns;
         assert Y = "1000"
            report "2:4 Decoder mismatch"
            severity error;
         
         
         report "2:4 Decoder test completed successfully"
         severity note;
         
         wait;
         
      end process;
      
   end Simulation;
         
