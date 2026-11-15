library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_Odd_Parity_Checker is
end tb_Odd_Parity_Checker;

architecture Simulation of tb_Odd_Parity_Checker is
   signal DATA      : STD_LOGIC_VECTOR(3 downto 0);
   signal PARITY_IN : STD_LOGIC;
   signal ERROR     : STD_LOGIC;
begin
   DUT: entity work.Odd_Parity_Checker
      port map (
         DATA      => DATA,
         PARITY_IN => PARITY_IN,
         ERROR     => ERROR
      );
   STIMULUS: process
   begin
      -- Correct odd parity
      DATA <= "1011";
      PARITY_IN <= '1';
      wait for 10 ns;

      -- Incorrect parity bit
      DATA <= "1011";
      PARITY_IN <= '0';
      wait for 10 ns;

      -- Correct odd parity
      DATA <= "1010";
      PARITY_IN <= '0';
      wait for 10 ns;

      -- Corrupted data
      DATA <= "1001";
      PARITY_IN <= '0';
      wait for 10 ns;

      wait;

   end process;

end Simulation;

