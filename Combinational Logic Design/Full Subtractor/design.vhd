library IEEE;
use IEEE.std_logic_1164.all;

entity Full_Subtractor is
   port(
      A: in STD_LOGIC;
      Bin: in STD_LOGIC;
      C: in STD_LOGIC;
      Diff: out STD_LOGIC;
      Bout: out STD_LOGIC
   );
end Full_Subtractor;
   
architecture Behavioural of Full_Subtractor is
signal D1: STD_LOGIC;
begin
   D1 <= A XOR Bin;
   Diff <= D1 XOR C;
   Bout <= ((NOT A) AND Bin) OR (D1 AND C);
end Behavioural;
