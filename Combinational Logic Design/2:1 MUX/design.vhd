library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2to1 is
  port(
    I0: in STD_LOGIC;
    I1: in STD_LOGIC;
    S0: in STD_LOGIC;
    Y: out STD_LOGIC;
  );

architecture Behavioural of MUX_2to1 is
  begin
    process(I0, I1, S0)
    begin
      if S0 = '0' then
        Y <= I0;
      else
        Y <= I1;
      end if;
    end process;
end Behavioural;
        
