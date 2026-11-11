library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity tb_DEMUX4to1 is
end tb_DEMUX4to1;

architecture Simulation of tb_DEMUX4to1 is
   signal I: STD_LOGIC:= '0';
   signal S: STD_LOGIC_VECTOR(2 downto 0):= "000";
   signal Y: STD_LOGIC_VECTOR(7 downto 0);
begin
   DUT: entity work.DEMUX_1to8
      port map(
         I => I,
         S => S,
         Y => Y
      );
   stimulus: process
   variable expected: STD_LOGIC_VECTOR(7 downto 0);
   begin
      for data_value in 0 to 1 loop
         if data_value = 0 then
            I <= '0';
         else
            I <= '1';
         end if;
         for select_value in 0 to 7 loop
            S <= std_logic_vector(to_unsigned(select_value, 3));
            wait for 10 ns;
            expected:= (others => '0');
            if data_value = 1 then
               expected(select_value):= '1';
            end if;
            assert Y = expected
               report "1:8 DEMUX output mismatch"
               severity error;
         end loop;
      end loop;
      report "1:8 DEMUX test completed successfully"
      severity note;
      
      wait;
      
   end process;
   
end Simulation;
            
