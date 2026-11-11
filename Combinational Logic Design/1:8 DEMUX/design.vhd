library IEEE;
use IEEE.std_logic_1164.all;


entity DEMUX_1to8 is
   port(
      I: in STD_LOGIC;
      S: in STD_LOGIC_VECTOR(2 downto 0);
      Y: out STD_LOGIC_VECTOR(7 downto 0)
   );
end DEMUX_1to8;

architecture Behavioural of DEMUX_1to8 is
   begin
      process(I, S) 
      begin
         Y <= (others => '0');
         case S is
            when "000" =>
               Y(0) <= I;
            when "001" =>
               Y(1) <= I;
            when "010" =>
               Y(2) <= I;
            when "011" =>
               Y(3) <= I;
            when "100" =>
               Y(4) <= I;
            when "101" =>
               Y(5) <= I;
            when "110" =>
               Y(6) <= I;
            when "111" =>
               Y(7) <= I;
            when others =>
               Y <= (others => '0');
         end case;
      
      end process;
   
   end Behavioural;
   
               
