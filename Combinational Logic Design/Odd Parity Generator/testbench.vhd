library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_Odd_Parity_Generator is
end tb_Odd_Parity_Generator;

architecture Simulation of tb_Odd_Parity_Generator is 
   signal DATA: std_logic_vector(3 downto 0):= "0000";
   signal PARITY: std_logic;
begin
   DUT: entity work.Odd_Parity_Generator
      port map(
         DATA => DATA,
         PARITY => PARITY
      );
   stimulus: process
   begin
      for data_value in 0 to 15 loop
         DATA <= std_logic_vector(to_unsigned(data_value, 4));
         wait for 10 ns;
      end loop;
      wait;
   end process;
end Simulation;
