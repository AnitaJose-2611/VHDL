library IEEE;
use IEEE.std_logic_1164.all;

entity tb_Encoder_4to2 is
end tb_Encoder_4to2;

architecture Simulation of tb_Encoder_4to2 is
   signal D: STD_LOGIC_VECTOR(3 downto 0):= "0000";
   signal Y: STD_LOGIC_VECTOR(1 downto 0);
begin
   DUT: entity work.Encoder_4to2
      port map(
         D => D,
         Y => Y
      );
   stimulus: process
   begin
      D <= "0001";
      wait for 10 ns;
      assert Y = "00";
         report "Encoder failed at D0"
         severity error;
      
      D <= "0010";
      wait for 10 ns;
      assert Y = "01";
         report "Encoder failed at D1"
         severity error;
      
      D <= "0100";
      wait for 10 ns;
      assert Y = "10";
         report "Encoder failed at D2"
         severity error;
         
      D <= "1000";
      wait for 10 ns;
      assert Y = "11";
         report "Encoder failed at D3"
         severity error;
         
      report "4:2 Encoder test completed successfully"
            severity note;
      
      wait;
      
   end process;

end Simulation;
         
