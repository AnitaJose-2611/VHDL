library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jk_flipflop_pos is
   Port(
      clk: in  STD_LOGIC;
      J: in  STD_LOGIC;
      K: in  STD_LOGIC;
      Q: out STD_LOGIC;
      QBAR: out STD_LOGIC
   );
end jk_flipflop_pos;

architecture Behavioral of jk_flipflop_pos is
signal Q_INT : STD_LOGIC := '0';
begin
   process(clk)
   begin
      if rising_edge(CLK) then
         if J = '0' and K = '0' then
            null;
         elsif J = '0' and K = '1' then
            Q_INT <= '0';
         elsif J = '1' and K = '0' then
            Q_INT <= '1';
         elsif J = '1' and K = '1' then
            Q_INT <= not Q_INT;
         end if;
      end if;
   end process;
   Q <= Q_INT;
   QBAR <= not Q_INT;
end Behavioral;


