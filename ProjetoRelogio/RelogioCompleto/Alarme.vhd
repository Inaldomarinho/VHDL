library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alarme is
   port(reset, set, start, config: in  std_logic;
		 Minutos1 : out std_logic_vector (3 downto 0);
		 Minutos2 : out std_logic_vector (3 downto 0);
		 Horas1 : out std_logic_vector (3 downto 0);
		 Horas2 : out std_logic_vector (3 downto 0);
		 Ativado: out std_logic;
		 PiscaHR: out std_logic;
		 PiscaM: out std_logic);
end alarme;

architecture alarme of alarme is

component DivisorFreq is 
	port (clock_in: in std_logic;
			clock_out: out std_logic);
end component;
component Contador0a9 is 
	port (clock : in std_logic;
			reset : in std_logic;
			enable : in std_logic;
			saida : out std_logic_vector (3 downto 0);
			carry : out std_logic);
end component;
component Contador0a5 is 
	port (clock : in std_logic;
			reset : in std_logic;
			enable : in std_logic;
			saida : out std_logic_vector (3 downto 0);
			carry : out std_logic);
end component;
component LogicaAlarme is
	port (config : in std_logic;
			set : in std_logic;
			reset: in std_logic;
			saidaconf : out std_logic;
			saidaset : out std_logic;
			ativado : out std_logic);
end component;
component Contador0a2 is
	port (clock : in std_logic;
			reset : in std_logic;
			enable : in std_logic;
			saida : out std_logic_vector (3 downto 0);
			carry : out std_logic);
end component;


	signal SignalJK: std_logic;
	signal SignalResetHora: std_logic;
	signal SaidaC: std_logic;
	signal SaidaS: std_logic; --Sinal de saida do relogio
	signal Minutos1Sig: std_logic_vector (3 downto 0);
	signal Minutos2Sig: std_logic_vector (3 downto 0);
	signal Horas1Sig: std_logic_vector (3 downto 0);
	signal Horas2Sig: std_logic_vector (3 downto 0);
	signal C: std_logic_vector (1 downto 0); --Sinal de carry
	signal SignalAtivado: std_logic:='0';
	
begin

	LOGICADOALARME: LogicaAlarme port map (config, set, reset, SaidaC, SaidaS, SignalAtivado);
	MIN0A9 : Contador0a9 port map (saidaC and saidaS and start, reset and  saidaC, '1', Minutos1Sig, C(0));
	MIN0A5 : Contador0a5 port map (C(0), reset and saidaC, '1', Minutos2Sig);
	HR0A9 : Contador0a9 port map ((saidaC and not saidaS and start), SignalResetHora or (reset and saidaC), '1', Horas1Sig, C(1));
   HR0A2 : Contador0a2 port map (C(1), SignalResetHora or (reset and saidaC), '1', Horas2Sig);	
	SignalResetHora <= ((not Horas1Sig(3) and Horas1Sig(2) and not Horas1Sig(1) and not Horas1Sig(0)) and (not Horas2Sig(3) and not Horas2Sig(2) and Horas2Sig(1) and not Horas2Sig(0)));
	
	Ativado <= signalAtivado;

	Minutos1 <=  Minutos1Sig;
	Minutos2 <= Minutos2Sig;
	Horas1 <= Horas1Sig;
	Horas2 <= Horas2Sig;
	PiscaM <= saidaC and saidaS;
	PiscaHR <= saidaC and not saidaS;

end alarme;