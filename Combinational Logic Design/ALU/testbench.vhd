library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_alu is
end tb_alu;

architecture Simulation of tb_alu is
   signal A      : STD_LOGIC_VECTOR(3 downto 0);
   signal B      : STD_LOGIC_VECTOR(3 downto 0);
   signal OP     : STD_LOGIC_VECTOR(2 downto 0);
   signal RESULT : STD_LOGIC_VECTOR(3 downto 0);
   signal CARRY : STD_LOGIC;
   signal ZERO   : STD_LOGIC;
begin
   DUT: entity work.alu
      port map (
         A => A,
         B => B,
         OP => OP,
         RESULT => RESULT,
         CARRY => CARRY,
         ZERO => ZERO
      );
   STIMULUS: process
   begin
      A <= "0101";
      B <= "0011";

      -- Addition: 5 + 3 = 8
      OP <= "000";
      wait for 10 ns;

      -- Subtraction: 5 - 3 = 2
      OP <= "001";
      wait for 10 ns;

      -- AND
      OP <= "010";
      wait for 10 ns;

      -- OR
      OP <= "011";
      wait for 10 ns;

      -- XOR
      OP <= "100";
      wait for 10 ns;

      -- NOT A
      OP <= "101";
      wait for 10 ns;

      -- Left shift
      OP <= "110";
      wait for 10 ns;

      -- Right shift
      OP <= "111";
      wait for 10 ns;

      -- Zero result test: 5 - 5 = 0
      A <= "0101";
      B <= "0101";
      OP <= "001";
      wait for 10 ns;

      -- Borrow test: 3 - 5
      A <= "0011";
      B <= "0101";
      OP <= "001";
      wait for 10 ns;

      wait;

   end process;

end Simulation;

