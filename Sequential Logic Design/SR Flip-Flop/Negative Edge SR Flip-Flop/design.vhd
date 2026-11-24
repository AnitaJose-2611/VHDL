library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sr_flipflop_neg is
   Port(
      clk: in  STD_LOGIC;
      S: in  STD_LOGIC;
      R: in  STD_LOGIC;
      Q: out STD_LOGIC;
      QBAR: out STD_LOGIC
   );
end sr_flipflop_neg;

architecture Behavioral of sr_flipflop_neg is
signal Q_INT : STD_LOGIC := '0';
begin
   process(clk)
   begin
      if falling_edge(CLK) then
         if S = '1' and R = '0' then
            Q_INT <= '1';
         elsif S = '0' and R = '1' then
            Q_INT <= '0';
         elsif S = '0' and R = '0' then
            null;
         else
            Q_INT <= 'X';
         end if;
      end if;
   end process;
   Q <= Q_INT;
   QBAR <= not Q_INT;
end Behavioral;

