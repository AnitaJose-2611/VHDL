library IEEE;
use IEEE.std_logic_1164.all;

entity tb_Full_Adder is
end tb_Full_Adder;

architecture Simulation of tb_Full_Adder is
   signal A: STD_LOGIC:= '0';
   signal B: STD_LOGIC:= '0';
   signal Cin: STD_LOGIC:= '0';
   signal Sum: STD_LOGIC;
   signal Cout: STD_LOGIC;
begin
   DUT: entity work.Full_Adder
      port map(
         A => A,
         B => B,
         Cin => Cin,
         Sum => Sum,
         Cout => Cout
      );
   stimulus: process
   begin
      A <= '0'; B <= '0'; Cin <= '0';
      wait for 10 ns;
      assert(Sum = '0' AND Cout = '0')
         report "Full Adder Test Mismatch"
         severity error;
      
      A <= '0'; B <= '0'; Cin <= '1';
      wait for 10 ns;
      assert(Sum = '1' AND Cout = '0')
         report "Full Adder Test Mismatch"
         severity error;
      
      A <= '0'; B <= '1'; Cin <= '0';
      wait for 10 ns;
      assert(Sum = '1' AND Cout = '0')
         report "Full Adder Test Mismatch"
         severity error;
      
      A <= '0'; B <= '1'; Cin <= '1';
      wait for 10 ns;
      assert(Sum = '0' AND Cout = '1')
         report "Full Adder Test Mismatch"
         severity error;
         
      A <= '1'; B <= '0'; Cin <= '0';
      wait for 10 ns;
      assert(Sum = '1' AND Cout = '0')
         report "Full Adder Test Mismatch"
         severity error;
         
      A <= '1'; B <= '0'; Cin <= '1';
      wait for 10 ns;
      assert(Sum = '0' AND Cout = '1')
         report "Full Adder Test Mismatch"
         severity error;
         
      A <= '1'; B <= '1'; Cin <= '0';
      wait for 10 ns;
      assert(Sum = '0' AND Cout = '1')
         report "Full Adder Test Mismatch"
         severity error;
         
      A <= '1'; B <= '1'; Cin <= '1';
      wait for 10 ns;
      assert(Sum = '1' AND Cout = '1')
         report "Full Adder Test Mismatch"
         severity error;
      
      wait;
      
   end process;
 
end Simulation;
