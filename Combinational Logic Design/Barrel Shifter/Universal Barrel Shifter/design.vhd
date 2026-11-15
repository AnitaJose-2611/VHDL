library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Barrel_Shifter is
   port(
      A: in std_logic_vector(7 downto 0);
      SHAMT: in std_logic_vector(2 downto 0);
      MODE: in std_logic_vector(2 downto 0);
      RESULT: out std_logic_vector(7 downto 0)
   );
end Barrel_Shifter;

architecture Structural of Barrel_Shifter is
begin
   process(A, SHAMT, MODE)
   begin
      RESULT <= (others => '0');
      case MODE is
         when "000" => RESULT <= std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(SHAMT))));
         when "001" => RESULT <= std_logic_vector(shift_right(unsigned(A), to_integer(unsigned(SHAMT))));
         when "010" => RESULT <= std_logic_vector(shift_right(signed(A), to_integer(unsigned(SHAMT))));
         when "011" => RESULT <= std_logic_vector(rotate_left(unsigned(A), to_integer(unsigned(SHAMT))));
         when "100" => RESULT <= std_logic_vector(rotate_right(unsigned(A), to_integer(unsigned(SHAMT))));
         when others => RESULT <= (others => '0');
      end case;
      
   end process;
   
end Structural;
        
           
