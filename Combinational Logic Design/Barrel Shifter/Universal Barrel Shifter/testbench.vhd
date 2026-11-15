library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Barrel_Shifter_tb is
end Barrel_Shifter_tb;

architecture Behavioral of Barrel_Shifter_tb is
   signal A      : STD_LOGIC_VECTOR(7 downto 0);
   signal SHAMT  : STD_LOGIC_VECTOR(2 downto 0);
   signal MODE   : STD_LOGIC_VECTOR(2 downto 0);
   signal RESULT : STD_LOGIC_VECTOR(7 downto 0);
begin
   DUT: entity work.Barrel_Shifter
      port map (
        A => A,
        SHAMT => SHAMT,
        MODE => MODE,
        RESULT => RESULT
      );
   STIMULUS: process
   begin
      A <= "10110010";
      SHAMT <= "010";
      MODE <= "000";
      wait for 10 ns;

      MODE <= "001";
      wait for 10 ns;
      
      MODE <= "010";
      wait for 10 ns;

      MODE <= "011";
      wait for 10 ns;

      MODE <= "100";
      wait for 10 ns;

      MODE <= "101";
      wait for 10 ns;

      wait;

   end process;

end Behavioral;
