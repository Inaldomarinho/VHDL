library ieee;
use ieee.std_logic_1164.all;

entity ffd is
port(D, C: in std_logic;
     clock, reset: in std_logic;
	  Q, Qbar: out std_logic);
	  end ffd;
	  
architecture ffd of ffd is
signal QSignal: std_logic;
begin

     process(clock, reset)	  
	  begin
	  if (reset = '1') then
	   QSignal <= '0';
	  elsif (clock'event and clock = '0' and C = '0') then 
	       QSignal<= d;
	  end if;
	 end process;
	  Q<= QSignal;
	  QBar<= not Qsignal;
 end ffd;	