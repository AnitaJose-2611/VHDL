library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_rca is
end tb_rca;

architecture Simulation of tb_rca is
   signal A: STD_LOGIC(3 downto 0):= (others => '0');
   signal B: STD_LOGIC(3 downto 0):= (others => '0');
   signal CIN: STD_LOGIC:= '0';
   signal S: STD_LOGIC(3 downto 0);
   signal COUT: STD_LOGIC;
begin
   DUT: entity work.rca
      port map(
         A => A,
         B => B,
         CIN => CIN,
         S => S,
         COUT => COUT
      );
   stimulus: process
   variable expected: unsigned(4 downto 0);
   begin
      for i in 0 to 15 loop
         for j in 0 to 15 loop
            for k in 0 to 15 loop
               A <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, 4);
               B <= STD_LOGIC_VECTOR(TO_UNSIGNED(j, 4);
               if k = '0' then
                  CIN <= '0';
               else 
                  CIN <= '1';
               end if;
               wait for 10 ns;
               expected:= RESIZE(unsigned(A),5) + RESIZE(unsigned(B),5) + to_unsigned(k, 5);
      
               assert ((COUT & SUM) = STD_LOGIC_VECTOR(expected))
                  report "RCA test failed"
                  severity error;
            end loop;
         end loop;
      end loop;
      report "All 512 Ripple Carry Adder tests completed."
            severity note;
      wait;
   end process;
end Simulation;
               
