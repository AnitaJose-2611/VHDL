library IEEE;
use IEEE.std_logic_1164.all;

entity Odd_Parity_Generator is
   Port(
      DATA: in  std_logic_vector(3 downto 0);
      PARITY: out std_logic
   );
end Odd_Parity_Generator;

architecture Behavioral of Odd_Parity_Generator is
begin
   PARITY <= not(DATA(3) xor DATA(2) xor DATA(1) xor DATA(0));
end Behavioral;

