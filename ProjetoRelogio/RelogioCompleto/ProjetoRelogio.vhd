library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ProjetoRelogio is
   port(clock, mode, set, start, config, reset: in  std_logic;
       Segundos1 : out std_logic_vector (6 downto 0);
		 Segundos2 : out std_logic_vector (6 downto 0);
		 Minutos1 : out std_logic_vector (6 downto 0);
		 Minutos2 : out std_logic_vector (6 downto 0);
		 Horas1 : out std_logic_vector (6 downto 0);
		 Horas2 : out std_logic_vector (6 downto 0);
		 Modo : out std_logic_vector (1 downto 0);
		 LedAlarme: out std_logic;
		 AlarmeAtivado: out std_logic);
end ProjetoRelogio;

architecture ProjetoRelogio of ProjetoRelogio is

component cronometro is
   port( start, clock, reset: in  std_logic;
	    Mili1 : out std_logic_vector (3 downto 0);
		 Mili2 : out std_logic_vector (3 downto 0);
       Segundos1 : out std_logic_vector (3 downto 0);
		 Segundos2 : out std_logic_vector (3 downto 0);
		 Minutos1 : out std_logic_vector (3 downto 0);
		 Minutos2 : out std_logic_vector (3 downto 0));
end component;

component alarme is
   port(reset, set, start, config: in  std_logic;
		 Minutos1 : out std_logic_vector (3 downto 0);
		 Minutos2 : out std_logic_vector (3 downto 0);
		 Horas1 : out std_logic_vector (3 downto 0);
		 Horas2 : out std_logic_vector (3 downto 0);
		 Ativado: out std_logic;
		 PiscaHR: out std_logic;
		 PiscaM: out std_logic);
end component;

component relogio is
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
end component;

component decodificador is
	port (
	   clock: in std_logic;
		Segundos1Sig: in std_logic_vector (3 downto 0); --Sinal de saida do relogio
		Segundos2Sig: in std_logic_vector (3 downto 0);
		Minutos1Sig: in std_logic_vector (3 downto 0);
		Minutos2Sig: in std_logic_vector (3 downto 0);
		Horas1Sig: in std_logic_vector (3 downto 0);
		Horas2Sig: in std_logic_vector (3 downto 0);
		PiscaHR: in std_logic;
		PiscaM: in std_logic;
		Segundos1 : out std_logic_vector (6 downto 0);
		Segundos2 : out std_logic_vector (6 downto 0);
		Minutos1 : out std_logic_vector (6 downto 0);
		Minutos2 : out std_logic_vector (6 downto 0);
		Horas1 : out std_logic_vector (6 downto 0);
		Horas2 : out std_logic_vector (6 downto 0));
end component;
component JK is
   port( J,K: in  std_logic;
         Reset: in std_logic;
         Clock: in std_logic;
         Output: out std_logic);
end component;
component DivisorFreq2 is
	port (clock_in : in std_logic;
			clock_out : out std_logic);
end component;


	signal SignalMode: std_logic_vector (1 downto 0):="00";

	signal Segundos1Sig: std_logic_vector (3 downto 0); --Sinal de saida 
	signal Segundos2Sig: std_logic_vector (3 downto 0);
	signal Minutos1Sig: std_logic_vector (3 downto 0);
	signal Minutos2Sig: std_logic_vector (3 downto 0);
	signal Horas1Sig: std_logic_vector (3 downto 0);
	signal Horas2Sig: std_logic_vector (3 downto 0);
	signal PiscaHR: std_logic;
	signal PiscaM: std_logic;
	
	signal Segundos1SigR: std_logic_vector (3 downto 0); --Sinal de saida do relogio
	signal Segundos2SigR: std_logic_vector (3 downto 0);
	signal Minutos1SigR: std_logic_vector (3 downto 0);
	signal Minutos2SigR: std_logic_vector (3 downto 0);
	signal Horas1SigR: std_logic_vector (3 downto 0);
	signal Horas2SigR: std_logic_vector (3 downto 0);
	signal ConfigActv: std_logic;
	signal PiscaHRe: std_logic;
	signal PiscaMRe: std_logic;
	
	signal Segundos1SigA: std_logic_vector (3 downto 0):="0000";--Sinal de saida do Alarme
	signal Minutos1SigA: std_logic_vector (3 downto 0);
	signal Minutos2SigA: std_logic_vector (3 downto 0);
	signal Horas1SigA: std_logic_vector (3 downto 0);
	signal Horas2SigA: std_logic_vector (3 downto 0);
	signal AlarmeAtivo: std_logic:='0';
	signal PiscaHRAlarme: std_logic;
	signal PiscaMAlarme: std_logic;
	
	
	signal AlarmePisca: std_logic:='0';--Sinais da logica do alarme
	signal AlarmeJK: std_logic:='0';
	signal ClockSaidaA : std_logic;
	
	signal Mili1: std_logic_vector (3 downto 0); --Sinal de saida do Cronometro
	signal Mili2: std_logic_vector (3 downto 0);
   signal Segundos1SigC: std_logic_vector (3 downto 0); 
	signal Segundos2SigC: std_logic_vector (3 downto 0);
	signal Minutos1SigC: std_logic_vector (3 downto 0);
	signal Minutos2SigC: std_logic_vector (3 downto 0);
	

begin
process(mode)
	
	begin
         if (mode='0' and mode'EVENT) then
            if (SignalMode(0)='0' and SignalMode(1)='0' and configActv = '0') then
              SignalMode(0)<= '1';-- ALARME
				  SignalMode(1)<= '0';
            elsif (SignalMode(0)='1' and SignalMode(1)='0') then
              SignalMode(0)<= '1'; -- CRONOMETRO
				  SignalMode(1)<= '1';
            elsif (SignalMode(0)='1' and SignalMode(1)='1') then
              SignalMode(0)<= '0'; -- RELOGIO
				  SignalMode(1)<= '0';
            end if;
		  end if;
		  
	end process;	
	
 process(clock)
	
	begin
	
         if (clock='0' and clock'EVENT) then			
            if (SignalMode(0)='1' and SignalMode(1)='0') then
				  Segundos1Sig <= Segundos1SigA;
				  Segundos2Sig <= Segundos1SigA;
				  Minutos1Sig <= minutos1SigA;
				  Minutos2Sig <= minutos2SigA;
				  Horas1Sig <= horas1SigA;
				  Horas2Sig <= horas2SigA;
				  PiscaHR <= PiscaHRAlarme;
				  PiscaM <= PiscaMAlarme;
            elsif (SignalMode(0)='1' and SignalMode(1)='1') then
              Segundos1Sig <= mili1;
				  Segundos2Sig <= mili2;
				  Minutos1Sig <= segundos1SigC;
				  Minutos2Sig <= segundos2SigC;
				  Horas1Sig <= minutos1SigC;
				  Horas2Sig <= minutos2SigC;
				  PiscaHR <='0';
				  PiscaM<= '0';
            elsif (SignalMode(0)='0' and SignalMode(1)='0') then
				  Segundos1Sig <= segundos1SigR;
				  Segundos2Sig <= segundos2SigR;
				  Minutos1Sig <= minutos1SigR;
				  Minutos2Sig <= minutos2SigR;
				  Horas1Sig <= horas1SigR;
				  Horas2Sig <= horas2SigR;
				  PiscaHR <= PiscaHRe;
				  PiscaM <= PiscaMRe;
            end if;
				if(AlarmeAtivo='1' and Horas1SigA=Horas1SigR and horas2SigA=Horas2SigR and Minutos1SigA=minutos1SigR and Minutos2SigA=Minutos2SigR) then
				   AlarmeJK <= '1';
				else
			      AlarmeJK <= '0';	
				end if;
		  end if;
		  
	end process;
	--COMPONENTES
	RELOGIO1: relogio port map (clock, not mode and not signalMode(0) and not signalMode(1), not set and not signalMode(0) and not signalMode(1) , not start and not signalMode(0) and not signalMode(1), config and not signalMode(0) and not signalMode(1), Segundos1SigR, Segundos2SigR, Minutos1SigR, Minutos2SigR, Horas1SigR, Horas2SigR, configActv, piscaHRe, piscaMRe);
	ALARME1: alarme port map (not reset and signalMode(0) and not signalMode(1), not set and signalMode(0) and not signalMode(1), not start and signalMode(0) and not signalMode(1), config and signalMode(0) and not signalMode(1),Minutos1SigA, Minutos2SigA, Horas1SigA, Horas2SigA, AlarmeAtivo,PiscaHRAlarme, PiscaMAlarme);
	CRONOMETRO1: cronometro port map (not start and signalMode(0) and signalMode(1), clock, not reset and signalMode(0) and signalMode(1), Mili1, Mili2, Segundos1SigC, Segundos2SigC, Minutos1SigC, Minutos2SigC);
	
		--LOGICA ALARME == HORA
	 DIVFREQ: DivisorFreq2 port map (clock, clockSaidaA);
	 FFJKALARME: JK port map (AlarmeJK,'1','0',clockSaidaA, AlarmePisca); 
	

	
	DECODIF: decodificador port map (clock, Segundos1Sig,Segundos2Sig,Minutos1Sig, Minutos2Sig, Horas1Sig, Horas2Sig,PiscaHR, PiscaM, Segundos1, Segundos2, Minutos1, Minutos2, Horas1, Horas2);
	modo(0)<= signalMode(0);
	modo(1)<= signalMode(1);
	LedAlarme <= AlarmePisca;
	AlarmeAtivado <= AlarmeAtivo;
	
end ProjetoRelogio;