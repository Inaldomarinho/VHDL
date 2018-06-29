library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cronometro is
   port( start, clock, reset: in  std_logic;
	    Mili1 : out std_logic_vector (3 downto 0);
		 Mili2 : out std_logic_vector (3 downto 0);
       Segundos1 : out std_logic_vector (3 downto 0);
		 Segundos2 : out std_logic_vector (3 downto 0);
		 Minutos1 : out std_logic_vector (3 downto 0);
		 Minutos2 : out std_logic_vector (3 downto 0));
end cronometro;

architecture cronometro of cronometro is
   signal SignalClk: std_logic;
	signal SignalJK: std_logic;
	signal S0: std_logic_vector (3 downto 0); --Sinal de saida do cronometro
	signal S1: std_logic_vector (3 downto 0);
	signal S2: std_logic_vector (3 downto 0);
	signal S3: std_logic_vector (3 downto 0);
	signal S4: std_logic_vector (3 downto 0);
	signal S5: std_logic_vector (3 downto 0);
	signal C: std_logic_vector (5 downto 0); --Sinal de carry
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
begin
	DIV0: DivisorFreq port map (clock, SignalClk);
	FFJK : JK port map ('1', '1', reset, start, SignalJK);
	CONT0A9_1 : Contador0a9 port map (SignalClk, reset, SignalJK, S0, C(0));
	CONT0A9_2 : Contador0a9 port map (C(0), reset, '1', S1, C(1));
	CONT0A9_3 : Contador0a9 port map (C(1), reset, '1', S2, C(2));
	CONT0A5_1 : Contador0a5 port map (C(2), reset, '1', S3, C(3));
	CONT0A9_4 : Contador0a9 port map (C(3), reset, '1', S4, C(4));
   CONT0A5_2 : Contador0a5 port map (C(4), reset, '1', S5, C(5));
	
	
	mili1 <= s0;
	mili2 <= s1;
	Segundos1 <= s2;
	Segundos2 <= s3;
	Minutos1 <= s4;
	Minutos2 <= s5;
	
	
end cronometro;