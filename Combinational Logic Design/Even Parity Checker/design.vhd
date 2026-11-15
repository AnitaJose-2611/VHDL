library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Even_Parity_Checker is
   Port(
      DATA: in  STD_LOGIC_VECTOR(3 downto 0);
      PARITY_IN: in  STD_LOGIC;
      ERROR: out STD_LOGIC
   );
end Even_Parity_Checker;

architecture Behavioral of Even_Parity_Checker is
begin 
   ERROR <= DATA(3) xor DATA(2) xor DATA(1) xor DATA(0) xor PARITY_IN;
end Behavioral;

