library IEEE;
use IEEE.std_logic_1164.all;

entity DEMUX1to2 is
   port(
      I0: in STD_LOGIC;
      S0: in STD_LOGIC;
      Y0: out STD_LOGIC;
      Y1: out STD_LOGIC
   );
end DEMUX1to2;

architecture Behavioural of DEMUX1to2 is
begin
   Y0 <= I0 and (not S0);
   Y1 <= I0 and S0;
end Behavioural;
