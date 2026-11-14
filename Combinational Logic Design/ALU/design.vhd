library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity alu is
   Port(
      A: in std_logic_vector(3 downto 0);
      B: in std_logic_vector(3 downto 0);
      OP : in std_logic_vector(2 downto 0);
      RESULT : out std_logic_vector(3 downto 0);
      CARRY: out std_logic;
      ZERO: out std_logic
    );
end alu;

architecture Behavioral of alu is
signal RESULT_INT : std_logic_vector(3 downto 0);
begin
   process(A, B, OP)
   variable TEMP : UNSIGNED(4 downto 0);
   begin
      TEMP   := (others => '0');
      RESULT <= (others => '0');
      CARRY  <= '0';
      case OP is
         when "000" => TEMP := ('0' & unsigned(A)) + ('0' & unsigned(B));
                       RESULT_INT <= STD_LOGIC_VECTOR(TEMP(3 downto 0));
                       CARRY  <= TEMP(4);
         when "001" => TEMP := ('0' & unsigned(A)) - ('0' & unsigned(B));
                       RESULT_INT <= STD_LOGIC_VECTOR(TEMP(3 downto 0));
                       CARRY  <= TEMP(4);
         when "010" => RESULT_INT <= A and B;
         when "011" => RESULT_INT <= A or B;
         when "100" => RESULT_INT <= A xor B;
         when "101" => RESULT_INT <= not A;
         when "110" => RESULT_INT <= STD_LOGIC_VECTOR(shift_left(unsigned(A), 1));
         when "111" => RESULT_INT <= STD_LOGIC_VECTOR(shift_right(unsigned(A), 1));
         when others => RESULT_INT <= (others => '0');
      end case;

   end process;
   
   RESULT <= RESULT_INT;
   ZERO <= '1' when RESULT_INT = "0000" else '0';

end Behavioral;
