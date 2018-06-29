library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Contador0a2 is
	port (clock : in std_logic;
			reset : in std_logic;
			enable : in std_logic;
			saida : out std_logic_vector (3 downto 0);
			carry : out std_logic);
end Contador0a2;

architecture cont of Contador0a2 is
signal contagem : integer range 0 to 2:=0;
signal tc: std_logic := '0';

begin
	process(clock,reset)
	begin
	   if(reset='1')then
		contagem <= 0;
		elsif(clock = '1' and clock'EVENT) then
			if(contagem= 2)then
			contagem <= 0;
			tc <= '1';
			else
			contagem <=contagem+1;
			tc <= '0';
			end if;
		end if;
	end process;
	saida <= conv_std_logic_vector(contagem,4);
	carry <= tc;
end cont;