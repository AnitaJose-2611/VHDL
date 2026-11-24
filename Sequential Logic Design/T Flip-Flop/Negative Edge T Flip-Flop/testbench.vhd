library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_t_flipflop is
end tb_t_flipflop;

architecture Simulation of tb_t_flipflop is
   signal clk : STD_LOGIC := '0';
   signal T : STD_LOGIC:= '0';
   signal Q : STD_LOGIC;
   signal QBAR : STD_LOGIC;
begin
   DUT: entity work.t_flipflop
      port map(
         clk => clk,
         T => T,
         Q => Q,
         QBAR => QBAR
      );
   -- Clock generation: 10 ns period
   clk <= not clk after 5 ns;
   -- Stimulus
   stimulus: process
   begin
      -- Condition 1: Hold
      T <= '0';
      wait for 10 ns;

      -- Condition 2: Toggle
      T <= '1';
      wait for 10 ns;

      -- Condition 3: Hold
      T <= '0';
      wait for 10 ns;

      -- Condition 4: Toggle
      T <= '1';
      wait for 10 ns;

      -- Condition 5: Toggle
      T <= '0';
      wait for 10 ns;

      wait;
   end process;

end Simulation;

