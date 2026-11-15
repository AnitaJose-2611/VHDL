library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_logical_left_shift is
end tb_logical_left_shift;

architecture Simulation of tb_logical_left_shift is
   signal A      : STD_LOGIC_VECTOR(7 downto 0);
   signal SHAMT  : STD_LOGIC_VECTOR(2 downto 0);
   signal RESULT : STD_LOGIC_VECTOR(7 downto 0);
begin
   DUT: entity work.logical_left_shift
      port map (
         A => A,
         SHAMT => SHAMT,
         RESULT => RESULT
      );
   STIMULUS: process
   begin
      A <= "10110010";
     
      SHAMT <= "000";
      wait for 10 ns;

      SHAMT <= "001";
      wait for 10 ns;

      SHAMT <= "010";
      wait for 10 ns;

      SHAMT <= "011";
      wait for 10 ns;

      SHAMT <= "100";
      wait for 10 ns;

      SHAMT <= "101";
      wait for 10 ns;

      SHAMT <= "110";
      wait for 10 ns;

      SHAMT <= "111";
      wait for 10 ns;
      
      wait;
    
   end process;

end Simulation;
