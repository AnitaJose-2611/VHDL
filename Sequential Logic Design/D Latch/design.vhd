library IEEE;
use IEEE.std_logic_1164.all;

entity D_Latch is
   port(
      D: in std_logic;
      EN: in std_logic;
      Q: out std_logic
   );
end D_Latch;

architecture Behavioural of D_Latch is 
begin
   process(D, EN)
   begin
      if(EN = '1') then
         Q <= D;
      end if;
   end process;
end Behavioural;
