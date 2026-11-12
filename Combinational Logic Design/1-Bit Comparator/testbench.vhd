library IEEE;
use IEEE.std_logic_1164.all;

entity tb_Comparator_1Bit is
end tb_Comparator_1Bit;

architecture Simulation of tb_Comparator_1Bit is
   signal A: STD_LOGIC:= '0';
   signal B: STD_LOGIC:= '0';
   signal GT: STD_LOGIC;
   signal LT: STD_LOGIC;
   signal EQ: STD_LOGIC;
begin
   DUT: entity work.Comparator_1Bit
      port map(
         A => A,
         B => B,
         GT => GT,
         LT => LT,
         EQ => EQ
      );
   stimulus: process
   begin
      A <= '0'; B <= '0';
      wait for 10 ns;
      assert(GT <= '0' AND LT <= '0' AND EQ <= '1')
         report "Test failed for A = 0 and B = 0"
         severity error;
      
      A <= '0'; B <= '1';
      wait for 10 ns;
      assert(GT <= '0' AND LT <= '1' AND EQ <= '0')
         report "Test failed for A = 0 and B = 0"
         severity error;
      
      A <= '1'; B <= '0';
      wait for 10 ns;
      assert(GT <= '1' AND LT <= '0' AND EQ <= '0')
         report "Test failed for A = 0 and B = 0"
         severity error;
      
      A <= '1'; B <= '1';
      wait for 10 ns;
      assert(GT <= '0' AND LT <= '0' AND EQ <= '1')
         report "Test failed for A = 0 and B = 0"
         severity error;
         
      report "All 1-bit comparator tests completed."
            severity note;
         
      wait;
   
   end process;
   
end Simulation;
      
      
