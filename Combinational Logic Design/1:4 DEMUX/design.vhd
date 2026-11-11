library IEEE;
use IEEE.std_logic_1164.all;

entity DEMUX_1to4 is
   port(
      I0: in STD_LOGIC;
      S0: in STD_LOGIC;
      S1: in STD_LOGIC;
      Y0: out STD_LOGIC;
      Y1: out STD_LOGIC;
      Y2: out STD_LOGIC;
      Y3: out STD_LOGIC;
   );
end DEMUX_1to4;

architecture Behavioural of DEMUX_1to4 is
   begin
      Y0 <= I0 AND (not S0) AND (not S1);
      Y1 <= I0 AND (not S0) AND (S1);
      Y2 <= I0 AND (S0) AND (not S1);
      Y3 <= I0 AND (S0) AND (S1);
   end Behavioural;
      
