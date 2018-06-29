library ieee;
use ieee.std_logic_1164.all;

entity DivisorFreq2 is
	port (clock_in : in std_logic;
			clock_out : out std_logic);
end DivisorFreq2;

architecture DivisorFreq2 of DivisorFreq2 is
signal contagem : integer range 0 to 12500000:=1;
signal estado : std_logic;
begin
	process(clock_in,contagem)
	begin
		if(clock_in='1' and clock_in 'EVENT) then
			if contagem = 9500000 then
				estado <= not estado;
				contagem <= 1;
			else
				contagem <= contagem + 1;
			end if;
		end if;
	end process;
	clock_out <= estado;
end DivisorFreq2;