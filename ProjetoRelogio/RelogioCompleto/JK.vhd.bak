library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK is
   port( J,K: in  std_logic;
         Reset: in std_logic;
         Clock: in std_logic;
         Output: out std_logic);
end JK;

architecture JK of JK is
   signal temp: std_logic;
begin
   process (Clock, Reset) 
   begin		
         if Reset='1' then   
            temp <= '0';
				
         elsif (Clock='1' and Clock'EVENT) then
            if (J='0' and K='0') then
               temp <= temp;
            elsif (J='0' and K='1') then
               temp <= '0';
            elsif (J='1' and K='0') then
               temp <= '1';
            elsif (J='1' and K='1') then
               temp <= not (temp);
            end if;
			end if;	
   end process;
   Output <= temp;
end JK;