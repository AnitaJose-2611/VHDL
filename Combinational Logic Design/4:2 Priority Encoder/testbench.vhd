library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_PriorityEncoder_4to2 is
end tb_PriorityEncoder_4to2;

architecture Simulation of tb_PriorityEncoder_4to2 is
   signal D: STD_LOGIC_VECTOR(1 downto 0):= "00";
   signal Y: STD_LOGIC_VECTOR(3 downto 0);
   signal VALID: STD_LOGIC;
begin
   DUT: entity work.PriorityEncoder_4to2 
      port map(
         D => D,
         Y => Y
      );
   stimulus: process
   begin
      D <= "0000";
      wait for 10 ns;

      D <= "0001";
      wait for 10 ns;

      D <= "0010";
      wait for 10 ns;

      D <= "0011";
      wait for 10 ns;
      
      D <= "0100";
      wait for 10 ns;

      D <= "0101";
      wait for 10 ns;
      
      D <= "0110";
      wait for 10 ns;

      D <= "0111";
      wait for 10 ns;

      D <= "1000";
      wait for 10 ns;

      D <= "1001";
      wait for 10 ns;

      D <= "1010";
      wait for 10 ns;

      D <= "1011";
      wait for 10 ns;

      D <= "1100";
      wait for 10 ns;

      D <= "1101";
      wait for 10 ns;

      D <= "1110";
      wait for 10 ns;
      
      D <= "1111";
      wait for 10 ns;

      assert false
         report "4:2 Priority Encoder Test Completed"
         severity note;

      wait;
      
   end process;

end Behavioral;

      
