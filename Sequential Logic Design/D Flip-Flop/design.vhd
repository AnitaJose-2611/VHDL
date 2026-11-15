library IEEE;
use IEEE.std_logic_1164.all;

entity D_Flip_Flop is
   port(
      CLK: in std_logic;
      D: in std_logic;
      Q: out std_logic
   );
end D_Flip_Flop;

architecture Behavioural of D_Flip_Flop is
begin
   process(CLK) 
   begin
      if rising_edge(clk) then
         Q <= D;
      end if;
   end process;
end Behavioural;
