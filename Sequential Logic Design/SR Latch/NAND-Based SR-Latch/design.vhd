library IEEE;
use IEEE.std_logic_1164.all;

entity SR_Latch_Nand is 
   port(
      S_BAR: in std_logic;
      R_BAR: in std_logic;
      Q: out std_logic;
      QBAR: out std_logic
   );
end SR_Latch_Nand;

architecture Behavioural of SR_Latch_Nand is
signal Q_INT: std_logic:= '0';
signal QBAR_INT: std_logic:='0';
begin
   process(S_BAR, R_BAR)
   begin
      if S_BAR = '1' and R_BAR = '1' then
         null;
      elsif S_BAR = '0' and R_BAR = '1' then
         Q_INT <= '1';
         QBAR_INT <= '0';
      elsif S_BAR = '1' and R_BAR = '0' then
         Q_INT <= '0';
         QBAR_INT <= '1';
      else
         Q_INT <= '1';
         QBAR_INT <= '1';
      end if;
   end process;
   Q <= Q_INT;
   QBAR <= QBAR_INT;
end Behavioural;
      
      
