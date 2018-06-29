-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/08/2018 11:25:53"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	clock : IN std_logic;
	mode : IN std_logic;
	set : IN std_logic;
	start : IN std_logic;
	config : IN std_logic;
	Segundos1 : OUT std_logic_vector(6 DOWNTO 0);
	Segundos2 : OUT std_logic_vector(6 DOWNTO 0);
	Minutos1 : OUT std_logic_vector(6 DOWNTO 0);
	Minutos2 : OUT std_logic_vector(6 DOWNTO 0);
	Horas1 : OUT std_logic_vector(6 DOWNTO 0);
	Horas2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- Segundos1[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos1[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos1[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos1[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos1[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos1[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos1[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- set	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- config	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_config : std_logic;
SIGNAL ww_Segundos1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Segundos2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Minutos1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Minutos2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Horas1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Horas2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \DIV0|estado~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MIN0A9|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HR0A9|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG0A9|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV0|Add0~0_combout\ : std_logic;
SIGNAL \DIV0|Add0~1\ : std_logic;
SIGNAL \DIV0|Add0~2_combout\ : std_logic;
SIGNAL \DIV0|Add0~3\ : std_logic;
SIGNAL \DIV0|Add0~4_combout\ : std_logic;
SIGNAL \DIV0|Add0~5\ : std_logic;
SIGNAL \DIV0|Add0~6_combout\ : std_logic;
SIGNAL \DIV0|Add0~7\ : std_logic;
SIGNAL \DIV0|Add0~8_combout\ : std_logic;
SIGNAL \DIV0|Add0~9\ : std_logic;
SIGNAL \DIV0|Add0~10_combout\ : std_logic;
SIGNAL \DIV0|Add0~11\ : std_logic;
SIGNAL \DIV0|Add0~12_combout\ : std_logic;
SIGNAL \DIV0|Add0~13\ : std_logic;
SIGNAL \DIV0|Add0~14_combout\ : std_logic;
SIGNAL \DIV0|Add0~15\ : std_logic;
SIGNAL \DIV0|Add0~16_combout\ : std_logic;
SIGNAL \DIV0|Add0~17\ : std_logic;
SIGNAL \DIV0|Add0~18_combout\ : std_logic;
SIGNAL \DIV0|Add0~19\ : std_logic;
SIGNAL \DIV0|Add0~20_combout\ : std_logic;
SIGNAL \DIV0|Add0~21\ : std_logic;
SIGNAL \DIV0|Add0~22_combout\ : std_logic;
SIGNAL \DIV0|Add0~23\ : std_logic;
SIGNAL \DIV0|Add0~24_combout\ : std_logic;
SIGNAL \DIV0|Add0~25\ : std_logic;
SIGNAL \DIV0|Add0~26_combout\ : std_logic;
SIGNAL \DIV0|Add0~27\ : std_logic;
SIGNAL \DIV0|Add0~28_combout\ : std_logic;
SIGNAL \DIV0|Add0~29\ : std_logic;
SIGNAL \DIV0|Add0~30_combout\ : std_logic;
SIGNAL \DIV0|Add0~31\ : std_logic;
SIGNAL \DIV0|Add0~32_combout\ : std_logic;
SIGNAL \DIV0|Add0~33\ : std_logic;
SIGNAL \DIV0|Add0~34_combout\ : std_logic;
SIGNAL \DIV0|Add0~35\ : std_logic;
SIGNAL \DIV0|Add0~36_combout\ : std_logic;
SIGNAL \DIV0|Add0~37\ : std_logic;
SIGNAL \DIV0|Add0~38_combout\ : std_logic;
SIGNAL \DIV0|Add0~39\ : std_logic;
SIGNAL \DIV0|Add0~40_combout\ : std_logic;
SIGNAL \DIV0|Add0~41\ : std_logic;
SIGNAL \DIV0|Add0~42_combout\ : std_logic;
SIGNAL \DIV0|Add0~43\ : std_logic;
SIGNAL \DIV0|Add0~44_combout\ : std_logic;
SIGNAL \DIV0|Add0~45\ : std_logic;
SIGNAL \DIV0|Add0~46_combout\ : std_logic;
SIGNAL \DIV0|Add0~47\ : std_logic;
SIGNAL \DIV0|Add0~48_combout\ : std_logic;
SIGNAL \DIV0|estado~regout\ : std_logic;
SIGNAL \SEG0A9|tc~regout\ : std_logic;
SIGNAL \MIN0A9|tc~regout\ : std_logic;
SIGNAL \HR0A9|tc~regout\ : std_logic;
SIGNAL \DIV0|Equal0~0_combout\ : std_logic;
SIGNAL \DIV0|Equal0~1_combout\ : std_logic;
SIGNAL \DIV0|Equal0~2_combout\ : std_logic;
SIGNAL \DIV0|Equal0~3_combout\ : std_logic;
SIGNAL \DIV0|Equal0~4_combout\ : std_logic;
SIGNAL \DIV0|Equal0~5_combout\ : std_logic;
SIGNAL \DIV0|Equal0~6_combout\ : std_logic;
SIGNAL \DIV0|Equal0~7_combout\ : std_logic;
SIGNAL \DIV0|estado~0_combout\ : std_logic;
SIGNAL \SEG0A9|Equal0~0_combout\ : std_logic;
SIGNAL \SEG0A5|tc~regout\ : std_logic;
SIGNAL \LOGICADOCONFIG|signalcont~regout\ : std_logic;
SIGNAL \LOGICADOCONFIG|FFJK|temp~regout\ : std_logic;
SIGNAL \comb~3\ : std_logic;
SIGNAL \MIN0A9|Equal0~0_combout\ : std_logic;
SIGNAL \MIN0A5|tc~regout\ : std_logic;
SIGNAL \comb~combout\ : std_logic;
SIGNAL \DIV0|contagem~0_combout\ : std_logic;
SIGNAL \DIV0|contagem~1_combout\ : std_logic;
SIGNAL \DIV0|contagem~2_combout\ : std_logic;
SIGNAL \DIV0|contagem~3_combout\ : std_logic;
SIGNAL \DIV0|contagem~4_combout\ : std_logic;
SIGNAL \DIV0|contagem~5_combout\ : std_logic;
SIGNAL \DIV0|contagem~6_combout\ : std_logic;
SIGNAL \DIV0|contagem~7_combout\ : std_logic;
SIGNAL \DIV0|contagem~8_combout\ : std_logic;
SIGNAL \DIV0|contagem~9_combout\ : std_logic;
SIGNAL \DIV0|contagem~10_combout\ : std_logic;
SIGNAL \DIV0|contagem~11_combout\ : std_logic;
SIGNAL \SEG0A5|Equal0~0_combout\ : std_logic;
SIGNAL \LOGICADOCONFIG|signalmode~regout\ : std_logic;
SIGNAL \LOGICADOCONFIG|signalcont~0_combout\ : std_logic;
SIGNAL \LOGICADOCONFIG|comb~0_combout\ : std_logic;
SIGNAL \MIN0A5|Equal0~0_combout\ : std_logic;
SIGNAL \LOGICADOCONFIG|signalmode~0_combout\ : std_logic;
SIGNAL \HR0A9|tc~0_combout\ : std_logic;
SIGNAL \HR0A9|tc~1_combout\ : std_logic;
SIGNAL \DIV0|contagem[0]~12_combout\ : std_logic;
SIGNAL \LOGICADOCONFIG|FFJK|temp~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \set~combout\ : std_logic;
SIGNAL \config~combout\ : std_logic;
SIGNAL \mode~combout\ : std_logic;
SIGNAL \DIV0|estado~clkctrl_outclk\ : std_logic;
SIGNAL \comb~3clkctrl_outclk\ : std_logic;
SIGNAL \comb~clkctrl_outclk\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \MIN0A9|tc~clkctrl_outclk\ : std_logic;
SIGNAL \HR0A9|tc~clkctrl_outclk\ : std_logic;
SIGNAL \SEG0A9|tc~clkctrl_outclk\ : std_logic;
SIGNAL \SEG0A9|contagem[0]~3_combout\ : std_logic;
SIGNAL \SEG0A9|contagem~2_combout\ : std_logic;
SIGNAL \SEG0A9|contagem[2]~0_combout\ : std_logic;
SIGNAL \SEG0A9|contagem~1_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[1]~1_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[2]~2_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[3]~3_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[4]~4_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[5]~5_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[6]~6_combout\ : std_logic;
SIGNAL \SEG0A5|contagem[0]~2_combout\ : std_logic;
SIGNAL \SEG0A5|contagem~0_combout\ : std_logic;
SIGNAL \SEG0A5|contagem~1_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2[1]~1_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2~2_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2~3_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2~4_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2[5]~5_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2~6_combout\ : std_logic;
SIGNAL \MIN0A9|contagem[0]~3_combout\ : std_logic;
SIGNAL \MIN0A9|contagem[2]~0_combout\ : std_logic;
SIGNAL \MIN0A9|contagem~2_combout\ : std_logic;
SIGNAL \MIN0A9|contagem~1_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[1]~1_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[2]~2_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[3]~3_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[4]~4_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[5]~5_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[6]~6_combout\ : std_logic;
SIGNAL \MIN0A5|contagem[0]~2_combout\ : std_logic;
SIGNAL \MIN0A5|contagem~1_combout\ : std_logic;
SIGNAL \MIN0A5|contagem~0_combout\ : std_logic;
SIGNAL \DECODIF|Minutos2[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|Minutos2[1]~1_combout\ : std_logic;
SIGNAL \DECODIF|Minutos2~2_combout\ : std_logic;
SIGNAL \DECODIF|Minutos2~3_combout\ : std_logic;
SIGNAL \DECODIF|Minutos2~4_combout\ : std_logic;
SIGNAL \DECODIF|Minutos2[5]~5_combout\ : std_logic;
SIGNAL \DECODIF|Minutos2~6_combout\ : std_logic;
SIGNAL \HR0A9|contagem[2]~0_combout\ : std_logic;
SIGNAL \DECODIF|Horas2~0_combout\ : std_logic;
SIGNAL \HR0A2|contagem[1]~feeder_combout\ : std_logic;
SIGNAL \DECODIF|Horas2~1_combout\ : std_logic;
SIGNAL \HR0A2|contagem[0]~0_combout\ : std_logic;
SIGNAL \SignalResetHora~3_combout\ : std_logic;
SIGNAL \SignalResetHora~4_combout\ : std_logic;
SIGNAL \HR0A9|contagem[0]~3_combout\ : std_logic;
SIGNAL \HR0A9|contagem~2_combout\ : std_logic;
SIGNAL \HR0A9|contagem~1_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[1]~1_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[2]~2_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[3]~3_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[4]~4_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[5]~5_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[6]~6_combout\ : std_logic;
SIGNAL \SignalResetHora~2_combout\ : std_logic;
SIGNAL \MIN0A9|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MIN0A5|contagem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \HR0A9|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HR0A2|contagem\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SEG0A5|contagem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SEG0A9|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV0|contagem\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \HR0A2|ALT_INV_contagem\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \DECODIF|ALT_INV_Horas1[2]~2_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Horas1[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Minutos2[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Minutos1[2]~2_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Minutos1[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Segundos2[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Segundos1[2]~2_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Segundos1[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_set~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_mode <= mode;
ww_set <= set;
ww_start <= start;
ww_config <= config;
Segundos1 <= ww_Segundos1;
Segundos2 <= ww_Segundos2;
Minutos1 <= ww_Minutos1;
Minutos2 <= ww_Minutos2;
Horas1 <= ww_Horas1;
Horas2 <= ww_Horas2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DIV0|estado~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \DIV0|estado~regout\);

\comb~3clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \comb~3\);

\comb~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \comb~combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\MIN0A9|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \MIN0A9|tc~regout\);

\HR0A9|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \HR0A9|tc~regout\);

\SEG0A9|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SEG0A9|tc~regout\);
\HR0A2|ALT_INV_contagem\(1) <= NOT \HR0A2|contagem\(1);
\DECODIF|ALT_INV_Horas1[2]~2_combout\ <= NOT \DECODIF|Horas1[2]~2_combout\;
\DECODIF|ALT_INV_Horas1[0]~0_combout\ <= NOT \DECODIF|Horas1[0]~0_combout\;
\DECODIF|ALT_INV_Minutos2[0]~0_combout\ <= NOT \DECODIF|Minutos2[0]~0_combout\;
\DECODIF|ALT_INV_Minutos1[2]~2_combout\ <= NOT \DECODIF|Minutos1[2]~2_combout\;
\DECODIF|ALT_INV_Minutos1[0]~0_combout\ <= NOT \DECODIF|Minutos1[0]~0_combout\;
\DECODIF|ALT_INV_Segundos2[0]~0_combout\ <= NOT \DECODIF|Segundos2[0]~0_combout\;
\DECODIF|ALT_INV_Segundos1[2]~2_combout\ <= NOT \DECODIF|Segundos1[2]~2_combout\;
\DECODIF|ALT_INV_Segundos1[0]~0_combout\ <= NOT \DECODIF|Segundos1[0]~0_combout\;
\ALT_INV_set~combout\ <= NOT \set~combout\;

-- Location: LCCOMB_X24_Y13_N8
\DIV0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~0_combout\ = \DIV0|contagem\(0) $ (GND)
-- \DIV0|Add0~1\ = CARRY(!\DIV0|contagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(0),
	datad => VCC,
	combout => \DIV0|Add0~0_combout\,
	cout => \DIV0|Add0~1\);

-- Location: LCCOMB_X24_Y13_N10
\DIV0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~2_combout\ = (\DIV0|contagem\(1) & (!\DIV0|Add0~1\)) # (!\DIV0|contagem\(1) & ((\DIV0|Add0~1\) # (GND)))
-- \DIV0|Add0~3\ = CARRY((!\DIV0|Add0~1\) # (!\DIV0|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(1),
	datad => VCC,
	cin => \DIV0|Add0~1\,
	combout => \DIV0|Add0~2_combout\,
	cout => \DIV0|Add0~3\);

-- Location: LCCOMB_X24_Y13_N12
\DIV0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~4_combout\ = (\DIV0|contagem\(2) & (\DIV0|Add0~3\ $ (GND))) # (!\DIV0|contagem\(2) & (!\DIV0|Add0~3\ & VCC))
-- \DIV0|Add0~5\ = CARRY((\DIV0|contagem\(2) & !\DIV0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(2),
	datad => VCC,
	cin => \DIV0|Add0~3\,
	combout => \DIV0|Add0~4_combout\,
	cout => \DIV0|Add0~5\);

-- Location: LCCOMB_X24_Y13_N14
\DIV0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~6_combout\ = (\DIV0|contagem\(3) & (!\DIV0|Add0~5\)) # (!\DIV0|contagem\(3) & ((\DIV0|Add0~5\) # (GND)))
-- \DIV0|Add0~7\ = CARRY((!\DIV0|Add0~5\) # (!\DIV0|contagem\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(3),
	datad => VCC,
	cin => \DIV0|Add0~5\,
	combout => \DIV0|Add0~6_combout\,
	cout => \DIV0|Add0~7\);

-- Location: LCCOMB_X24_Y13_N16
\DIV0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~8_combout\ = (\DIV0|contagem\(4) & (\DIV0|Add0~7\ $ (GND))) # (!\DIV0|contagem\(4) & (!\DIV0|Add0~7\ & VCC))
-- \DIV0|Add0~9\ = CARRY((\DIV0|contagem\(4) & !\DIV0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(4),
	datad => VCC,
	cin => \DIV0|Add0~7\,
	combout => \DIV0|Add0~8_combout\,
	cout => \DIV0|Add0~9\);

-- Location: LCCOMB_X24_Y13_N18
\DIV0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~10_combout\ = (\DIV0|contagem\(5) & (!\DIV0|Add0~9\)) # (!\DIV0|contagem\(5) & ((\DIV0|Add0~9\) # (GND)))
-- \DIV0|Add0~11\ = CARRY((!\DIV0|Add0~9\) # (!\DIV0|contagem\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(5),
	datad => VCC,
	cin => \DIV0|Add0~9\,
	combout => \DIV0|Add0~10_combout\,
	cout => \DIV0|Add0~11\);

-- Location: LCCOMB_X24_Y13_N20
\DIV0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~12_combout\ = (\DIV0|contagem\(6) & (\DIV0|Add0~11\ $ (GND))) # (!\DIV0|contagem\(6) & (!\DIV0|Add0~11\ & VCC))
-- \DIV0|Add0~13\ = CARRY((\DIV0|contagem\(6) & !\DIV0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(6),
	datad => VCC,
	cin => \DIV0|Add0~11\,
	combout => \DIV0|Add0~12_combout\,
	cout => \DIV0|Add0~13\);

-- Location: LCCOMB_X24_Y13_N22
\DIV0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~14_combout\ = (\DIV0|contagem\(7) & (!\DIV0|Add0~13\)) # (!\DIV0|contagem\(7) & ((\DIV0|Add0~13\) # (GND)))
-- \DIV0|Add0~15\ = CARRY((!\DIV0|Add0~13\) # (!\DIV0|contagem\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(7),
	datad => VCC,
	cin => \DIV0|Add0~13\,
	combout => \DIV0|Add0~14_combout\,
	cout => \DIV0|Add0~15\);

-- Location: LCCOMB_X24_Y13_N24
\DIV0|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~16_combout\ = (\DIV0|contagem\(8) & (\DIV0|Add0~15\ $ (GND))) # (!\DIV0|contagem\(8) & (!\DIV0|Add0~15\ & VCC))
-- \DIV0|Add0~17\ = CARRY((\DIV0|contagem\(8) & !\DIV0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(8),
	datad => VCC,
	cin => \DIV0|Add0~15\,
	combout => \DIV0|Add0~16_combout\,
	cout => \DIV0|Add0~17\);

-- Location: LCCOMB_X24_Y13_N26
\DIV0|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~18_combout\ = (\DIV0|contagem\(9) & (!\DIV0|Add0~17\)) # (!\DIV0|contagem\(9) & ((\DIV0|Add0~17\) # (GND)))
-- \DIV0|Add0~19\ = CARRY((!\DIV0|Add0~17\) # (!\DIV0|contagem\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(9),
	datad => VCC,
	cin => \DIV0|Add0~17\,
	combout => \DIV0|Add0~18_combout\,
	cout => \DIV0|Add0~19\);

-- Location: LCCOMB_X24_Y13_N28
\DIV0|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~20_combout\ = (\DIV0|contagem\(10) & (\DIV0|Add0~19\ $ (GND))) # (!\DIV0|contagem\(10) & (!\DIV0|Add0~19\ & VCC))
-- \DIV0|Add0~21\ = CARRY((\DIV0|contagem\(10) & !\DIV0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(10),
	datad => VCC,
	cin => \DIV0|Add0~19\,
	combout => \DIV0|Add0~20_combout\,
	cout => \DIV0|Add0~21\);

-- Location: LCCOMB_X24_Y13_N30
\DIV0|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~22_combout\ = (\DIV0|contagem\(11) & (!\DIV0|Add0~21\)) # (!\DIV0|contagem\(11) & ((\DIV0|Add0~21\) # (GND)))
-- \DIV0|Add0~23\ = CARRY((!\DIV0|Add0~21\) # (!\DIV0|contagem\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(11),
	datad => VCC,
	cin => \DIV0|Add0~21\,
	combout => \DIV0|Add0~22_combout\,
	cout => \DIV0|Add0~23\);

-- Location: LCCOMB_X24_Y12_N0
\DIV0|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~24_combout\ = (\DIV0|contagem\(12) & (\DIV0|Add0~23\ $ (GND))) # (!\DIV0|contagem\(12) & (!\DIV0|Add0~23\ & VCC))
-- \DIV0|Add0~25\ = CARRY((\DIV0|contagem\(12) & !\DIV0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(12),
	datad => VCC,
	cin => \DIV0|Add0~23\,
	combout => \DIV0|Add0~24_combout\,
	cout => \DIV0|Add0~25\);

-- Location: LCCOMB_X24_Y12_N2
\DIV0|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~26_combout\ = (\DIV0|contagem\(13) & (!\DIV0|Add0~25\)) # (!\DIV0|contagem\(13) & ((\DIV0|Add0~25\) # (GND)))
-- \DIV0|Add0~27\ = CARRY((!\DIV0|Add0~25\) # (!\DIV0|contagem\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(13),
	datad => VCC,
	cin => \DIV0|Add0~25\,
	combout => \DIV0|Add0~26_combout\,
	cout => \DIV0|Add0~27\);

-- Location: LCCOMB_X24_Y12_N4
\DIV0|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~28_combout\ = (\DIV0|contagem\(14) & (\DIV0|Add0~27\ $ (GND))) # (!\DIV0|contagem\(14) & (!\DIV0|Add0~27\ & VCC))
-- \DIV0|Add0~29\ = CARRY((\DIV0|contagem\(14) & !\DIV0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(14),
	datad => VCC,
	cin => \DIV0|Add0~27\,
	combout => \DIV0|Add0~28_combout\,
	cout => \DIV0|Add0~29\);

-- Location: LCCOMB_X24_Y12_N6
\DIV0|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~30_combout\ = (\DIV0|contagem\(15) & (!\DIV0|Add0~29\)) # (!\DIV0|contagem\(15) & ((\DIV0|Add0~29\) # (GND)))
-- \DIV0|Add0~31\ = CARRY((!\DIV0|Add0~29\) # (!\DIV0|contagem\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(15),
	datad => VCC,
	cin => \DIV0|Add0~29\,
	combout => \DIV0|Add0~30_combout\,
	cout => \DIV0|Add0~31\);

-- Location: LCCOMB_X24_Y12_N8
\DIV0|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~32_combout\ = (\DIV0|contagem\(16) & (\DIV0|Add0~31\ $ (GND))) # (!\DIV0|contagem\(16) & (!\DIV0|Add0~31\ & VCC))
-- \DIV0|Add0~33\ = CARRY((\DIV0|contagem\(16) & !\DIV0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(16),
	datad => VCC,
	cin => \DIV0|Add0~31\,
	combout => \DIV0|Add0~32_combout\,
	cout => \DIV0|Add0~33\);

-- Location: LCCOMB_X24_Y12_N10
\DIV0|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~34_combout\ = (\DIV0|contagem\(17) & (!\DIV0|Add0~33\)) # (!\DIV0|contagem\(17) & ((\DIV0|Add0~33\) # (GND)))
-- \DIV0|Add0~35\ = CARRY((!\DIV0|Add0~33\) # (!\DIV0|contagem\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(17),
	datad => VCC,
	cin => \DIV0|Add0~33\,
	combout => \DIV0|Add0~34_combout\,
	cout => \DIV0|Add0~35\);

-- Location: LCCOMB_X24_Y12_N12
\DIV0|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~36_combout\ = (\DIV0|contagem\(18) & (\DIV0|Add0~35\ $ (GND))) # (!\DIV0|contagem\(18) & (!\DIV0|Add0~35\ & VCC))
-- \DIV0|Add0~37\ = CARRY((\DIV0|contagem\(18) & !\DIV0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(18),
	datad => VCC,
	cin => \DIV0|Add0~35\,
	combout => \DIV0|Add0~36_combout\,
	cout => \DIV0|Add0~37\);

-- Location: LCCOMB_X24_Y12_N14
\DIV0|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~38_combout\ = (\DIV0|contagem\(19) & (!\DIV0|Add0~37\)) # (!\DIV0|contagem\(19) & ((\DIV0|Add0~37\) # (GND)))
-- \DIV0|Add0~39\ = CARRY((!\DIV0|Add0~37\) # (!\DIV0|contagem\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(19),
	datad => VCC,
	cin => \DIV0|Add0~37\,
	combout => \DIV0|Add0~38_combout\,
	cout => \DIV0|Add0~39\);

-- Location: LCCOMB_X24_Y12_N16
\DIV0|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~40_combout\ = (\DIV0|contagem\(20) & (\DIV0|Add0~39\ $ (GND))) # (!\DIV0|contagem\(20) & (!\DIV0|Add0~39\ & VCC))
-- \DIV0|Add0~41\ = CARRY((\DIV0|contagem\(20) & !\DIV0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(20),
	datad => VCC,
	cin => \DIV0|Add0~39\,
	combout => \DIV0|Add0~40_combout\,
	cout => \DIV0|Add0~41\);

-- Location: LCCOMB_X24_Y12_N18
\DIV0|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~42_combout\ = (\DIV0|contagem\(21) & (!\DIV0|Add0~41\)) # (!\DIV0|contagem\(21) & ((\DIV0|Add0~41\) # (GND)))
-- \DIV0|Add0~43\ = CARRY((!\DIV0|Add0~41\) # (!\DIV0|contagem\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(21),
	datad => VCC,
	cin => \DIV0|Add0~41\,
	combout => \DIV0|Add0~42_combout\,
	cout => \DIV0|Add0~43\);

-- Location: LCCOMB_X24_Y12_N20
\DIV0|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~44_combout\ = (\DIV0|contagem\(22) & (\DIV0|Add0~43\ $ (GND))) # (!\DIV0|contagem\(22) & (!\DIV0|Add0~43\ & VCC))
-- \DIV0|Add0~45\ = CARRY((\DIV0|contagem\(22) & !\DIV0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(22),
	datad => VCC,
	cin => \DIV0|Add0~43\,
	combout => \DIV0|Add0~44_combout\,
	cout => \DIV0|Add0~45\);

-- Location: LCCOMB_X24_Y12_N22
\DIV0|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~46_combout\ = (\DIV0|contagem\(23) & (!\DIV0|Add0~45\)) # (!\DIV0|contagem\(23) & ((\DIV0|Add0~45\) # (GND)))
-- \DIV0|Add0~47\ = CARRY((!\DIV0|Add0~45\) # (!\DIV0|contagem\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(23),
	datad => VCC,
	cin => \DIV0|Add0~45\,
	combout => \DIV0|Add0~46_combout\,
	cout => \DIV0|Add0~47\);

-- Location: LCCOMB_X24_Y12_N24
\DIV0|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~48_combout\ = \DIV0|Add0~47\ $ (!\DIV0|contagem\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DIV0|contagem\(24),
	cin => \DIV0|Add0~47\,
	combout => \DIV0|Add0~48_combout\);

-- Location: LCFF_X25_Y12_N15
\DIV0|estado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|estado~regout\);

-- Location: LCFF_X64_Y7_N23
\SEG0A9|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIV0|estado~clkctrl_outclk\,
	datain => \SEG0A9|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SEG0A9|tc~regout\);

-- Location: LCFF_X1_Y14_N9
\MIN0A9|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	datain => \MIN0A9|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A9|tc~regout\);

-- Location: LCFF_X1_Y18_N31
\HR0A9|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~clkctrl_outclk\,
	datain => \HR0A9|tc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A9|tc~regout\);

-- Location: LCFF_X24_Y13_N1
\DIV0|contagem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(11));

-- Location: LCFF_X24_Y13_N29
\DIV0|contagem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(10));

-- Location: LCFF_X24_Y13_N27
\DIV0|contagem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(9));

-- Location: LCFF_X24_Y13_N25
\DIV0|contagem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(8));

-- Location: LCCOMB_X24_Y13_N2
\DIV0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~0_combout\ = (!\DIV0|contagem\(8) & (!\DIV0|contagem\(10) & (!\DIV0|contagem\(9) & \DIV0|contagem\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(8),
	datab => \DIV0|contagem\(10),
	datac => \DIV0|contagem\(9),
	datad => \DIV0|contagem\(11),
	combout => \DIV0|Equal0~0_combout\);

-- Location: LCFF_X25_Y12_N1
\DIV0|contagem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(6));

-- Location: LCFF_X24_Y13_N23
\DIV0|contagem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(7));

-- Location: LCFF_X24_Y13_N19
\DIV0|contagem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(5));

-- Location: LCFF_X24_Y13_N17
\DIV0|contagem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(4));

-- Location: LCCOMB_X25_Y12_N16
\DIV0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~1_combout\ = (!\DIV0|contagem\(4) & (\DIV0|contagem\(6) & (!\DIV0|contagem\(5) & !\DIV0|contagem\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(4),
	datab => \DIV0|contagem\(6),
	datac => \DIV0|contagem\(5),
	datad => \DIV0|contagem\(7),
	combout => \DIV0|Equal0~1_combout\);

-- Location: LCFF_X24_Y13_N5
\DIV0|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(0));

-- Location: LCFF_X24_Y13_N15
\DIV0|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(3));

-- Location: LCFF_X24_Y13_N13
\DIV0|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(2));

-- Location: LCFF_X24_Y13_N11
\DIV0|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(1));

-- Location: LCCOMB_X24_Y13_N6
\DIV0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~2_combout\ = (!\DIV0|contagem\(1) & (\DIV0|contagem\(0) & (!\DIV0|contagem\(3) & !\DIV0|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(1),
	datab => \DIV0|contagem\(0),
	datac => \DIV0|contagem\(3),
	datad => \DIV0|contagem\(2),
	combout => \DIV0|Equal0~2_combout\);

-- Location: LCFF_X25_Y12_N31
\DIV0|contagem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(12));

-- Location: LCFF_X25_Y12_N13
\DIV0|contagem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(13));

-- Location: LCFF_X25_Y12_N27
\DIV0|contagem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(14));

-- Location: LCFF_X24_Y12_N7
\DIV0|contagem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(15));

-- Location: LCCOMB_X25_Y12_N6
\DIV0|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~3_combout\ = (\DIV0|contagem\(13) & (\DIV0|contagem\(12) & (!\DIV0|contagem\(15) & \DIV0|contagem\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(13),
	datab => \DIV0|contagem\(12),
	datac => \DIV0|contagem\(15),
	datad => \DIV0|contagem\(14),
	combout => \DIV0|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y12_N28
\DIV0|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~4_combout\ = (\DIV0|Equal0~3_combout\ & (\DIV0|Equal0~0_combout\ & (\DIV0|Equal0~1_combout\ & \DIV0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|Equal0~3_combout\,
	datab => \DIV0|Equal0~0_combout\,
	datac => \DIV0|Equal0~1_combout\,
	datad => \DIV0|Equal0~2_combout\,
	combout => \DIV0|Equal0~4_combout\);

-- Location: LCFF_X25_Y12_N21
\DIV0|contagem[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(16));

-- Location: LCFF_X25_Y12_N11
\DIV0|contagem[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(18));

-- Location: LCFF_X25_Y12_N19
\DIV0|contagem[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(19));

-- Location: LCFF_X24_Y12_N11
\DIV0|contagem[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(17));

-- Location: LCCOMB_X25_Y12_N24
\DIV0|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~5_combout\ = (!\DIV0|contagem\(17) & (\DIV0|contagem\(19) & (\DIV0|contagem\(16) & \DIV0|contagem\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(17),
	datab => \DIV0|contagem\(19),
	datac => \DIV0|contagem\(16),
	datad => \DIV0|contagem\(18),
	combout => \DIV0|Equal0~5_combout\);

-- Location: LCFF_X24_Y12_N31
\DIV0|contagem[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(24));

-- Location: LCFF_X24_Y12_N29
\DIV0|contagem[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(20));

-- Location: LCFF_X25_Y12_N9
\DIV0|contagem[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(21));

-- Location: LCFF_X24_Y12_N27
\DIV0|contagem[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(22));

-- Location: LCFF_X24_Y12_N23
\DIV0|contagem[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(23));

-- Location: LCCOMB_X25_Y12_N22
\DIV0|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~6_combout\ = (!\DIV0|contagem\(23) & (\DIV0|contagem\(22) & (\DIV0|contagem\(21) & \DIV0|contagem\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(23),
	datab => \DIV0|contagem\(22),
	datac => \DIV0|contagem\(21),
	datad => \DIV0|contagem\(20),
	combout => \DIV0|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y12_N4
\DIV0|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~7_combout\ = (\DIV0|contagem\(24) & (\DIV0|Equal0~6_combout\ & (\DIV0|Equal0~5_combout\ & \DIV0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(24),
	datab => \DIV0|Equal0~6_combout\,
	datac => \DIV0|Equal0~5_combout\,
	datad => \DIV0|Equal0~4_combout\,
	combout => \DIV0|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y12_N14
\DIV0|estado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|estado~0_combout\ = \DIV0|Equal0~7_combout\ $ (\DIV0|estado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|Equal0~7_combout\,
	datac => \DIV0|estado~regout\,
	combout => \DIV0|estado~0_combout\);

-- Location: LCCOMB_X64_Y7_N22
\SEG0A9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG0A9|Equal0~0_combout\ = (!\SEG0A9|contagem\(1) & (\SEG0A9|contagem\(0) & (\SEG0A9|contagem\(3) & !\SEG0A9|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A9|contagem\(1),
	datab => \SEG0A9|contagem\(0),
	datac => \SEG0A9|contagem\(3),
	datad => \SEG0A9|contagem\(2),
	combout => \SEG0A9|Equal0~0_combout\);

-- Location: LCFF_X64_Y11_N11
\SEG0A5|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SEG0A9|tc~regout\,
	datain => \SEG0A5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SEG0A5|tc~regout\);

-- Location: LCFF_X64_Y19_N27
\LOGICADOCONFIG|signalcont\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_set~combout\,
	datain => \LOGICADOCONFIG|signalcont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LOGICADOCONFIG|signalcont~regout\);

-- Location: LCFF_X63_Y19_N31
\LOGICADOCONFIG|FFJK|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \config~combout\,
	datain => \LOGICADOCONFIG|FFJK|temp~0_combout\,
	aclr => \LOGICADOCONFIG|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LOGICADOCONFIG|FFJK|temp~regout\);

-- Location: LCCOMB_X64_Y19_N14
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~3\ = LCELL((\SEG0A5|tc~regout\) # ((!\start~combout\ & (\LOGICADOCONFIG|signalcont~regout\ & \LOGICADOCONFIG|FFJK|temp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \LOGICADOCONFIG|signalcont~regout\,
	datac => \LOGICADOCONFIG|FFJK|temp~regout\,
	datad => \SEG0A5|tc~regout\,
	combout => \comb~3\);

-- Location: LCCOMB_X1_Y14_N8
\MIN0A9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A9|Equal0~0_combout\ = (\MIN0A9|contagem\(0) & (!\MIN0A9|contagem\(1) & (\MIN0A9|contagem\(3) & !\MIN0A9|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(0),
	datab => \MIN0A9|contagem\(1),
	datac => \MIN0A9|contagem\(3),
	datad => \MIN0A9|contagem\(2),
	combout => \MIN0A9|Equal0~0_combout\);

-- Location: LCFF_X1_Y16_N25
\MIN0A5|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \MIN0A9|tc~regout\,
	datain => \MIN0A5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A5|tc~regout\);

-- Location: LCCOMB_X64_Y19_N6
comb : cycloneii_lcell_comb
-- Equation(s):
-- \comb~combout\ = LCELL((\MIN0A5|tc~regout\) # ((!\LOGICADOCONFIG|signalcont~regout\ & (\LOGICADOCONFIG|FFJK|temp~regout\ & !\start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|tc~regout\,
	datab => \LOGICADOCONFIG|signalcont~regout\,
	datac => \LOGICADOCONFIG|FFJK|temp~regout\,
	datad => \start~combout\,
	combout => \comb~combout\);

-- Location: LCCOMB_X24_Y13_N0
\DIV0|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~0_combout\ = (\DIV0|Add0~22_combout\ & !\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|Add0~22_combout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|contagem~0_combout\);

-- Location: LCCOMB_X25_Y12_N0
\DIV0|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~1_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|Equal0~7_combout\,
	datac => \DIV0|Add0~12_combout\,
	combout => \DIV0|contagem~1_combout\);

-- Location: LCCOMB_X25_Y12_N30
\DIV0|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~2_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Equal0~7_combout\,
	datad => \DIV0|Add0~24_combout\,
	combout => \DIV0|contagem~2_combout\);

-- Location: LCCOMB_X25_Y12_N12
\DIV0|contagem~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~3_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Equal0~7_combout\,
	datad => \DIV0|Add0~26_combout\,
	combout => \DIV0|contagem~3_combout\);

-- Location: LCCOMB_X25_Y12_N26
\DIV0|contagem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~4_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|Equal0~7_combout\,
	datac => \DIV0|Add0~28_combout\,
	combout => \DIV0|contagem~4_combout\);

-- Location: LCCOMB_X25_Y12_N20
\DIV0|contagem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~5_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Equal0~7_combout\,
	datad => \DIV0|Add0~32_combout\,
	combout => \DIV0|contagem~5_combout\);

-- Location: LCCOMB_X25_Y12_N10
\DIV0|contagem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~6_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Equal0~7_combout\,
	datad => \DIV0|Add0~36_combout\,
	combout => \DIV0|contagem~6_combout\);

-- Location: LCCOMB_X25_Y12_N18
\DIV0|contagem~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~7_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Equal0~7_combout\,
	datad => \DIV0|Add0~38_combout\,
	combout => \DIV0|contagem~7_combout\);

-- Location: LCCOMB_X24_Y12_N30
\DIV0|contagem~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~8_combout\ = (\DIV0|Add0~48_combout\ & !\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Add0~48_combout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|contagem~8_combout\);

-- Location: LCCOMB_X24_Y12_N28
\DIV0|contagem~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~9_combout\ = (\DIV0|Add0~40_combout\ & !\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Add0~40_combout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|contagem~9_combout\);

-- Location: LCCOMB_X25_Y12_N8
\DIV0|contagem~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~10_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Equal0~7_combout\,
	datad => \DIV0|Add0~42_combout\,
	combout => \DIV0|contagem~10_combout\);

-- Location: LCCOMB_X24_Y12_N26
\DIV0|contagem~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~11_combout\ = (\DIV0|Add0~44_combout\ & !\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Add0~44_combout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|contagem~11_combout\);

-- Location: LCCOMB_X64_Y11_N10
\SEG0A5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG0A5|Equal0~0_combout\ = (\SEG0A5|contagem\(0) & (\SEG0A5|contagem\(2) & !\SEG0A5|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A5|contagem\(0),
	datac => \SEG0A5|contagem\(2),
	datad => \SEG0A5|contagem\(1),
	combout => \SEG0A5|Equal0~0_combout\);

-- Location: LCFF_X64_Y19_N11
\LOGICADOCONFIG|signalmode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_set~combout\,
	datain => \LOGICADOCONFIG|signalmode~0_combout\,
	aclr => \LOGICADOCONFIG|signalmode~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LOGICADOCONFIG|signalmode~regout\);

-- Location: LCCOMB_X64_Y19_N26
\LOGICADOCONFIG|signalcont~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LOGICADOCONFIG|signalcont~0_combout\ = \LOGICADOCONFIG|signalcont~regout\ $ (((\LOGICADOCONFIG|FFJK|temp~regout\ & !\LOGICADOCONFIG|signalmode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADOCONFIG|FFJK|temp~regout\,
	datac => \LOGICADOCONFIG|signalcont~regout\,
	datad => \LOGICADOCONFIG|signalmode~regout\,
	combout => \LOGICADOCONFIG|signalcont~0_combout\);

-- Location: LCCOMB_X64_Y19_N30
\LOGICADOCONFIG|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LOGICADOCONFIG|comb~0_combout\ = (\LOGICADOCONFIG|signalmode~regout\) # (!\mode~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~combout\,
	datad => \LOGICADOCONFIG|signalmode~regout\,
	combout => \LOGICADOCONFIG|comb~0_combout\);

-- Location: LCCOMB_X1_Y16_N24
\MIN0A5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A5|Equal0~0_combout\ = (!\MIN0A5|contagem\(1) & (\MIN0A5|contagem\(2) & \MIN0A5|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(2),
	datad => \MIN0A5|contagem\(0),
	combout => \MIN0A5|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y19_N10
\LOGICADOCONFIG|signalmode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LOGICADOCONFIG|signalmode~0_combout\ = (\LOGICADOCONFIG|FFJK|temp~regout\ & \LOGICADOCONFIG|signalcont~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LOGICADOCONFIG|FFJK|temp~regout\,
	datad => \LOGICADOCONFIG|signalcont~regout\,
	combout => \LOGICADOCONFIG|signalmode~0_combout\);

-- Location: LCCOMB_X1_Y18_N26
\HR0A9|tc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|tc~0_combout\ = (\HR0A9|contagem\(2) & (\HR0A9|tc~regout\ & ((\SignalResetHora~3_combout\)))) # (!\HR0A9|contagem\(2) & (((\HR0A9|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|tc~regout\,
	datab => \HR0A9|contagem\(0),
	datac => \HR0A9|contagem\(2),
	datad => \SignalResetHora~3_combout\,
	combout => \HR0A9|tc~0_combout\);

-- Location: LCCOMB_X1_Y18_N30
\HR0A9|tc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|tc~1_combout\ = (\HR0A9|tc~0_combout\ & ((\HR0A9|contagem\(3) & (!\HR0A9|contagem\(1) & !\HR0A9|contagem\(2))) # (!\HR0A9|contagem\(3) & ((\HR0A9|contagem\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(3),
	datab => \HR0A9|contagem\(1),
	datac => \HR0A9|contagem\(2),
	datad => \HR0A9|tc~0_combout\,
	combout => \HR0A9|tc~1_combout\);

-- Location: LCCOMB_X24_Y13_N4
\DIV0|contagem[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem[0]~12_combout\ = !\DIV0|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Add0~0_combout\,
	combout => \DIV0|contagem[0]~12_combout\);

-- Location: LCCOMB_X63_Y19_N30
\LOGICADOCONFIG|FFJK|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LOGICADOCONFIG|FFJK|temp~0_combout\ = !\LOGICADOCONFIG|FFJK|temp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LOGICADOCONFIG|FFJK|temp~regout\,
	combout => \LOGICADOCONFIG|FFJK|temp~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\set~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_set,
	combout => \set~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\config~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_config,
	combout => \config~combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mode,
	combout => \mode~combout\);

-- Location: CLKCTRL_G14
\DIV0|estado~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DIV0|estado~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DIV0|estado~clkctrl_outclk\);

-- Location: CLKCTRL_G5
\comb~3clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~3clkctrl_outclk\);

-- Location: CLKCTRL_G7
\comb~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: CLKCTRL_G1
\MIN0A9|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MIN0A9|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MIN0A9|tc~clkctrl_outclk\);

-- Location: CLKCTRL_G0
\HR0A9|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \HR0A9|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \HR0A9|tc~clkctrl_outclk\);

-- Location: CLKCTRL_G6
\SEG0A9|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SEG0A9|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SEG0A9|tc~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y7_N28
\SEG0A9|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG0A9|contagem[0]~3_combout\ = !\SEG0A9|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEG0A9|contagem\(0),
	combout => \SEG0A9|contagem[0]~3_combout\);

-- Location: LCFF_X64_Y7_N29
\SEG0A9|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIV0|estado~clkctrl_outclk\,
	datain => \SEG0A9|contagem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SEG0A9|contagem\(0));

-- Location: LCCOMB_X64_Y7_N12
\SEG0A9|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG0A9|contagem~2_combout\ = (\SEG0A9|contagem\(0) & (!\SEG0A9|contagem\(1) & ((\SEG0A9|contagem\(2)) # (!\SEG0A9|contagem\(3))))) # (!\SEG0A9|contagem\(0) & (((\SEG0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A9|contagem\(0),
	datab => \SEG0A9|contagem\(3),
	datac => \SEG0A9|contagem\(1),
	datad => \SEG0A9|contagem\(2),
	combout => \SEG0A9|contagem~2_combout\);

-- Location: LCFF_X64_Y7_N13
\SEG0A9|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIV0|estado~clkctrl_outclk\,
	datain => \SEG0A9|contagem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SEG0A9|contagem\(1));

-- Location: LCCOMB_X64_Y7_N26
\SEG0A9|contagem[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG0A9|contagem[2]~0_combout\ = \SEG0A9|contagem\(2) $ (((\SEG0A9|contagem\(0) & \SEG0A9|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG0A9|contagem\(0),
	datac => \SEG0A9|contagem\(2),
	datad => \SEG0A9|contagem\(1),
	combout => \SEG0A9|contagem[2]~0_combout\);

-- Location: LCFF_X64_Y7_N27
\SEG0A9|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIV0|estado~clkctrl_outclk\,
	datain => \SEG0A9|contagem[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SEG0A9|contagem\(2));

-- Location: LCCOMB_X64_Y7_N14
\SEG0A9|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG0A9|contagem~1_combout\ = (\SEG0A9|contagem\(1) & (\SEG0A9|contagem\(3) $ (((\SEG0A9|contagem\(0) & \SEG0A9|contagem\(2)))))) # (!\SEG0A9|contagem\(1) & (\SEG0A9|contagem\(3) & ((\SEG0A9|contagem\(2)) # (!\SEG0A9|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A9|contagem\(1),
	datab => \SEG0A9|contagem\(0),
	datac => \SEG0A9|contagem\(3),
	datad => \SEG0A9|contagem\(2),
	combout => \SEG0A9|contagem~1_combout\);

-- Location: LCFF_X64_Y7_N15
\SEG0A9|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIV0|estado~clkctrl_outclk\,
	datain => \SEG0A9|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SEG0A9|contagem\(3));

-- Location: LCCOMB_X64_Y7_N10
\DECODIF|Segundos1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[0]~0_combout\ = (\SEG0A9|contagem\(2) & ((\SEG0A9|contagem\(0)) # ((\SEG0A9|contagem\(3) & !\SEG0A9|contagem\(1))))) # (!\SEG0A9|contagem\(2) & ((\SEG0A9|contagem\(3) $ (\SEG0A9|contagem\(1))) # (!\SEG0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A9|contagem\(3),
	datab => \SEG0A9|contagem\(2),
	datac => \SEG0A9|contagem\(1),
	datad => \SEG0A9|contagem\(0),
	combout => \DECODIF|Segundos1[0]~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\DECODIF|Segundos1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[1]~1_combout\ = (\SEG0A9|contagem\(2) & ((\SEG0A9|contagem\(3) & (\SEG0A9|contagem\(1) & \SEG0A9|contagem\(0))) # (!\SEG0A9|contagem\(3) & (\SEG0A9|contagem\(1) $ (\SEG0A9|contagem\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A9|contagem\(3),
	datab => \SEG0A9|contagem\(2),
	datac => \SEG0A9|contagem\(1),
	datad => \SEG0A9|contagem\(0),
	combout => \DECODIF|Segundos1[1]~1_combout\);

-- Location: LCCOMB_X64_Y7_N16
\DECODIF|Segundos1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[2]~2_combout\ = (\SEG0A9|contagem\(0)) # ((\SEG0A9|contagem\(3) & ((\SEG0A9|contagem\(1)) # (!\SEG0A9|contagem\(2)))) # (!\SEG0A9|contagem\(3) & ((\SEG0A9|contagem\(2)) # (!\SEG0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A9|contagem\(3),
	datab => \SEG0A9|contagem\(2),
	datac => \SEG0A9|contagem\(1),
	datad => \SEG0A9|contagem\(0),
	combout => \DECODIF|Segundos1[2]~2_combout\);

-- Location: LCCOMB_X64_Y7_N8
\DECODIF|Segundos1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[3]~3_combout\ = (\SEG0A9|contagem\(0) & (\SEG0A9|contagem\(2) $ (((\SEG0A9|contagem\(3)) # (!\SEG0A9|contagem\(1)))))) # (!\SEG0A9|contagem\(0) & (\SEG0A9|contagem\(2) & (\SEG0A9|contagem\(3) $ (!\SEG0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A9|contagem\(3),
	datab => \SEG0A9|contagem\(2),
	datac => \SEG0A9|contagem\(1),
	datad => \SEG0A9|contagem\(0),
	combout => \DECODIF|Segundos1[3]~3_combout\);

-- Location: LCCOMB_X64_Y7_N2
\DECODIF|Segundos1[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[4]~4_combout\ = (\SEG0A9|contagem\(0)) # ((\SEG0A9|contagem\(2) & (\SEG0A9|contagem\(3) $ (!\SEG0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A9|contagem\(3),
	datab => \SEG0A9|contagem\(2),
	datac => \SEG0A9|contagem\(1),
	datad => \SEG0A9|contagem\(0),
	combout => \DECODIF|Segundos1[4]~4_combout\);

-- Location: LCCOMB_X64_Y7_N30
\DECODIF|Segundos1[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[5]~5_combout\ = (\SEG0A9|contagem\(3) & ((\SEG0A9|contagem\(2) & (!\SEG0A9|contagem\(1))) # (!\SEG0A9|contagem\(2) & (\SEG0A9|contagem\(1) & \SEG0A9|contagem\(0))))) # (!\SEG0A9|contagem\(3) & ((\SEG0A9|contagem\(2) & 
-- (\SEG0A9|contagem\(1) & \SEG0A9|contagem\(0))) # (!\SEG0A9|contagem\(2) & ((\SEG0A9|contagem\(1)) # (\SEG0A9|contagem\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A9|contagem\(3),
	datab => \SEG0A9|contagem\(2),
	datac => \SEG0A9|contagem\(1),
	datad => \SEG0A9|contagem\(0),
	combout => \DECODIF|Segundos1[5]~5_combout\);

-- Location: LCCOMB_X64_Y7_N20
\DECODIF|Segundos1[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[6]~6_combout\ = (\SEG0A9|contagem\(2) & (!\SEG0A9|contagem\(3) & (\SEG0A9|contagem\(1) & \SEG0A9|contagem\(0)))) # (!\SEG0A9|contagem\(2) & (\SEG0A9|contagem\(3) $ ((!\SEG0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A9|contagem\(3),
	datab => \SEG0A9|contagem\(2),
	datac => \SEG0A9|contagem\(1),
	datad => \SEG0A9|contagem\(0),
	combout => \DECODIF|Segundos1[6]~6_combout\);

-- Location: LCCOMB_X64_Y11_N20
\SEG0A5|contagem[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG0A5|contagem[0]~2_combout\ = !\SEG0A5|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEG0A5|contagem\(0),
	combout => \SEG0A5|contagem[0]~2_combout\);

-- Location: LCFF_X64_Y11_N21
\SEG0A5|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SEG0A9|tc~clkctrl_outclk\,
	datain => \SEG0A5|contagem[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SEG0A5|contagem\(0));

-- Location: LCCOMB_X64_Y11_N18
\SEG0A5|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG0A5|contagem~0_combout\ = (\SEG0A5|contagem\(0) & (!\SEG0A5|contagem\(1) & !\SEG0A5|contagem\(2))) # (!\SEG0A5|contagem\(0) & (\SEG0A5|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG0A5|contagem\(0),
	datac => \SEG0A5|contagem\(1),
	datad => \SEG0A5|contagem\(2),
	combout => \SEG0A5|contagem~0_combout\);

-- Location: LCFF_X64_Y11_N19
\SEG0A5|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SEG0A9|tc~clkctrl_outclk\,
	datain => \SEG0A5|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SEG0A5|contagem\(1));

-- Location: LCCOMB_X64_Y11_N14
\SEG0A5|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG0A5|contagem~1_combout\ = (\SEG0A5|contagem\(0) & (!\SEG0A5|contagem\(2) & \SEG0A5|contagem\(1))) # (!\SEG0A5|contagem\(0) & (\SEG0A5|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG0A5|contagem\(0),
	datac => \SEG0A5|contagem\(2),
	datad => \SEG0A5|contagem\(1),
	combout => \SEG0A5|contagem~1_combout\);

-- Location: LCFF_X64_Y11_N15
\SEG0A5|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SEG0A9|tc~clkctrl_outclk\,
	datain => \SEG0A5|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SEG0A5|contagem\(2));

-- Location: LCCOMB_X64_Y11_N16
\DECODIF|Segundos2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2[0]~0_combout\ = (\SEG0A5|contagem\(2) & ((\SEG0A5|contagem\(0)))) # (!\SEG0A5|contagem\(2) & ((\SEG0A5|contagem\(1)) # (!\SEG0A5|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A5|contagem\(2),
	datab => \SEG0A5|contagem\(1),
	datad => \SEG0A5|contagem\(0),
	combout => \DECODIF|Segundos2[0]~0_combout\);

-- Location: LCCOMB_X64_Y11_N8
\DECODIF|Segundos2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2[1]~1_combout\ = (\SEG0A5|contagem\(2) & (\SEG0A5|contagem\(1) $ (\SEG0A5|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A5|contagem\(2),
	datab => \SEG0A5|contagem\(1),
	datad => \SEG0A5|contagem\(0),
	combout => \DECODIF|Segundos2[1]~1_combout\);

-- Location: LCCOMB_X64_Y11_N24
\DECODIF|Segundos2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2~2_combout\ = (!\SEG0A5|contagem\(2) & (\SEG0A5|contagem\(1) & !\SEG0A5|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A5|contagem\(2),
	datab => \SEG0A5|contagem\(1),
	datad => \SEG0A5|contagem\(0),
	combout => \DECODIF|Segundos2~2_combout\);

-- Location: LCCOMB_X64_Y11_N2
\DECODIF|Segundos2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2~3_combout\ = (\SEG0A5|contagem\(2) & (\SEG0A5|contagem\(1) $ (!\SEG0A5|contagem\(0)))) # (!\SEG0A5|contagem\(2) & (!\SEG0A5|contagem\(1) & \SEG0A5|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A5|contagem\(2),
	datab => \SEG0A5|contagem\(1),
	datad => \SEG0A5|contagem\(0),
	combout => \DECODIF|Segundos2~3_combout\);

-- Location: LCCOMB_X64_Y11_N30
\DECODIF|Segundos2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2~4_combout\ = (\SEG0A5|contagem\(0)) # ((\SEG0A5|contagem\(2) & !\SEG0A5|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A5|contagem\(2),
	datab => \SEG0A5|contagem\(1),
	datad => \SEG0A5|contagem\(0),
	combout => \DECODIF|Segundos2~4_combout\);

-- Location: LCCOMB_X64_Y11_N12
\DECODIF|Segundos2[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2[5]~5_combout\ = (\SEG0A5|contagem\(2) & (\SEG0A5|contagem\(1) & \SEG0A5|contagem\(0))) # (!\SEG0A5|contagem\(2) & ((\SEG0A5|contagem\(1)) # (\SEG0A5|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A5|contagem\(2),
	datab => \SEG0A5|contagem\(1),
	datad => \SEG0A5|contagem\(0),
	combout => \DECODIF|Segundos2[5]~5_combout\);

-- Location: LCCOMB_X64_Y11_N22
\DECODIF|Segundos2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2~6_combout\ = (\SEG0A5|contagem\(2) & (\SEG0A5|contagem\(1) & \SEG0A5|contagem\(0))) # (!\SEG0A5|contagem\(2) & (!\SEG0A5|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG0A5|contagem\(2),
	datab => \SEG0A5|contagem\(1),
	datad => \SEG0A5|contagem\(0),
	combout => \DECODIF|Segundos2~6_combout\);

-- Location: LCCOMB_X1_Y14_N22
\MIN0A9|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A9|contagem[0]~3_combout\ = !\MIN0A9|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MIN0A9|contagem\(0),
	combout => \MIN0A9|contagem[0]~3_combout\);

-- Location: LCFF_X1_Y14_N23
\MIN0A9|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	datain => \MIN0A9|contagem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A9|contagem\(0));

-- Location: LCCOMB_X1_Y14_N26
\MIN0A9|contagem[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A9|contagem[2]~0_combout\ = \MIN0A9|contagem\(2) $ (((\MIN0A9|contagem\(1) & \MIN0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MIN0A9|contagem\(1),
	datac => \MIN0A9|contagem\(2),
	datad => \MIN0A9|contagem\(0),
	combout => \MIN0A9|contagem[2]~0_combout\);

-- Location: LCFF_X1_Y14_N27
\MIN0A9|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	datain => \MIN0A9|contagem[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A9|contagem\(2));

-- Location: LCCOMB_X1_Y14_N18
\MIN0A9|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A9|contagem~2_combout\ = (\MIN0A9|contagem\(0) & (!\MIN0A9|contagem\(1) & ((\MIN0A9|contagem\(2)) # (!\MIN0A9|contagem\(3))))) # (!\MIN0A9|contagem\(0) & (((\MIN0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(3),
	datab => \MIN0A9|contagem\(0),
	datac => \MIN0A9|contagem\(1),
	datad => \MIN0A9|contagem\(2),
	combout => \MIN0A9|contagem~2_combout\);

-- Location: LCFF_X1_Y14_N19
\MIN0A9|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	datain => \MIN0A9|contagem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A9|contagem\(1));

-- Location: LCCOMB_X1_Y14_N14
\MIN0A9|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A9|contagem~1_combout\ = (\MIN0A9|contagem\(0) & ((\MIN0A9|contagem\(1) & (\MIN0A9|contagem\(3) $ (\MIN0A9|contagem\(2)))) # (!\MIN0A9|contagem\(1) & (\MIN0A9|contagem\(3) & \MIN0A9|contagem\(2))))) # (!\MIN0A9|contagem\(0) & 
-- (((\MIN0A9|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(0),
	datab => \MIN0A9|contagem\(1),
	datac => \MIN0A9|contagem\(3),
	datad => \MIN0A9|contagem\(2),
	combout => \MIN0A9|contagem~1_combout\);

-- Location: LCFF_X1_Y14_N15
\MIN0A9|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	datain => \MIN0A9|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A9|contagem\(3));

-- Location: LCCOMB_X1_Y14_N10
\DECODIF|Minutos1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[0]~0_combout\ = (\MIN0A9|contagem\(0) & ((\MIN0A9|contagem\(2)) # (\MIN0A9|contagem\(3) $ (\MIN0A9|contagem\(1))))) # (!\MIN0A9|contagem\(0) & (((\MIN0A9|contagem\(3) & !\MIN0A9|contagem\(1))) # (!\MIN0A9|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(0),
	datab => \MIN0A9|contagem\(3),
	datac => \MIN0A9|contagem\(2),
	datad => \MIN0A9|contagem\(1),
	combout => \DECODIF|Minutos1[0]~0_combout\);

-- Location: LCCOMB_X1_Y14_N16
\DECODIF|Minutos1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[1]~1_combout\ = (\MIN0A9|contagem\(2) & ((\MIN0A9|contagem\(0) & (\MIN0A9|contagem\(3) $ (!\MIN0A9|contagem\(1)))) # (!\MIN0A9|contagem\(0) & (!\MIN0A9|contagem\(3) & \MIN0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(0),
	datab => \MIN0A9|contagem\(3),
	datac => \MIN0A9|contagem\(2),
	datad => \MIN0A9|contagem\(1),
	combout => \DECODIF|Minutos1[1]~1_combout\);

-- Location: LCCOMB_X1_Y14_N24
\DECODIF|Minutos1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[2]~2_combout\ = (\MIN0A9|contagem\(0)) # ((\MIN0A9|contagem\(3) & ((\MIN0A9|contagem\(1)) # (!\MIN0A9|contagem\(2)))) # (!\MIN0A9|contagem\(3) & ((\MIN0A9|contagem\(2)) # (!\MIN0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(0),
	datab => \MIN0A9|contagem\(3),
	datac => \MIN0A9|contagem\(2),
	datad => \MIN0A9|contagem\(1),
	combout => \DECODIF|Minutos1[2]~2_combout\);

-- Location: LCCOMB_X1_Y14_N20
\DECODIF|Minutos1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[3]~3_combout\ = (\MIN0A9|contagem\(0) & (\MIN0A9|contagem\(2) $ (((\MIN0A9|contagem\(3)) # (!\MIN0A9|contagem\(1)))))) # (!\MIN0A9|contagem\(0) & (\MIN0A9|contagem\(2) & (\MIN0A9|contagem\(3) $ (!\MIN0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(0),
	datab => \MIN0A9|contagem\(3),
	datac => \MIN0A9|contagem\(2),
	datad => \MIN0A9|contagem\(1),
	combout => \DECODIF|Minutos1[3]~3_combout\);

-- Location: LCCOMB_X1_Y14_N28
\DECODIF|Minutos1[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[4]~4_combout\ = (\MIN0A9|contagem\(0)) # ((\MIN0A9|contagem\(2) & (\MIN0A9|contagem\(3) $ (!\MIN0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(0),
	datab => \MIN0A9|contagem\(3),
	datac => \MIN0A9|contagem\(2),
	datad => \MIN0A9|contagem\(1),
	combout => \DECODIF|Minutos1[4]~4_combout\);

-- Location: LCCOMB_X1_Y14_N30
\DECODIF|Minutos1[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[5]~5_combout\ = (\MIN0A9|contagem\(3) & ((\MIN0A9|contagem\(2) & ((!\MIN0A9|contagem\(1)))) # (!\MIN0A9|contagem\(2) & (\MIN0A9|contagem\(0) & \MIN0A9|contagem\(1))))) # (!\MIN0A9|contagem\(3) & ((\MIN0A9|contagem\(0) & 
-- ((\MIN0A9|contagem\(1)) # (!\MIN0A9|contagem\(2)))) # (!\MIN0A9|contagem\(0) & (!\MIN0A9|contagem\(2) & \MIN0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(0),
	datab => \MIN0A9|contagem\(3),
	datac => \MIN0A9|contagem\(2),
	datad => \MIN0A9|contagem\(1),
	combout => \DECODIF|Minutos1[5]~5_combout\);

-- Location: LCCOMB_X1_Y14_N12
\DECODIF|Minutos1[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[6]~6_combout\ = (\MIN0A9|contagem\(2) & (\MIN0A9|contagem\(0) & (!\MIN0A9|contagem\(3) & \MIN0A9|contagem\(1)))) # (!\MIN0A9|contagem\(2) & ((\MIN0A9|contagem\(3) $ (!\MIN0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(0),
	datab => \MIN0A9|contagem\(3),
	datac => \MIN0A9|contagem\(2),
	datad => \MIN0A9|contagem\(1),
	combout => \DECODIF|Minutos1[6]~6_combout\);

-- Location: LCCOMB_X1_Y16_N30
\MIN0A5|contagem[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A5|contagem[0]~2_combout\ = !\MIN0A5|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MIN0A5|contagem\(0),
	combout => \MIN0A5|contagem[0]~2_combout\);

-- Location: LCFF_X1_Y16_N31
\MIN0A5|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \MIN0A9|tc~clkctrl_outclk\,
	datain => \MIN0A5|contagem[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A5|contagem\(0));

-- Location: LCCOMB_X1_Y16_N14
\MIN0A5|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A5|contagem~1_combout\ = (\MIN0A5|contagem\(2) & ((!\MIN0A5|contagem\(0)))) # (!\MIN0A5|contagem\(2) & (\MIN0A5|contagem\(1) & \MIN0A5|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(2),
	datad => \MIN0A5|contagem\(0),
	combout => \MIN0A5|contagem~1_combout\);

-- Location: LCFF_X1_Y16_N15
\MIN0A5|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \MIN0A9|tc~clkctrl_outclk\,
	datain => \MIN0A5|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A5|contagem\(2));

-- Location: LCCOMB_X1_Y16_N16
\MIN0A5|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A5|contagem~0_combout\ = (\MIN0A5|contagem\(1) & ((!\MIN0A5|contagem\(0)))) # (!\MIN0A5|contagem\(1) & (!\MIN0A5|contagem\(2) & \MIN0A5|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(2),
	datac => \MIN0A5|contagem\(1),
	datad => \MIN0A5|contagem\(0),
	combout => \MIN0A5|contagem~0_combout\);

-- Location: LCFF_X1_Y16_N17
\MIN0A5|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \MIN0A9|tc~clkctrl_outclk\,
	datain => \MIN0A5|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A5|contagem\(1));

-- Location: LCCOMB_X1_Y16_N26
\DECODIF|Minutos2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2[0]~0_combout\ = (\MIN0A5|contagem\(2) & ((\MIN0A5|contagem\(0)))) # (!\MIN0A5|contagem\(2) & ((\MIN0A5|contagem\(1)) # (!\MIN0A5|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(2),
	datab => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(0),
	combout => \DECODIF|Minutos2[0]~0_combout\);

-- Location: LCCOMB_X1_Y16_N18
\DECODIF|Minutos2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2[1]~1_combout\ = (\MIN0A5|contagem\(2) & (\MIN0A5|contagem\(1) $ (\MIN0A5|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(2),
	datab => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(0),
	combout => \DECODIF|Minutos2[1]~1_combout\);

-- Location: LCCOMB_X1_Y16_N22
\DECODIF|Minutos2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2~2_combout\ = (!\MIN0A5|contagem\(2) & (\MIN0A5|contagem\(1) & !\MIN0A5|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(2),
	datab => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(0),
	combout => \DECODIF|Minutos2~2_combout\);

-- Location: LCCOMB_X1_Y16_N28
\DECODIF|Minutos2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2~3_combout\ = (\MIN0A5|contagem\(2) & (\MIN0A5|contagem\(1) $ (!\MIN0A5|contagem\(0)))) # (!\MIN0A5|contagem\(2) & (!\MIN0A5|contagem\(1) & \MIN0A5|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(2),
	datab => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(0),
	combout => \DECODIF|Minutos2~3_combout\);

-- Location: LCCOMB_X1_Y16_N20
\DECODIF|Minutos2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2~4_combout\ = (\MIN0A5|contagem\(0)) # ((\MIN0A5|contagem\(2) & !\MIN0A5|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(2),
	datab => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(0),
	combout => \DECODIF|Minutos2~4_combout\);

-- Location: LCCOMB_X1_Y16_N12
\DECODIF|Minutos2[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2[5]~5_combout\ = (\MIN0A5|contagem\(2) & (\MIN0A5|contagem\(1) & \MIN0A5|contagem\(0))) # (!\MIN0A5|contagem\(2) & ((\MIN0A5|contagem\(1)) # (\MIN0A5|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(2),
	datab => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(0),
	combout => \DECODIF|Minutos2[5]~5_combout\);

-- Location: LCCOMB_X1_Y16_N10
\DECODIF|Minutos2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2~6_combout\ = (\MIN0A5|contagem\(2) & (\MIN0A5|contagem\(1) & \MIN0A5|contagem\(0))) # (!\MIN0A5|contagem\(2) & (!\MIN0A5|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(2),
	datab => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(0),
	combout => \DECODIF|Minutos2~6_combout\);

-- Location: LCCOMB_X1_Y18_N14
\HR0A9|contagem[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|contagem[2]~0_combout\ = \HR0A9|contagem\(2) $ (((\HR0A9|contagem\(0) & \HR0A9|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(0),
	datac => \HR0A9|contagem\(2),
	datad => \HR0A9|contagem\(1),
	combout => \HR0A9|contagem[2]~0_combout\);

-- Location: LCCOMB_X1_Y18_N18
\DECODIF|Horas2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas2~0_combout\ = (\HR0A2|contagem\(0) & !\HR0A2|contagem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HR0A2|contagem\(0),
	datad => \HR0A2|contagem\(1),
	combout => \DECODIF|Horas2~0_combout\);

-- Location: LCCOMB_X1_Y18_N24
\HR0A2|contagem[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A2|contagem[1]~feeder_combout\ = \DECODIF|Horas2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DECODIF|Horas2~0_combout\,
	combout => \HR0A2|contagem[1]~feeder_combout\);

-- Location: LCFF_X1_Y18_N25
\HR0A2|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \HR0A9|tc~clkctrl_outclk\,
	datain => \HR0A2|contagem[1]~feeder_combout\,
	aclr => \SignalResetHora~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A2|contagem\(1));

-- Location: LCCOMB_X1_Y18_N2
\DECODIF|Horas2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas2~1_combout\ = (\HR0A2|contagem\(1)) # (\HR0A2|contagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HR0A2|contagem\(1),
	datad => \HR0A2|contagem\(0),
	combout => \DECODIF|Horas2~1_combout\);

-- Location: LCCOMB_X1_Y18_N8
\HR0A2|contagem[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A2|contagem[0]~0_combout\ = !\DECODIF|Horas2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DECODIF|Horas2~1_combout\,
	combout => \HR0A2|contagem[0]~0_combout\);

-- Location: LCFF_X1_Y18_N9
\HR0A2|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \HR0A9|tc~clkctrl_outclk\,
	datain => \HR0A2|contagem[0]~0_combout\,
	aclr => \SignalResetHora~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A2|contagem\(0));

-- Location: LCCOMB_X1_Y18_N10
\SignalResetHora~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SignalResetHora~3_combout\ = (!\HR0A9|contagem\(0) & (!\HR0A2|contagem\(0) & (\HR0A2|contagem\(1) & !\HR0A9|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(0),
	datab => \HR0A2|contagem\(0),
	datac => \HR0A2|contagem\(1),
	datad => \HR0A9|contagem\(1),
	combout => \SignalResetHora~3_combout\);

-- Location: LCCOMB_X1_Y18_N4
\SignalResetHora~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SignalResetHora~4_combout\ = (!\HR0A9|contagem\(3) & (\HR0A9|contagem\(2) & \SignalResetHora~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(3),
	datac => \HR0A9|contagem\(2),
	datad => \SignalResetHora~3_combout\,
	combout => \SignalResetHora~4_combout\);

-- Location: LCFF_X1_Y18_N15
\HR0A9|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~clkctrl_outclk\,
	datain => \HR0A9|contagem[2]~0_combout\,
	aclr => \SignalResetHora~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A9|contagem\(2));

-- Location: LCCOMB_X1_Y18_N16
\HR0A9|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|contagem[0]~3_combout\ = !\HR0A9|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HR0A9|contagem\(0),
	combout => \HR0A9|contagem[0]~3_combout\);

-- Location: LCFF_X1_Y18_N17
\HR0A9|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~clkctrl_outclk\,
	datain => \HR0A9|contagem[0]~3_combout\,
	aclr => \SignalResetHora~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A9|contagem\(0));

-- Location: LCCOMB_X1_Y18_N6
\HR0A9|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|contagem~2_combout\ = (\HR0A9|contagem\(1) & (((!\HR0A9|contagem\(0))))) # (!\HR0A9|contagem\(1) & (\HR0A9|contagem\(0) & ((\HR0A9|contagem\(2)) # (!\HR0A9|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(3),
	datab => \HR0A9|contagem\(2),
	datac => \HR0A9|contagem\(1),
	datad => \HR0A9|contagem\(0),
	combout => \HR0A9|contagem~2_combout\);

-- Location: LCFF_X1_Y18_N7
\HR0A9|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~clkctrl_outclk\,
	datain => \HR0A9|contagem~2_combout\,
	aclr => \SignalResetHora~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A9|contagem\(1));

-- Location: LCCOMB_X1_Y18_N20
\HR0A9|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|contagem~1_combout\ = (\HR0A9|contagem\(2) & (\HR0A9|contagem\(3) $ (((\HR0A9|contagem\(1) & \HR0A9|contagem\(0)))))) # (!\HR0A9|contagem\(2) & (\HR0A9|contagem\(3) & ((\HR0A9|contagem\(1)) # (!\HR0A9|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(2),
	datab => \HR0A9|contagem\(1),
	datac => \HR0A9|contagem\(3),
	datad => \HR0A9|contagem\(0),
	combout => \HR0A9|contagem~1_combout\);

-- Location: LCFF_X1_Y18_N21
\HR0A9|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~clkctrl_outclk\,
	datain => \HR0A9|contagem~1_combout\,
	aclr => \SignalResetHora~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A9|contagem\(3));

-- Location: LCCOMB_X1_Y17_N12
\DECODIF|Horas1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[0]~0_combout\ = (\HR0A9|contagem\(0) & ((\HR0A9|contagem\(2)) # (\HR0A9|contagem\(3) $ (\HR0A9|contagem\(1))))) # (!\HR0A9|contagem\(0) & (((\HR0A9|contagem\(3) & !\HR0A9|contagem\(1))) # (!\HR0A9|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(3),
	datab => \HR0A9|contagem\(0),
	datac => \HR0A9|contagem\(1),
	datad => \HR0A9|contagem\(2),
	combout => \DECODIF|Horas1[0]~0_combout\);

-- Location: LCCOMB_X1_Y17_N14
\DECODIF|Horas1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[1]~1_combout\ = (\HR0A9|contagem\(2) & ((\HR0A9|contagem\(3) & (\HR0A9|contagem\(0) & \HR0A9|contagem\(1))) # (!\HR0A9|contagem\(3) & (\HR0A9|contagem\(0) $ (\HR0A9|contagem\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(3),
	datab => \HR0A9|contagem\(0),
	datac => \HR0A9|contagem\(1),
	datad => \HR0A9|contagem\(2),
	combout => \DECODIF|Horas1[1]~1_combout\);

-- Location: LCCOMB_X1_Y17_N28
\DECODIF|Horas1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[2]~2_combout\ = (\HR0A9|contagem\(0)) # ((\HR0A9|contagem\(3) & ((\HR0A9|contagem\(1)) # (!\HR0A9|contagem\(2)))) # (!\HR0A9|contagem\(3) & ((\HR0A9|contagem\(2)) # (!\HR0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(3),
	datab => \HR0A9|contagem\(0),
	datac => \HR0A9|contagem\(1),
	datad => \HR0A9|contagem\(2),
	combout => \DECODIF|Horas1[2]~2_combout\);

-- Location: LCCOMB_X1_Y18_N0
\DECODIF|Horas1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[3]~3_combout\ = (\HR0A9|contagem\(0) & (\HR0A9|contagem\(2) $ (((\HR0A9|contagem\(3)) # (!\HR0A9|contagem\(1)))))) # (!\HR0A9|contagem\(0) & (\HR0A9|contagem\(2) & (\HR0A9|contagem\(3) $ (!\HR0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(3),
	datab => \HR0A9|contagem\(1),
	datac => \HR0A9|contagem\(2),
	datad => \HR0A9|contagem\(0),
	combout => \DECODIF|Horas1[3]~3_combout\);

-- Location: LCCOMB_X1_Y18_N22
\DECODIF|Horas1[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[4]~4_combout\ = (\HR0A9|contagem\(0)) # ((\HR0A9|contagem\(2) & (\HR0A9|contagem\(3) $ (!\HR0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(3),
	datab => \HR0A9|contagem\(1),
	datac => \HR0A9|contagem\(2),
	datad => \HR0A9|contagem\(0),
	combout => \DECODIF|Horas1[4]~4_combout\);

-- Location: LCCOMB_X1_Y18_N12
\DECODIF|Horas1[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[5]~5_combout\ = (\HR0A9|contagem\(3) & ((\HR0A9|contagem\(1) & (!\HR0A9|contagem\(2) & \HR0A9|contagem\(0))) # (!\HR0A9|contagem\(1) & (\HR0A9|contagem\(2))))) # (!\HR0A9|contagem\(3) & ((\HR0A9|contagem\(1) & ((\HR0A9|contagem\(0)) # 
-- (!\HR0A9|contagem\(2)))) # (!\HR0A9|contagem\(1) & (!\HR0A9|contagem\(2) & \HR0A9|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(3),
	datab => \HR0A9|contagem\(1),
	datac => \HR0A9|contagem\(2),
	datad => \HR0A9|contagem\(0),
	combout => \DECODIF|Horas1[5]~5_combout\);

-- Location: LCCOMB_X1_Y18_N28
\DECODIF|Horas1[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[6]~6_combout\ = (\HR0A9|contagem\(2) & (!\HR0A9|contagem\(3) & (\HR0A9|contagem\(1) & \HR0A9|contagem\(0)))) # (!\HR0A9|contagem\(2) & (\HR0A9|contagem\(3) $ ((!\HR0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(3),
	datab => \HR0A9|contagem\(1),
	datac => \HR0A9|contagem\(2),
	datad => \HR0A9|contagem\(0),
	combout => \DECODIF|Horas1[6]~6_combout\);

-- Location: LCCOMB_X1_Y24_N20
\SignalResetHora~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SignalResetHora~2_combout\ = (\HR0A2|contagem\(1) & !\HR0A2|contagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A2|contagem\(1),
	datad => \HR0A2|contagem\(0),
	combout => \SignalResetHora~2_combout\);

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|ALT_INV_Segundos1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|ALT_INV_Segundos1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos1[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|ALT_INV_Segundos2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos2[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Segundos2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Segundos2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|ALT_INV_Minutos1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|ALT_INV_Minutos1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos1[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|ALT_INV_Minutos2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos2[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Minutos2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Minutos2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|ALT_INV_Horas1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Horas1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|ALT_INV_Horas1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Horas1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Horas1[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Horas1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Horas1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Horas2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SignalResetHora~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Horas2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HR0A2|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DECODIF|Horas2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Horas2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HR0A2|ALT_INV_contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(6));
END structure;


