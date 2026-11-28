library IEEE;
use IEEE.std_logic_1164.all;

entity reg_rst_en is
   port(
      clk: in std_logic;
      rst: in std_logic;
      en: in std_logic;
      D:  in std_logic_vector(3 downto 0);
      Q: out std_logic_vector(3 downto 0);
   );
end reg_rst_en;

architecture Behavioural of reg_rst_en is
signal reg_data: std_logic:= '0';
begin
   process(clk)
   begin
      if rising_edge(clk) then
         if rst = '1' then
            reg_data <= '0';
         else
            if en = '1' then
               reg_data <= D;
            end if;
         end if;
      end if;
   end process;
   Q <= reg_data;
end Behavioural;

   
