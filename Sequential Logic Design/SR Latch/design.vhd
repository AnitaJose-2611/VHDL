library IEEE;
use IEEE.std_logic_1164.all;

entity SR_Latch is
   port(
      S: in std_logic;
      R: in std_logic;
      Q: out std_logic;
      QBAR: out std_logic
   );
end SR_Latch;

architecture Behavioural of SR_Latch is
signal Q_INT: std_logic:= '0';
signal QBAR_INT: std_logic:= '1';
begin
   process(S, R)
   begin
      if S = '0' and R = '0' then
         Q_INT <= '1';
         QBAR_INT <= '0';
      elsif S = '0' and R = '1' then
         Q_INT <= '0';
         QBAR_INT <= '1';
      elsif S = '1' and R = '0' then
         Q_INT <= '1';
         QBAR_INT <= '0';
      else
         Q_INT <= '0';
         QBAR_INT <= '0';
      end if;
   end process;
end Behavioural;
