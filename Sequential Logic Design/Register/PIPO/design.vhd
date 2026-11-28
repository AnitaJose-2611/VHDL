library IEEE;
use IEEE.std_logic_1164.all;

entity pipo is
   port(
      clk: in std_logic;
      rst: in std_logic;
      D: in std_logic_vector(3 downto 0);
      Q: out std_logic_vector(3 downto 0)
   );
end pipo;

architecture Behavioural of pipo is
signal reg_data: std_logic_vector(3 downto 0):= "0000";
begin
   process(clk)
   begin
      if rising_edge(clk) then
         if rst = '1' then
            reg_data <= "0000";
         else
            reg_data <= D;
         end if;
      end if;
   end process;
   Q <= reg_data;
end Behavioural;
