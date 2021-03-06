library ieee;
use ieee.std_logic_1164.all;

entity cofre is
port(entrada: in std_logic_vector (7 downto 0);
     reset: in std_logic;
	  cs: in std_logic;
	  clk: in std_logic;
	  
	  bloq: out std_logic;
	  abre: out std_logic;
	  modo: out std_logic);
	  end cofre;
	

architecture cofre of cofre is
	
component FFD is
port(D, C: in std_logic;
     clock, reset: in std_logic;
	  Q, Qbar: out std_logic);
end component;	

component FFDM is
port(D, C: in std_logic;
     clock, reset: in std_logic;
	  Q, Qbar: out std_logic);
end component;		  

	  signal QSaida: std_logic;
	  signal QSaidaffd: std_logic_vector(7 downto 0);
	  signal QXNOR: std_logic_vector(7 downto 0);
	  signal QXNOResult: std_logic;
	  signal Signalbloq: std_logic;
begin

   FFD0: ffd port map(entrada(0), cs, not clk, not signalbloq, QSaidaffd(0));	  
   FFD1: ffd port map(entrada(1), cs, not clk, not signalbloq, QSaidaffd(1));	 
   FFD2: ffd port map(entrada(2), cs, not clk, not signalbloq, QSaidaffd(2));	 
   FFD3: ffd port map(entrada(3), cs, not clk, not signalbloq, QSaidaffd(3));	 
   FFD4: ffd port map(entrada(4), cs, not clk, not signalbloq, QSaidaffd(4));	 
   FFD5: ffd port map(entrada(5), cs, not clk, not signalbloq, QSaidaffd(5));	 
   FFD6: ffd port map(entrada(6), cs, not clk, not signalbloq, QSaidaffd(6));	 
   FFD7: ffd port map(entrada(7), cs, not clk, not signalbloq, QSaidaffd(7));	 

   QXNOR(0) <= QSaidaffd(0) XNOR entrada(0);
	QXNOR(1) <= QSaidaffd(1) XNOR entrada(1);
	QXNOR(2) <= QSaidaffd(2) XNOR entrada(2);
	QXNOR(3) <= QSaidaffd(3) XNOR entrada(3);
	QXNOR(4) <= QSaidaffd(4) XNOR entrada(4);
	QXNOR(5) <= QSaidaffd(5) XNOR entrada(5);
	QXNOR(6) <= QSaidaffd(6) XNOR entrada(6);
	QXNOR(7) <= QSaidaffd(7) XNOR entrada(7);
	
	QXNOResult <= QXNOR(0) and QXNOR(1) and QXNOR(2)and QXNOR(3)and QXNOR(4) and QXNOR(5) and QXNOR(6) and QXNOR(7) and signalbloq;
	
	FFD8: ffd port map (QXNOResult, not(cs), not clk, Qsaida and (not(reset)) , QSaida);
	abre <= not Qsaida;
	FFDM0: ffdm port map (QXNOResult, not(cs), not clk, not (reset), Signalbloq);
	bloq <= not(Signalbloq);
	modo <= cs;
	
	end cofre;
