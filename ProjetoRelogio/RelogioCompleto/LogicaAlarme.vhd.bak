library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity LogicaAlarme is
	port (config : in std_logic;
			set : in std_logic;
			saidaconf : out std_logic;
			saidaset : out std_logic);
end LogicaAlarme;

architecture LogicaAlarme of LogicaAlarme is
signal signalcont : std_logic:= '0';
signal saidajk: std_logic := '0';
signal signalreset: std_logic := '0';
component JK is 
	port (j, k, reset, clock: in std_logic;
			Output: out std_logic);
end component;
begin
	process(set,config)
	
	begin
		 if signalreset='1' then   
            signalreset <= '0';
				
       elsif(set = '1' and set'EVENT and saidajk = '1') then
			if(signalcont= '1')then
			signalcont <= '0';
			signalreset <= '1';
			else
			signalcont <= '1';
			signalreset <= '0';
			end if;
		end if;	
	end process;
	
	FFJK: JK port map ('1','1', signalreset, config, saidajk);
   saidaconf <= saidajk;
	saidaset <= signalcont;
end LogicaAlarme;