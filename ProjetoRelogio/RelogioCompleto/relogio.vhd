library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity relogio is
   port(clock, mode, set, start, config: in  std_logic;
       Segundos1 : out std_logic_vector (3 downto 0);
		 Segundos2 : out std_logic_vector (3 downto 0);
		 Minutos1 : out std_logic_vector (3 downto 0);
		 Minutos2 : out std_logic_vector (3 downto 0);
		 Horas1 : out std_logic_vector (3 downto 0);
		 Horas2 : out std_logic_vector (3 downto 0);
		 ConfigActv: out std_logic;
		 PiscaHRe: out std_logic;
		 PiscaMRe: out std_logic);
end relogio;

architecture relogio of relogio is

component JK is 
	port (j, k, reset, clock: in std_logic;
			Output: out std_logic);
end component;
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
component LogicaConfig is
	port (config : in std_logic;
			set : in std_logic;
			mode : in std_logic;
			saidaconf : out std_logic;
			saidaset : out std_logic);
end component;
component Contador0a2 is
	port (clock : in std_logic;
			reset : in std_logic;
			enable : in std_logic;
			saida : out std_logic_vector (3 downto 0);
			carry : out std_logic);
end component;

component decodificador is
	port (
		Segundos1Sig: in std_logic_vector (3 downto 0); --Sinal de saida do relogio
		Segundos2Sig: in std_logic_vector (3 downto 0);
		Minutos1Sig: in std_logic_vector (3 downto 0);
		Minutos2Sig: in std_logic_vector (3 downto 0);
		Horas1Sig: in std_logic_vector (3 downto 0);
		Horas2Sig: in std_logic_vector (3 downto 0);
		Segundos1 : out std_logic_vector (6 downto 0);
		Segundos2 : out std_logic_vector (6 downto 0);
		Minutos1 : out std_logic_vector (6 downto 0);
		Minutos2 : out std_logic_vector (6 downto 0);
		Horas1 : out std_logic_vector (6 downto 0);
		Horas2 : out std_logic_vector (6 downto 0));
end component;

   signal SignalClk: std_logic;
	signal SignalJK: std_logic;
	signal SignalResetHora: std_logic;
	signal SaidaC: std_logic;
	signal SaidaS: std_logic;
	signal Segundos1Sig: std_logic_vector (3 downto 0); --Sinal de saida do relogio
	signal Segundos2Sig: std_logic_vector (3 downto 0);
	signal Minutos1Sig: std_logic_vector (3 downto 0);
	signal Minutos2Sig: std_logic_vector (3 downto 0);
	signal Horas1Sig: std_logic_vector (3 downto 0);
	signal Horas2Sig: std_logic_vector (3 downto 0);
	signal C: std_logic_vector (5 downto 0); --Sinal de carry
	
begin
   --FFJK: JK port map ('1','1', not config, clock, SignalJK);
	DIV0: DivisorFreq port map (clock, SignalClk);
	LOGICADOCONFIG: LogicaConfig port map (config, set, mode, SaidaC,SaidaS);
	SEG0A9 : Contador0a9 port map (SignalClk, '0', '1', Segundos1Sig, C(0));
	SEG0A5 : Contador0a5 port map (C(0), '0', '1', Segundos2Sig, C(1));
	MIN0A9 : Contador0a9 port map (C(1) or (saidaC and saidaS and start), '0', '1', Minutos1Sig, C(2));
	MIN0A5 : Contador0a5 port map (C(2), '0', '1', Minutos2Sig, C(3));
	HR0A9 : Contador0a9 port map (C(3) or (saidaC and not saidaS and start), SignalResetHora, '1', Horas1Sig, C(4));
   HR0A2 : Contador0a2 port map (C(4), SignalResetHora, '1', Horas2Sig);
	--DECODIF: decodificador port map (Segundos1Sig,Segundos2Sig,Minutos1Sig, Minutos2Sig, Horas1Sig, Horas2Sig, Segundos1, Segundos2, Minutos1, Minutos2, Horas1, Horas2);
	

	SignalResetHora <= ((not Horas1Sig(3) and Horas1Sig(2) and not Horas1Sig(1) and not Horas1Sig(0)) and (not Horas2Sig(3) and not Horas2Sig(2) and Horas2Sig(1) and not Horas2Sig(0)));
	
	
       Segundos1 <= Segundos1Sig;
		 Segundos2 <= Segundos2Sig;
		 Minutos1  <= Minutos1Sig;
		 Minutos2  <= Minutos2Sig;
		 Horas1    <= Horas1Sig;
		 Horas2    <= Horas2Sig;
       configActv <= SaidaC;
		 PiscaMRe <= saidaC and saidaS;
	    PiscaHRe <= saidaC and not saidaS;
end relogio;