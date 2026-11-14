library IEEE;
use IEEE.std_logic_1164.all;

entity rca is
   port(
      A: in STD_LOGIC(3 downto 0);
      B: in STD_LOGIC(3 downto 0);
      CIN: in STD_LOGIC;
      S: out STD_LOGIC(3 downto 0);
      COUT: out STD_LOGIC
   );
end rca;

architecture Behavioural of rca is 
signal C: STD_LOGIC_VECTOR(4 downto 0);
begin
   C(0) <= CIN;
   COUT <= C(4);
   
   FA0: entity work.full_adder
      port map(
         A => A(0),
         B => B(0),
         Cin => C(0),
         Sum => S(0),
         Cout => C(1)
      );
   FA1: entity work.full_adder
      port map(
         A => A(1),
         B => B(1),
         Cin => C(1),
         Sum => S(1),
         Cout => C(2)
      );
   FA2: entity work.full_adder
      port map(
         A => A(2),
         B => B(2),
         Cin => C(2),
         Sum => S(2),
         Cout => C(3)
      );
   FA3: entity work.full_adder
      port map(
         A => A(3),
         B => B(3),
         Cin => C(3),
         Sum => S(3),
         Cout => C(4)
      );

end Behavioural;
   
