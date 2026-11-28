
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_master_slave_dff is
end tb_master_slave_dff;

architecture Simulation of tb_master_slave_dff is
   signal CLK  : STD_LOGIC := '0';
   signal D    : STD_LOGIC := '0';
   signal Q    : STD_LOGIC;
   signal QBAR : STD_LOGIC;
begin
   DUT: entity work.master_slave_dff
      port map(
         CLK => CLK,
         D => D,
         Q => Q,
         QBAR => QBAR
      );
   -- Clock generation: 10 ns period
   CLK <= not CLK after 5 ns;
   process
   begin
      -- First data
      D <= '1';
      wait for 10 ns;

      -- Change data
      D <= '0';
      wait for 10 ns;

      -- Change data again
      D <= '1';
      wait for 10 ns;

      -- Change data
      D <= '0';
      wait for 10 ns;

      -- Keep data HIGH
      D <= '1';
      wait for 20 ns;

      wait;
   end process;

end Simulation;

