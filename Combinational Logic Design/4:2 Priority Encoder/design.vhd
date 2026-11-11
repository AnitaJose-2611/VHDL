library IEEE;
use IEEE.std_logic_1164.all;

entity PriorityEncoder_4to2 is
   port(
      D: in STD_LOGIC(1 downto 0);
      Y: out STD_LOGIC(3 downto 0);
      VALID: out STD_LOGIC
   );
end PriorityEncoder_4to2;

architecture Behavioural of PriorityEncoder_4to2 is
   begin
      process(D)
      begin
         if D(3) = '1' then
            Y <= "00";
            VALID <= '1';
         elsif D(2) = '1' then
            Y <= "01";
            VALID <= '1';
         elsif D(1) = '1' then
            Y <= "10";
            VALID <= '1';
         elsif D(0) = '1' then
            Y <= "11";
            VALID <= '1';
         else
            Y <= 'XX';
            VALID <= '0';
         end if
      end process;
   end Behavioural;
