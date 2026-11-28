library IEEE;
use IEEE.std_logic_1164.all;

entity master_slave_jk is
   port(
      clk: in std_logic;
      J: in std_logic;
      K: in std_logic;
      Q: out std_logic;
      QBAR: out std_logic
   );
end master_slave_jk;

architecture Behavioural of master_slave_jk is
signal MASTER_Q: std_logic:= '0';
signal SLAVE_Q: std_logic:= '0';
begin
   --Master Stage: enabled when Q = 0--
   process(clk, J, K, SLAVE_Q)
   begin
      if clk = '0' then
         if J = '0' and K = '0' then
            MASTER_Q <= SLAVE_Q;
         elsif J = '0' and K = '1' then
            MASTER_Q <= '0';
         elsif J = '1' and K = '0' then
            MASTER_Q <= '1';
         else
            MASTER_Q <= not SLAVE_Q;
         end if;
      end if;
   end process;
   
   --Slave Stage: enabled when Q = 1--
   process(clk, MASTER_Q) 
   begin
      if clk = '1' then
         SLAVE_Q <= MASTER_Q;
      end if;
   end process;
   Q <= SLAVE_Q;
   QBAR <= not SLAVE_Q;
end Behavioural;
         
