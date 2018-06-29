library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity decodificador is
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
end decodificador;

architecture decodificador of decodificador is
	signal piscadorH: std_logic:= '1';
	signal piscadorM: std_logic:= '1';
	signal piscadorHR: std_logic:= '1';
	signal piscadorMIN: std_logic:= '1';
	signal Clock_out: std_logic;
	
component DivisorFreq2 is
	port (clock_in : in std_logic;
			clock_out : out std_logic);
end component;
component JK is
   port( J,K: in  std_logic;
         Reset: in std_logic;
         Clock: in std_logic;
         Output: out std_logic);
end component;
begin
DivFreq: DivisorFreq2 port map (clock, clock_out);
JK1: JK port map ('1','1',not piscaHR, clock_out, piscadorHR);
JK2: JK port map ('1','1',not piscaM, clock_out, piscadorMIN);

piscadorH <= not PiscadorHR;
piscadorM <= not PiscadorMIN;

		Segundos1(0)<=(not Segundos1Sig(3) and Segundos1Sig(2) and not Segundos1Sig(0)) or 
	(not Segundos1Sig(3) and not Segundos1Sig(2) and not Segundos1Sig(1) and Segundos1Sig(0)) or
	(Segundos1Sig(3) and not Segundos1Sig(2) and Segundos1Sig(1) and Segundos1Sig(0)) or 
	(Segundos1Sig(2) and Segundos1Sig(1) and not Segundos1Sig(0));
	
	Segundos1(1)<=(not Segundos1Sig(3) and Segundos1Sig(2) and not Segundos1Sig(1) and Segundos1Sig(0)) or 
	(Segundos1Sig(3) and Segundos1Sig(2) and Segundos1Sig(1) and Segundos1Sig(0)) or
	(not Segundos1Sig(3) and Segundos1Sig(2) and Segundos1Sig(1) and not Segundos1Sig(0));
	
	Segundos1(2)<=(Segundos1Sig(3) and Segundos1Sig(2) and not Segundos1Sig(1) and not Segundos1Sig(0)) or 
	(not Segundos1Sig(3) and not Segundos1Sig(2) and Segundos1Sig(1) and not Segundos1Sig(0));
	
	Segundos1(3)<=(not Segundos1Sig(2) and not Segundos1Sig(1) and Segundos1Sig(0)) or 
	(not Segundos1Sig(3) and Segundos1Sig(2) and not Segundos1Sig(1) and not Segundos1Sig(0)) or
	(Segundos1Sig(3) and not Segundos1Sig(2) and Segundos1Sig(0)) or 
	(not Segundos1Sig(3) and Segundos1Sig(2) and Segundos1Sig(1) and Segundos1Sig(0)) or 
	(Segundos1Sig(3) and Segundos1Sig(2) and Segundos1Sig(1) and not Segundos1Sig(0));
	
	Segundos1(4)<=(Segundos1Sig(0)) or 
	(not Segundos1Sig(3) and Segundos1Sig(2) and not Segundos1Sig(1)) or
	(Segundos1Sig(3) and Segundos1Sig(2) and Segundos1Sig(1));
	
	Segundos1(5)<=(not Segundos1Sig(3) and not Segundos1Sig(2) and Segundos1Sig(0)) or 
	(not Segundos1Sig(3) and not Segundos1Sig(2) and Segundos1Sig(1)) or
	(not Segundos1Sig(3) and Segundos1Sig(1) and Segundos1Sig(0)) or 
	(Segundos1Sig(3) and Segundos1Sig(2) and not Segundos1Sig(1)) or
	(not Segundos1Sig(2) and Segundos1Sig(1) and Segundos1Sig(0));	
	
	Segundos1(6)<= (not Segundos1Sig(3) and not Segundos1Sig(2) and not Segundos1Sig(1)) or
	(not Segundos1Sig(3) and Segundos1Sig(2) and Segundos1Sig(1) and Segundos1Sig(0)) or
	(Segundos1Sig(3) and not Segundos1Sig(2) and Segundos1Sig(1));
	
	
	
	Segundos2(0)<=(not Segundos2Sig(3) and Segundos2Sig(2) and not Segundos2Sig(0)) or 
	(not Segundos2Sig(3) and not Segundos2Sig(2) and not Segundos2Sig(1) and Segundos2Sig(0)) or
	(Segundos2Sig(3) and not Segundos2Sig(2) and Segundos2Sig(1) and Segundos2Sig(0)) or 
	(Segundos2Sig(2) and Segundos2Sig(1) and not Segundos2Sig(0));
	
	Segundos2(1)<=(not Segundos2Sig(3) and Segundos2Sig(2) and not Segundos2Sig(1) and Segundos2Sig(0)) or 
	(Segundos2Sig(3) and Segundos2Sig(2) and Segundos2Sig(1) and Segundos2Sig(0)) or
	(not Segundos2Sig(3) and Segundos2Sig(2) and Segundos2Sig(1) and not Segundos2Sig(0));
	
	Segundos2(2)<=(Segundos2Sig(3) and Segundos2Sig(2) and not Segundos2Sig(1) and not Segundos2Sig(0)) or 
	(not Segundos2Sig(3) and not Segundos2Sig(2) and Segundos2Sig(1) and not Segundos2Sig(0));
	
	Segundos2(3)<=(not Segundos2Sig(2) and not Segundos2Sig(1) and Segundos2Sig(0)) or 
	(not Segundos2Sig(3) and Segundos2Sig(2) and not Segundos2Sig(1) and not Segundos2Sig(0)) or
	(Segundos2Sig(3) and not Segundos2Sig(2) and Segundos2Sig(0)) or 
	(not Segundos2Sig(3) and Segundos2Sig(2) and Segundos2Sig(1) and Segundos2Sig(0)) or 
	(Segundos2Sig(3) and Segundos2Sig(2) and Segundos2Sig(1) and not Segundos2Sig(0));
	
	Segundos2(4)<=(Segundos2Sig(0)) or 
	(not Segundos2Sig(3) and Segundos2Sig(2) and not Segundos2Sig(1)) or
	(Segundos2Sig(3) and Segundos2Sig(2) and Segundos2Sig(1));
	
	Segundos2(5)<=(not Segundos2Sig(3) and not Segundos2Sig(2) and Segundos2Sig(0)) or 
	(not Segundos2Sig(3) and not Segundos2Sig(2) and Segundos2Sig(1)) or
	(not Segundos2Sig(3) and Segundos2Sig(1) and Segundos2Sig(0)) or 
	(Segundos2Sig(3) and Segundos2Sig(2) and not Segundos2Sig(1)) or
	(not Segundos2Sig(2) and Segundos2Sig(1) and Segundos2Sig(0));	
	
	Segundos2(6)<= (not Segundos2Sig(3) and not Segundos2Sig(2) and not Segundos2Sig(1)) or
	(not Segundos2Sig(3) and Segundos2Sig(2) and Segundos2Sig(1) and Segundos2Sig(0)) or
	(Segundos2Sig(3) and not Segundos2Sig(2) and Segundos2Sig(1));
	
		
		--Logica dos Displays
	Minutos1(0)<= ((not Minutos1Sig(3) and Minutos1Sig(2) and not Minutos1Sig(0)) or 
	(not Minutos1Sig(3) and not Minutos1Sig(2) and not Minutos1Sig(1) and Minutos1Sig(0)) or
	(Minutos1Sig(3) and not Minutos1Sig(2) and Minutos1Sig(1) and Minutos1Sig(0)) or 
	(Minutos1Sig(2) and Minutos1Sig(1) and not Minutos1Sig(0)) ) or not piscadorM;
	
	Minutos1(1)<= ((not Minutos1Sig(3) and Minutos1Sig(2) and not Minutos1Sig(1) and Minutos1Sig(0)) or 
	(Minutos1Sig(3) and Minutos1Sig(2) and Minutos1Sig(1) and Minutos1Sig(0)) or
	(not Minutos1Sig(3) and Minutos1Sig(2) and Minutos1Sig(1) and not Minutos1Sig(0)))  or not piscadorM;
	
	Minutos1(2)<= ((Minutos1Sig(3) and Minutos1Sig(2) and not Minutos1Sig(1) and not Minutos1Sig(0)) or 
	(not Minutos1Sig(3) and not Minutos1Sig(2) and Minutos1Sig(1) and not Minutos1Sig(0))  ) or not piscadorM;
	
	Minutos1(3)<= ((not Minutos1Sig(2) and not Minutos1Sig(1) and Minutos1Sig(0)) or 
	(not Minutos1Sig(3) and Minutos1Sig(2) and not Minutos1Sig(1) and not Minutos1Sig(0)) or
	(Minutos1Sig(3) and not Minutos1Sig(2) and Minutos1Sig(0)) or 
	(not Minutos1Sig(3) and Minutos1Sig(2) and Minutos1Sig(1) and Minutos1Sig(0)) or 
	(Minutos1Sig(3) and Minutos1Sig(2) and Minutos1Sig(1) and not Minutos1Sig(0)))  or not piscadorM;
	
	Minutos1(4)<= ((Minutos1Sig(0)) or 
	(not Minutos1Sig(3) and Minutos1Sig(2) and not Minutos1Sig(1)) or
	(Minutos1Sig(3) and Minutos1Sig(2) and Minutos1Sig(1)))  or not piscadorM;
	
	Minutos1(5)<= ((not Minutos1Sig(3) and not Minutos1Sig(2) and Minutos1Sig(0)) or 
	(not Minutos1Sig(3) and not Minutos1Sig(2) and Minutos1Sig(1)) or
	(not Minutos1Sig(3) and Minutos1Sig(1) and Minutos1Sig(0)) or 
	(Minutos1Sig(3) and Minutos1Sig(2) and not Minutos1Sig(1)) or
	(not Minutos1Sig(2) and Minutos1Sig(1) and Minutos1Sig(0))  ) or not piscadorM;	
	
	Minutos1(6)<=  ((not Minutos1Sig(3) and not Minutos1Sig(2) and not Minutos1Sig(1)) or
	(not Minutos1Sig(3) and Minutos1Sig(2) and Minutos1Sig(1) and Minutos1Sig(0)) or
	(Minutos1Sig(3) and not Minutos1Sig(2) and Minutos1Sig(1))  ) or not piscadorM;
	
	
	
	Minutos2(0)<= ((not Minutos2Sig(3) and Minutos2Sig(2) and not Minutos2Sig(0)) or 
	(not Minutos2Sig(3) and not Minutos2Sig(2) and not Minutos2Sig(1) and Minutos2Sig(0)) or
	(Minutos2Sig(3) and not Minutos2Sig(2) and Minutos2Sig(1) and Minutos2Sig(0)) or 
	(Minutos2Sig(2) and Minutos2Sig(1) and not Minutos2Sig(0))  ) or not piscadorM;
	
	Minutos2(1)<= ((not Minutos2Sig(3) and Minutos2Sig(2) and not Minutos2Sig(1) and Minutos2Sig(0)) or 
	(Minutos2Sig(3) and Minutos2Sig(2) and Minutos2Sig(1) and Minutos2Sig(0)) or
	(not Minutos2Sig(3) and Minutos2Sig(2) and Minutos2Sig(1) and not Minutos2Sig(0))  )or not piscadorM;
	
	Minutos2(2)<= ((Minutos2Sig(3) and Minutos2Sig(2) and not Minutos2Sig(1) and not Minutos2Sig(0)) or 
	(not Minutos2Sig(3) and not Minutos2Sig(2) and Minutos2Sig(1) and not Minutos2Sig(0)) ) or not piscadorM;
	
	Minutos2(3)<= ((not Minutos2Sig(2) and not Minutos2Sig(1) and Minutos2Sig(0)) or 
	(not Minutos2Sig(3) and Minutos2Sig(2) and not Minutos2Sig(1) and not Minutos2Sig(0)) or
	(Minutos2Sig(3) and not Minutos2Sig(2) and Minutos2Sig(0)) or 
	(not Minutos2Sig(3) and Minutos2Sig(2) and Minutos2Sig(1) and Minutos2Sig(0)) or 
	(Minutos2Sig(3) and Minutos2Sig(2) and Minutos2Sig(1) and not Minutos2Sig(0)) )  or not piscadorM;
	
	Minutos2(4)<= ((Minutos2Sig(0)) or 
	(not Minutos2Sig(3) and Minutos2Sig(2) and not Minutos2Sig(1)) or
	(Minutos2Sig(3) and Minutos2Sig(2) and Minutos2Sig(1)) )  or not piscadorM;
	
	Minutos2(5)<= ((not Minutos2Sig(3) and not Minutos2Sig(2) and Minutos2Sig(0)) or 
	(not Minutos2Sig(3) and not Minutos2Sig(2) and Minutos2Sig(1)) or
	(not Minutos2Sig(3) and Minutos2Sig(1) and Minutos2Sig(0)) or 
	(Minutos2Sig(3) and Minutos2Sig(2) and not Minutos2Sig(1)) or
	(not Minutos2Sig(2) and Minutos2Sig(1) and Minutos2Sig(0))  ) or not piscadorM;	
	
	Minutos2(6)<= ((not Minutos2Sig(3) and not Minutos2Sig(2) and not Minutos2Sig(1)) or
	(not Minutos2Sig(3) and Minutos2Sig(2) and Minutos2Sig(1) and Minutos2Sig(0)) or
	(Minutos2Sig(3) and not Minutos2Sig(2) and Minutos2Sig(1))  ) or not piscadorM;
	
	
		--Horas
Horas1(0)<= ((not Horas1Sig(3) and Horas1Sig(2) and not Horas1Sig(0)) or 
	(not Horas1Sig(3) and not Horas1Sig(2) and not Horas1Sig(1) and Horas1Sig(0)) or
	(Horas1Sig(3) and not Horas1Sig(2) and Horas1Sig(1) and Horas1Sig(0)) or 
	(Horas1Sig(2) and Horas1Sig(1) and not Horas1Sig(0)) ) or not piscadorH;
	
	Horas1(1)<=( (not Horas1Sig(3) and Horas1Sig(2) and not Horas1Sig(1) and Horas1Sig(0)) or 
	(Horas1Sig(3) and Horas1Sig(2) and Horas1Sig(1) and Horas1Sig(0)) or
	(not Horas1Sig(3) and Horas1Sig(2) and Horas1Sig(1) and not Horas1Sig(0)) ) or not piscadorH;
	
	Horas1(2)<= ((Horas1Sig(3) and Horas1Sig(2) and not Horas1Sig(1) and not Horas1Sig(0)) or 
	(not Horas1Sig(3) and not Horas1Sig(2) and Horas1Sig(1) and not Horas1Sig(0)) ) or not piscadorH;
	
	Horas1(3)<= ((not Horas1Sig(2) and not Horas1Sig(1) and Horas1Sig(0)) or 
	(not Horas1Sig(3) and Horas1Sig(2) and not Horas1Sig(1) and not Horas1Sig(0)) or
	(Horas1Sig(3) and not Horas1Sig(2) and Horas1Sig(0)) or 
	(not Horas1Sig(3) and Horas1Sig(2) and Horas1Sig(1) and Horas1Sig(0)) or 
	(Horas1Sig(3) and Horas1Sig(2) and Horas1Sig(1) and not Horas1Sig(0)) ) or not piscadorH;
	
	Horas1(4)<= ((Horas1Sig(0)) or (not Horas1Sig(3) and Horas1Sig(2) and not Horas1Sig(1)) or
	(Horas1Sig(3) and Horas1Sig(2) and Horas1Sig(1)) ) or not piscadorH;
	
	Horas1(5)<= ((not Horas1Sig(3) and not Horas1Sig(2) and Horas1Sig(0)) or 
	(not Horas1Sig(3) and not Horas1Sig(2) and Horas1Sig(1)) or
	(not Horas1Sig(3) and Horas1Sig(1) and Horas1Sig(0)) or 
	(Horas1Sig(3) and Horas1Sig(2) and not Horas1Sig(1)) or
	(not Horas1Sig(2) and Horas1Sig(1) and Horas1Sig(0)) ) or not piscadorH;	
	
	Horas1(6)<= ((not Horas1Sig(3) and not Horas1Sig(2) and not Horas1Sig(1)) or
	(not Horas1Sig(3) and Horas1Sig(2) and Horas1Sig(1) and Horas1Sig(0)) or
	(Horas1Sig(3) and not Horas1Sig(2) and Horas1Sig(1)) ) or not piscadorH;
	
	
	
	Horas2(0)<= ((not Horas2Sig(3) and Horas2Sig(2) and not Horas2Sig(0)) or 
	(not Horas2Sig(3) and not Horas2Sig(2) and not Horas2Sig(1) and Horas2Sig(0)) or
	(Horas2Sig(3) and not Horas2Sig(2) and Horas2Sig(1) and Horas2Sig(0)) or 
	(Horas2Sig(2) and Horas2Sig(1) and not Horas2Sig(0)) ) or not piscadorH;
	
	Horas2(1)<= ((not Horas2Sig(3) and Horas2Sig(2) and not Horas2Sig(1) and Horas2Sig(0)) or 
	(Horas2Sig(3) and Horas2Sig(2) and Horas2Sig(1) and Horas2Sig(0)) or
	(not Horas2Sig(3) and Horas2Sig(2) and Horas2Sig(1) and not Horas2Sig(0)) ) or not piscadorH;
	
	Horas2(2)<= ((Horas2Sig(3) and Horas2Sig(2) and not Horas2Sig(1) and not Horas2Sig(0)) or 
	(not Horas2Sig(3) and not Horas2Sig(2) and Horas2Sig(1) and not Horas2Sig(0)) ) or not piscadorH;
	
	Horas2(3)<= ((not Horas2Sig(2) and not Horas2Sig(1) and Horas2Sig(0)) or 
	(not Horas2Sig(3) and Horas2Sig(2) and not Horas2Sig(1) and not Horas2Sig(0)) or
	(Horas2Sig(3) and not Horas2Sig(2) and Horas2Sig(0)) or 
	(not Horas2Sig(3) and Horas2Sig(2) and Horas2Sig(1) and Horas2Sig(0)) or 
	(Horas2Sig(3) and Horas2Sig(2) and Horas2Sig(1) and not Horas2Sig(0)) ) or not piscadorH;
	
	Horas2(4)<= ((Horas2Sig(0)) or 
	(not Horas2Sig(3) and Horas2Sig(2) and not Horas2Sig(1)) or
	(Horas2Sig(3) and Horas2Sig(2) and Horas2Sig(1)) ) or not piscadorH;
	
	Horas2(5)<= ((not Horas2Sig(3) and not Horas2Sig(2) and Horas2Sig(0)) or 
	(not Horas2Sig(3) and not Horas2Sig(2) and Horas2Sig(1)) or
	(not Horas2Sig(3) and Horas2Sig(1) and Horas2Sig(0)) or 
	(Horas2Sig(3) and Horas2Sig(2) and not Horas2Sig(1)) or
	(not Horas2Sig(2) and Horas2Sig(1) and Horas2Sig(0)) ) or not piscadorH;	
	
	Horas2(6)<= ((not Horas2Sig(3) and not Horas2Sig(2) and not Horas2Sig(1)) or
	(not Horas2Sig(3) and Horas2Sig(2) and Horas2Sig(1) and Horas2Sig(0)) or
	(Horas2Sig(3) and not Horas2Sig(2) and Horas2Sig(1)) ) or not piscadorH;

end decodificador;