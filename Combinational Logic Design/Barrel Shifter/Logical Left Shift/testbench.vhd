
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Logical_Left_Shifter_TB is
end Logical_Left_Shifter_TB;

architecture Behavioral of Logical_Left_Shifter_TB is
   signal A      : STD_LOGIC_VECTOR(7 downto 0);
   signal SHAMT  : STD_LOGIC_VECTOR(2 downto 0);
   signal RESULT : STD_LOGIC_VECTOR(7 downto 0);
begin
   DUT: entity work.Logical_Left_Shifter
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

      SHAMT <= "000";
      wait for 10 ns;

      SHAMT <= "000";
      wait for 10 ns;

      SHAMT <= "000";
      wait for 10 ns;

      SHAMT <= "000";
      wait for 10 ns;

      SHAMT <= "000";
      wait for 10 ns;

      SHAMT <= "000";
      wait for 10 ns;

      SHAMT <= "000";
      wait for 10 ns;
      
      wait;
    
   end process;

end Behavioral;
