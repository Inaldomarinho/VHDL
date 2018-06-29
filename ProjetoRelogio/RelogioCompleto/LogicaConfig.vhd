library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity LogicaConfig is
	port (config : in std_logic;
			set : in std_logic;
			mode : in std_logic;
			saidaconf : out std_logic;
			saidaset : out std_logic);
end LogicaConfig;

architecture LogicaConfig of LogicaConfig is
signal signalcont : std_logic:= '0';
signal saidajk: std_logic := '0';
signal signalmode: std_logic := '0';
component JK is 
	port (j, k, reset, clock: in std_logic;
			Output: out std_logic);
end component;
begin
	process(set,saidajk)
	
	begin
	
		 if (signalmode='1') then   
            signalmode <= '0';
				
       elsif(set = '1' and set'EVENT and saidajk = '1') then
			if(signalcont= '1')then
			signalcont <= '0';
			signalmode <= '1';
			else
			signalcont <= '1';
			signalmode <= '0';
			end if;
		end if;	
	end process;
	
	FFJK: JK port map ('1','1', mode or signalmode, config, saidajk);
   saidaconf <= saidajk;
	saidaset <= signalcont;
end LogicaConfig;