library IEEE;
use IEEE.std_logic_1164.all;

entity Half_Subtractor is
   port(
      A: in STD_LOGIC;
      B: in STD_LOGIC;
      Diff: out STD_LOGIC;
      Borrow: out STD_LOGIC
   );
end Half_Subtractor;
   
architecture Behavioural of Half_Subtractor is
begin
   Diff <= A XOR B;
   Borrow <= (NOT A) AND B;
end Behavioural;
