library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_sr_flipflop is
end tb_sr_flipflop;

architecture Behavioral of tb_sr_flipflop is
   signal clk  : STD_LOGIC := '0';
   signal S    : STD_LOGIC := '0';
   signal R    : STD_LOGIC := '0';
   signal Q    : STD_LOGIC;
   signal QBAR : STD_LOGIC;
begin
   DUT: entity work.sr_flipflop
      port map (
         clk  => CLK,
         S    => S,
         R    => R,
         Q    => Q,
         QBAR => QBAR
      );
   CLK <= not CLK after 5 ns;
   stimulus: process
   begin
      -- Initial hold
      S <= '0';
      R <= '0';
      wait for 10 ns;

      -- Set
      S <= '1';
      R <= '0';
      wait for 10 ns;

      -- Hold
      S <= '0';
      R <= '0';
      wait for 10 ns;

      -- Reset
      S <= '0';
      R <= '1';
      wait for 10 ns;

      -- Hold
      S <= '0';
      R <= '0';
      wait for 10 ns;

      -- Invalid
      S <= '1';
      R <= '1';
      wait for 10 ns;

      -- Return to hold
      S <= '0';
      R <= '0';
      wait for 10 ns;

      wait;

   end process;

end Behavioral;
