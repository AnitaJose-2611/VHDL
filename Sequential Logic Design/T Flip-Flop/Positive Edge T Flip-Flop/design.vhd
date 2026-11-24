library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity t_flipflop is
   port(
      clk: in  STD_LOGIC;
      T: in  STD_LOGIC;
      Q: out STD_LOGIC;
      QBAR: out STD_LOGIC
   );
end t_flipflop;

architecture Behavioral of t_flipflop is
signal Q_INT : STD_LOGIC := '0';
begin
   process(clk)
   begin
      if rising_edge(clk) then
         if T = '0' then
            null;
         elsif T = '1' then
            Q_INT <= not Q_INT;
         end if;
      end if;
   end process;
   Q <= Q_INT;
   QBAR <= not Q_INT;
end Behavioral;

