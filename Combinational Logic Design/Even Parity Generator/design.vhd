library IEEE;
use IEEE.std_logic_1164.all;

entity Even_Parity_Generator is
   Port(
      DATA: in  std_logic_vector(3 downto 0);
      PARITY: out std_logic
   );
end Even_Parity_Generator;

architecture Behavioral of Even_Parity_Generator is
begin
   PARITY <= DATA(3) xor DATA(2) xor DATA(1) xor DATA(0);
end Behavioral;

