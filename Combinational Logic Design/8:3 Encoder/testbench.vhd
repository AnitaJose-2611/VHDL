library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_Encoder_8to3 is
end tb_Encoder_8to3;

architecture Simulation of tb_Encoder_8to3 is
   signal D: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
   signal Y: STD_LOGIC_VECTOR(2 downto 0);
begin
   DUT: entity work.Encoder_8to3
      port map(
         D => D,
         Y => Y
      );
   stimulus: process
   variable input_pattern: STD_LOGIC_VECTOR(7 downto 0);
   variable expected: STD_LOGIC_VECTOR(2 downto 0);
   begin
      for input_value in 0 to 7 loop
         input_pattern:= (others => '0');
         input_pattern(input_value):= '1';
         D <= input_pattern;
         expected:= std_logic_vector(to_unsigned(input_value, 3));
         wait for 10 ns;
         assert Y = expected;
            report "8:3 Encoder mismatch"
            severity error;
      end loop;
      
      D <= "00000000";
      wait for 10 ns;
      assert Y = "XXX";
         report "No active input test failed"
         severity note;
         
      D <= "01100100";
      wait for 10 ns;
      assert Y = "XXX";
         report "Multiple input testcase failed"
         severity note;
      
      report "8:3 Encoder test completed successfully"
      severity note;
      
      wait;
      
   end process;

end Simulation;
      
