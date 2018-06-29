library ieee;
use ieee.std_logic_1164.all;

entity ffdm is
port(D, C: in std_logic;
     clock, reset: in std_logic;
	  Q, Qbar: out std_logic);
	  end ffdm;
	  
architecture ffd of ffdm is
signal QSignal: std_logic:='1';
begin

     process(clock, reset)	  
	  begin
	  if (reset = '1') then
	   QSignal <= '1';
		
	  elsif (clock'event and clock = '0' and C = '0') then 
	       QSignal<= d;
	  end if;
	 end process;
	  Q<= QSignal;
	  QBar<= not Qsignal;
 end ffd;	