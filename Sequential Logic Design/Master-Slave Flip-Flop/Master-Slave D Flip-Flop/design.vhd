
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity master_slave_dff is
   port(
      CLK: in  STD_LOGIC;
      D: in  STD_LOGIC;
      Q: out STD_LOGIC;
      QBAR: out STD_LOGIC
   );
end master_slave_dff;

architecture Behavioral of master_slave_dff is
signal MASTER_Q : STD_LOGIC := '0';
signal SLAVE_Q  : STD_LOGIC := '0';
begin
   -- Master latch: transparent when CLK = 0
   process(CLK, D)
   begin
      if CLK = '0' then
         MASTER_Q <= D;
      end if;
   end process;

   -- Slave latch: transparent when CLK = 1
   process(CLK, MASTER_Q)
   begin
      if CLK = '1' then
         SLAVE_Q <= MASTER_Q;
      end if;
   end process;
   Q <= SLAVE_Q;
   QBAR <= not SLAVE_Q;
end Behavioral;

