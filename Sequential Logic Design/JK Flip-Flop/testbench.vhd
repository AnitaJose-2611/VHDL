library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_jk_flipflop_pos is
end tb_jk_flipflop_pos;

architecture Behavioral of tb_jk_flipflop_pos is
   signal clk  : STD_LOGIC := '0';
   signal J    : STD_LOGIC := '0';
   signal K    : STD_LOGIC := '0';
   signal Q    : STD_LOGIC;
   signal QBAR : STD_LOGIC;
begin
   DUT: entity work.jk_flipflop_pos
      port map (
         clk  => CLK,
         J    => J,
         K    => K,
         Q    => Q,
         QBAR => QBAR
      );
   CLK <= not CLK after 5 ns;
   stimulus: process
   begin
      -- Initial hold
      J <= '0';
      K <= '0';
      wait for 10 ns;

      -- Set
      J <= '0';
      K <= '1';
      wait for 10 ns;

      -- Hold
      J <= '0';
      K <= '0';
      wait for 10 ns;

      -- Reset
      J <= '1';
      K <= '0';
      wait for 10 ns;

      -- Hold
      J <= '0';
      K <= '0';
      wait for 10 ns;

      -- Invalid
      J <= '1';
      K <= '1';
      wait for 10 ns;

      -- Return to hold
      J <= '0';
      K <= '0';
      wait for 10 ns;

      wait;

   end process;

end Behavioral;

