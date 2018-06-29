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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/10/2018 22:30:37"

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

ENTITY 	ProjetoRelogio IS
    PORT (
	clock : IN std_logic;
	mode : IN std_logic;
	set : IN std_logic;
	start : IN std_logic;
	config : IN std_logic;
	reset : IN std_logic;
	Segundos1 : OUT std_logic_vector(6 DOWNTO 0);
	Segundos2 : OUT std_logic_vector(6 DOWNTO 0);
	Minutos1 : OUT std_logic_vector(6 DOWNTO 0);
	Minutos2 : OUT std_logic_vector(6 DOWNTO 0);
	Horas1 : OUT std_logic_vector(6 DOWNTO 0);
	Horas2 : OUT std_logic_vector(6 DOWNTO 0);
	Modo : OUT std_logic_vector(1 DOWNTO 0);
	LedAlarme : OUT std_logic;
	AlarmeAtivado : OUT std_logic
	);
END ProjetoRelogio;

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
-- Modo[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Modo[1]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LedAlarme	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AlarmeAtivado	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- config	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- set	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ProjetoRelogio IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_Segundos1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Segundos2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Minutos1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Minutos2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Horas1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Horas2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Modo : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LedAlarme : std_logic;
SIGNAL ww_AlarmeAtivado : std_logic;
SIGNAL \CRONOMETRO1|CONT0A5_1|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALARME1|comb~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALARME1|comb~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CRONOMETRO1|CONT0A9_1|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOGIO1|comb~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CRONOMETRO1|DIV0|estado~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CRONOMETRO1|CONT0A9_3|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOGIO1|comb~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CRONOMETRO1|CONT0A9_2|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALARME1|MIN0A9|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOGIO1|DIV0|estado~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALARME1|HR0A9|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOGIO1|SEG0A9|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOGIO1|MIN0A9|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CRONOMETRO1|CONT0A9_4|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIVFREQ|Add0~0_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~8_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~10_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~36_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~1_cout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~3_cout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~5_cout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~6_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~7\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~8_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~9\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~10_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~11\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~12_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~13\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~14_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~15\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~16_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~17\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~18_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~19\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~20_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~21\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~22_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~23\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~24_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~25\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~26_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~27\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~28_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~29\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~30_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~31\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Add0~32_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~1_cout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~3_cout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~5_cout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~7_cout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~8_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~9\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~10_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~11\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~12_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~13\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~14_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~15\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~16_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~17\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~18_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~19\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~20_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~21\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~22_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~23\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~24_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~25\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~26_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~27\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~28_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~29\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~30_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~31\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~32_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~33\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~34_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~35\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~36_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~37\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~38_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~39\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~40_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~41\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~42_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~43\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~44_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~45\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Add0~46_combout\ : std_logic;
SIGNAL \DECODIF|DivFreq|estado~regout\ : std_logic;
SIGNAL \Minutos1Sig~1_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|estado~regout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|estado~regout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_1|tc~regout\ : std_logic;
SIGNAL \RELOGIO1|SEG0A9|tc~regout\ : std_logic;
SIGNAL \DECODIF|DivFreq|Equal0~4_combout\ : std_logic;
SIGNAL \RELOGIO1|MIN0A9|contagem~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_2|tc~regout\ : std_logic;
SIGNAL \ALARME1|MIN0A9|tc~regout\ : std_logic;
SIGNAL \RELOGIO1|MIN0A9|tc~regout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_3|tc~regout\ : std_logic;
SIGNAL \RELOGIO1|SignalResetHora~3_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A5_1|tc~regout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_4|tc~regout\ : std_logic;
SIGNAL \ALARME1|HR0A9|tc~regout\ : std_logic;
SIGNAL \RELOGIO1|HR0A9|tc~regout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Equal0~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Equal0~1_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Equal0~2_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|Equal0~3_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|estado~0_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Equal0~0_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Equal0~1_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Equal0~2_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Equal0~3_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Equal0~4_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Equal0~5_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|Equal0~6_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|estado~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_1|Equal0~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_1|tc~0_combout\ : std_logic;
SIGNAL \RELOGIO1|SEG0A9|Equal0~0_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem~2_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \RELOGIO1|SEG0A5|tc~regout\ : std_logic;
SIGNAL \RELOGIO1|comb~2_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_2|Equal0~0_combout\ : std_logic;
SIGNAL \ALARME1|MIN0A9|Equal0~0_combout\ : std_logic;
SIGNAL \ALARME1|MIN0A9|tc~0_combout\ : std_logic;
SIGNAL \RELOGIO1|MIN0A9|Equal0~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_3|Equal0~0_combout\ : std_logic;
SIGNAL \ALARME1|comb~10\ : std_logic;
SIGNAL \RELOGIO1|MIN0A5|tc~regout\ : std_logic;
SIGNAL \RELOGIO1|comb~6\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A5_1|Equal0~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_4|Equal0~0_combout\ : std_logic;
SIGNAL \ALARME1|HR0A9|Equal0~0_combout\ : std_logic;
SIGNAL \ALARME1|HR0A9|tc~0_combout\ : std_logic;
SIGNAL \RELOGIO1|HR0A9|Equal0~0_combout\ : std_logic;
SIGNAL \RELOGIO1|HR0A9|tc~0_combout\ : std_logic;
SIGNAL \comb~combout\ : std_logic;
SIGNAL \comb~14\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|contagem~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|contagem~1_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|contagem~2_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|contagem~3_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|contagem~4_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|contagem~5_combout\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|contagem~6_combout\ : std_logic;
SIGNAL \comb~15\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~0_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~1_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~2_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~3_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~4_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~5_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~6_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~7_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~8_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~9_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~10_combout\ : std_logic;
SIGNAL \RELOGIO1|DIV0|contagem~11_combout\ : std_logic;
SIGNAL \comb~16\ : std_logic;
SIGNAL \comb~17\ : std_logic;
SIGNAL \RELOGIO1|SEG0A5|Equal0~0_combout\ : std_logic;
SIGNAL \RELOGIO1|MIN0A5|Equal0~0_combout\ : std_logic;
SIGNAL \ALARME1|comb~combout\ : std_logic;
SIGNAL \RELOGIO1|comb~combout\ : std_logic;
SIGNAL \DECODIF|DivFreq|estado~0_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem[0]~10_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \mode~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \config~combout\ : std_logic;
SIGNAL \set~combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A5_1|tc~clkctrl_outclk\ : std_logic;
SIGNAL \ALARME1|comb~10clkctrl_outclk\ : std_logic;
SIGNAL \ALARME1|comb~clkctrl_outclk\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_1|tc~clkctrl_outclk\ : std_logic;
SIGNAL \RELOGIO1|comb~6clkctrl_outclk\ : std_logic;
SIGNAL \CRONOMETRO1|DIV0|estado~clkctrl_outclk\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_3|tc~clkctrl_outclk\ : std_logic;
SIGNAL \RELOGIO1|comb~clkctrl_outclk\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_2|tc~clkctrl_outclk\ : std_logic;
SIGNAL \ALARME1|MIN0A9|tc~clkctrl_outclk\ : std_logic;
SIGNAL \RELOGIO1|DIV0|estado~clkctrl_outclk\ : std_logic;
SIGNAL \ALARME1|HR0A9|tc~clkctrl_outclk\ : std_logic;
SIGNAL \RELOGIO1|SEG0A9|tc~clkctrl_outclk\ : std_logic;
SIGNAL \RELOGIO1|MIN0A9|tc~clkctrl_outclk\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_4|tc~clkctrl_outclk\ : std_logic;
SIGNAL \SignalMode[1]~1_combout\ : std_logic;
SIGNAL \RELOGIO1|LOGICADOCONFIG|FFJK|temp~0_combout\ : std_logic;
SIGNAL \RELOGIO1|LOGICADOCONFIG|signalcont~0_combout\ : std_logic;
SIGNAL \RELOGIO1|LOGICADOCONFIG|signalcont~regout\ : std_logic;
SIGNAL \RELOGIO1|PiscaMRe~combout\ : std_logic;
SIGNAL \RELOGIO1|LOGICADOCONFIG|signalmode~feeder_combout\ : std_logic;
SIGNAL \RELOGIO1|LOGICADOCONFIG|signalmode~regout\ : std_logic;
SIGNAL \RELOGIO1|LOGICADOCONFIG|comb~0_combout\ : std_logic;
SIGNAL \RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\ : std_logic;
SIGNAL \SignalMode~0_combout\ : std_logic;
SIGNAL \SignalMode[1]~_wirecell_combout\ : std_logic;
SIGNAL \RELOGIO1|SEG0A9|contagem[0]~3_combout\ : std_logic;
SIGNAL \RELOGIO1|SEG0A9|contagem~2_combout\ : std_logic;
SIGNAL \RELOGIO1|SEG0A9|contagem~1_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_1|contagem[0]~3_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|FFJK|temp~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|FFJK|temp~regout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_1|contagem~2_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_1|contagem~1_combout\ : std_logic;
SIGNAL \Segundos1Sig~2_combout\ : std_logic;
SIGNAL \Segundos2Sig[0]~0_combout\ : std_logic;
SIGNAL \Segundos1Sig~3_combout\ : std_logic;
SIGNAL \RELOGIO1|SEG0A9|contagem[2]~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_1|contagem[2]~0_combout\ : std_logic;
SIGNAL \Segundos1Sig~1_combout\ : std_logic;
SIGNAL \Segundos1Sig~0_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[1]~1_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[2]~2_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[3]~3_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[4]~4_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[5]~5_combout\ : std_logic;
SIGNAL \DECODIF|Segundos1[6]~6_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_2|contagem[0]~3_combout\ : std_logic;
SIGNAL \RELOGIO1|SEG0A5|contagem[0]~2_combout\ : std_logic;
SIGNAL \Segundos2Sig~1_combout\ : std_logic;
SIGNAL \RELOGIO1|SEG0A5|contagem~0_combout\ : std_logic;
SIGNAL \RELOGIO1|SEG0A5|contagem~1_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_2|contagem[2]~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_2|contagem~1_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_2|contagem~2_combout\ : std_logic;
SIGNAL \Segundos2Sig~4_combout\ : std_logic;
SIGNAL \Segundos2Sig~3_combout\ : std_logic;
SIGNAL \Segundos2Sig~2_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2[1]~1_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2[2]~2_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2[3]~3_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2[4]~4_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2[5]~5_combout\ : std_logic;
SIGNAL \DECODIF|Segundos2[6]~6_combout\ : std_logic;
SIGNAL \RELOGIO1|MIN0A9|contagem[0]~3_combout\ : std_logic;
SIGNAL \Minutos1Sig~3_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_3|contagem[0]~3_combout\ : std_logic;
SIGNAL \RELOGIO1|MIN0A9|contagem[2]~2_combout\ : std_logic;
SIGNAL \Minutos1Sig~2_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_3|contagem~1_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_3|contagem~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_3|contagem[2]~2_combout\ : std_logic;
SIGNAL \ALARME1|MIN0A9|contagem[2]~2_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \comb~13\ : std_logic;
SIGNAL \ALARME1|LOGICADOALARME|FFJK|temp~0_combout\ : std_logic;
SIGNAL \ALARME1|LOGICADOALARME|signalcont~0_combout\ : std_logic;
SIGNAL \ALARME1|LOGICADOALARME|signalcont~regout\ : std_logic;
SIGNAL \ALARME1|comb~4_combout\ : std_logic;
SIGNAL \ALARME1|LOGICADOALARME|signalreset~regout\ : std_logic;
SIGNAL \ALARME1|LOGICADOALARME|FFJK|temp~regout\ : std_logic;
SIGNAL \ALARME1|comb~5_combout\ : std_logic;
SIGNAL \ALARME1|MIN0A9|contagem~1_combout\ : std_logic;
SIGNAL \ALARME1|MIN0A9|contagem~0_combout\ : std_logic;
SIGNAL \Minutos1Sig~0_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|JK2|temp~0_combout\ : std_logic;
SIGNAL \PiscaM~4_combout\ : std_logic;
SIGNAL \PiscaM~regout\ : std_logic;
SIGNAL \DECODIF|JK2|temp~regout\ : std_logic;
SIGNAL \DECODIF|Minutos1[0]~1_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[1]~2_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1~3_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[3]~4_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[3]~5_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[4]~6_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[4]~7_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[5]~8_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[5]~9_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[6]~10_combout\ : std_logic;
SIGNAL \DECODIF|Minutos1[6]~11_combout\ : std_logic;
SIGNAL \RELOGIO1|MIN0A5|contagem[0]~2_combout\ : std_logic;
SIGNAL \RELOGIO1|MIN0A5|contagem~1_combout\ : std_logic;
SIGNAL \ALARME1|MIN0A5|contagem[0]~2_combout\ : std_logic;
SIGNAL \ALARME1|MIN0A5|contagem~0_combout\ : std_logic;
SIGNAL \ALARME1|MIN0A5|contagem~1_combout\ : std_logic;
SIGNAL \Minutos2Sig~1_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A5_1|contagem[0]~2_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A5_1|contagem~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A5_1|contagem~1_combout\ : std_logic;
SIGNAL \Minutos2Sig~2_combout\ : std_logic;
SIGNAL \RELOGIO1|MIN0A5|contagem~0_combout\ : std_logic;
SIGNAL \Minutos2Sig~0_combout\ : std_logic;
SIGNAL \DECODIF|Minutos2[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|Minutos2[4]~1_combout\ : std_logic;
SIGNAL \DECODIF|Minutos2[5]~2_combout\ : std_logic;
SIGNAL \ALARME1|HR0A9|contagem[0]~3_combout\ : std_logic;
SIGNAL \ALARME1|HR0A2|contagem~0_combout\ : std_logic;
SIGNAL \ALARME1|HR0A2|contagem~1_combout\ : std_logic;
SIGNAL \ALARME1|SignalResetHora~1_combout\ : std_logic;
SIGNAL \ALARME1|SignalResetHora~0_combout\ : std_logic;
SIGNAL \ALARME1|comb~6_combout\ : std_logic;
SIGNAL \ALARME1|HR0A9|contagem[2]~2_combout\ : std_logic;
SIGNAL \ALARME1|HR0A9|contagem~0_combout\ : std_logic;
SIGNAL \ALARME1|HR0A9|contagem~1_combout\ : std_logic;
SIGNAL \Horas1Sig~1_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_4|contagem[0]~3_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_4|contagem[2]~2_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_4|contagem~0_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A9_4|contagem~1_combout\ : std_logic;
SIGNAL \RELOGIO1|HR0A9|contagem[0]~3_combout\ : std_logic;
SIGNAL \RELOGIO1|HR0A2|contagem~0_combout\ : std_logic;
SIGNAL \RELOGIO1|HR0A2|contagem~1_combout\ : std_logic;
SIGNAL \RELOGIO1|HR0A9|contagem~1_combout\ : std_logic;
SIGNAL \RELOGIO1|SignalResetHora~2_combout\ : std_logic;
SIGNAL \RELOGIO1|SignalResetHora~combout\ : std_logic;
SIGNAL \RELOGIO1|HR0A9|contagem[2]~2_combout\ : std_logic;
SIGNAL \RELOGIO1|HR0A9|contagem~0_combout\ : std_logic;
SIGNAL \Horas1Sig~0_combout\ : std_logic;
SIGNAL \Horas1Sig~2_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|JK1|temp~0_combout\ : std_logic;
SIGNAL \PiscaHR~0_combout\ : std_logic;
SIGNAL \PiscaHR~1_combout\ : std_logic;
SIGNAL \PiscaHR~regout\ : std_logic;
SIGNAL \DECODIF|JK1|temp~regout\ : std_logic;
SIGNAL \DECODIF|Horas1[0]~1_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[1]~2_combout\ : std_logic;
SIGNAL \DECODIF|Horas1~3_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[3]~4_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[3]~5_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[4]~6_combout\ : std_logic;
SIGNAL \Horas1Sig~3_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[4]~7_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[5]~8_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[5]~9_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[6]~10_combout\ : std_logic;
SIGNAL \DECODIF|Horas1[6]~11_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A5_2|contagem[0]~2_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A5_2|contagem~1_combout\ : std_logic;
SIGNAL \CRONOMETRO1|CONT0A5_2|contagem~0_combout\ : std_logic;
SIGNAL \Horas2Sig~0_combout\ : std_logic;
SIGNAL \Horas2Sig~1_combout\ : std_logic;
SIGNAL \Horas2Sig~2_combout\ : std_logic;
SIGNAL \DECODIF|Horas2[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|Horas2[4]~1_combout\ : std_logic;
SIGNAL \DECODIF|Horas2[5]~2_combout\ : std_logic;
SIGNAL \DIVFREQ|estado~0_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~1\ : std_logic;
SIGNAL \DIVFREQ|Add0~3\ : std_logic;
SIGNAL \DIVFREQ|Add0~5\ : std_logic;
SIGNAL \DIVFREQ|Add0~6_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~7\ : std_logic;
SIGNAL \DIVFREQ|Add0~9\ : std_logic;
SIGNAL \DIVFREQ|Add0~11\ : std_logic;
SIGNAL \DIVFREQ|Add0~12_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem~1_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~13\ : std_logic;
SIGNAL \DIVFREQ|Add0~14_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~15\ : std_logic;
SIGNAL \DIVFREQ|Add0~17\ : std_logic;
SIGNAL \DIVFREQ|Add0~18_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~19\ : std_logic;
SIGNAL \DIVFREQ|Add0~21\ : std_logic;
SIGNAL \DIVFREQ|Add0~22_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~23\ : std_logic;
SIGNAL \DIVFREQ|Add0~24_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem~4_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~25\ : std_logic;
SIGNAL \DIVFREQ|Add0~26_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem~5_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~27\ : std_logic;
SIGNAL \DIVFREQ|Add0~28_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem~6_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~29\ : std_logic;
SIGNAL \DIVFREQ|Add0~30_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem~7_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~31\ : std_logic;
SIGNAL \DIVFREQ|Add0~32_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~33\ : std_logic;
SIGNAL \DIVFREQ|Add0~35\ : std_logic;
SIGNAL \DIVFREQ|Add0~37\ : std_logic;
SIGNAL \DIVFREQ|Add0~38_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~39\ : std_logic;
SIGNAL \DIVFREQ|Add0~41\ : std_logic;
SIGNAL \DIVFREQ|Add0~42_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~43\ : std_logic;
SIGNAL \DIVFREQ|Add0~45\ : std_logic;
SIGNAL \DIVFREQ|Add0~46_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem~9_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~44_combout\ : std_logic;
SIGNAL \DECODIF|DivFreq|Equal0~6_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~40_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem~8_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~34_combout\ : std_logic;
SIGNAL \DECODIF|DivFreq|Equal0~5_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~20_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem~3_combout\ : std_logic;
SIGNAL \DECODIF|DivFreq|Equal0~2_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~2_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~4_combout\ : std_logic;
SIGNAL \DECODIF|DivFreq|Equal0~0_combout\ : std_logic;
SIGNAL \DIVFREQ|Add0~16_combout\ : std_logic;
SIGNAL \DIVFREQ|contagem~0_combout\ : std_logic;
SIGNAL \DECODIF|DivFreq|Equal0~1_combout\ : std_logic;
SIGNAL \DECODIF|DivFreq|Equal0~3_combout\ : std_logic;
SIGNAL \DECODIF|DivFreq|Equal0~7_combout\ : std_logic;
SIGNAL \DIVFREQ|estado~regout\ : std_logic;
SIGNAL \ALARME1|MIN0A9|contagem[0]~3_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \RELOGIO1|MIN0A9|contagem~1_combout\ : std_logic;
SIGNAL \ALARME1|LOGICADOALARME|signalativado~0_combout\ : std_logic;
SIGNAL \ALARME1|LOGICADOALARME|signalativado~regout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \AlarmeJK~regout\ : std_logic;
SIGNAL \FFJKALARME|temp~0_combout\ : std_logic;
SIGNAL \FFJKALARME|temp~regout\ : std_logic;
SIGNAL Horas2Sig : std_logic_vector(3 DOWNTO 0);
SIGNAL \CRONOMETRO1|DIV0|contagem\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CRONOMETRO1|CONT0A9_1|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL SignalMode : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALARME1|HR0A2|contagem\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RELOGIO1|DIV0|contagem\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \CRONOMETRO1|CONT0A5_2|contagem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DECODIF|Minutos2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CRONOMETRO1|CONT0A9_3|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALARME1|MIN0A5|contagem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL Segundos1Sig : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIVFREQ|contagem\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \CRONOMETRO1|CONT0A9_2|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOGIO1|MIN0A5|contagem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL Segundos2Sig : std_logic_vector(3 DOWNTO 0);
SIGNAL Minutos1Sig : std_logic_vector(3 DOWNTO 0);
SIGNAL \DECODIF|Horas1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CRONOMETRO1|CONT0A5_1|contagem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \RELOGIO1|SEG0A9|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOGIO1|HR0A9|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL Minutos2Sig : std_logic_vector(3 DOWNTO 0);
SIGNAL \DECODIF|Horas2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DECODIF|Minutos1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \RELOGIO1|SEG0A5|contagem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALARME1|HR0A9|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOGIO1|MIN0A9|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL Horas1Sig : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOGIO1|HR0A2|contagem\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALARME1|MIN0A9|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CRONOMETRO1|CONT0A9_4|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clock~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_mode~combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Segundos2[2]~2_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Segundos2[0]~0_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Segundos1[2]~2_combout\ : std_logic;
SIGNAL \DECODIF|ALT_INV_Segundos1[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_PiscaHR~regout\ : std_logic;
SIGNAL \ALT_INV_PiscaM~regout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_mode <= mode;
ww_set <= set;
ww_start <= start;
ww_config <= config;
ww_reset <= reset;
Segundos1 <= ww_Segundos1;
Segundos2 <= ww_Segundos2;
Minutos1 <= ww_Minutos1;
Minutos2 <= ww_Minutos2;
Horas1 <= ww_Horas1;
Horas2 <= ww_Horas2;
Modo <= ww_Modo;
LedAlarme <= ww_LedAlarme;
AlarmeAtivado <= ww_AlarmeAtivado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CRONOMETRO1|CONT0A5_1|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CRONOMETRO1|CONT0A5_1|tc~regout\);

\ALARME1|comb~10clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ALARME1|comb~10\);

\ALARME1|comb~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ALARME1|comb~combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\CRONOMETRO1|CONT0A9_1|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CRONOMETRO1|CONT0A9_1|tc~regout\);

\RELOGIO1|comb~6clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RELOGIO1|comb~6\);

\CRONOMETRO1|DIV0|estado~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CRONOMETRO1|DIV0|estado~regout\);

\CRONOMETRO1|CONT0A9_3|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CRONOMETRO1|CONT0A9_3|tc~regout\);

\RELOGIO1|comb~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RELOGIO1|comb~combout\);

\CRONOMETRO1|CONT0A9_2|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CRONOMETRO1|CONT0A9_2|tc~regout\);

\ALARME1|MIN0A9|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ALARME1|MIN0A9|tc~regout\);

\RELOGIO1|DIV0|estado~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RELOGIO1|DIV0|estado~regout\);

\ALARME1|HR0A9|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ALARME1|HR0A9|tc~regout\);

\RELOGIO1|SEG0A9|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RELOGIO1|SEG0A9|tc~regout\);

\RELOGIO1|MIN0A9|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RELOGIO1|MIN0A9|tc~regout\);

\CRONOMETRO1|CONT0A9_4|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CRONOMETRO1|CONT0A9_4|tc~regout\);
\ALT_INV_clock~clkctrl_outclk\ <= NOT \clock~clkctrl_outclk\;
\ALT_INV_mode~combout\ <= NOT \mode~combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\DECODIF|ALT_INV_Segundos2[2]~2_combout\ <= NOT \DECODIF|Segundos2[2]~2_combout\;
\DECODIF|ALT_INV_Segundos2[0]~0_combout\ <= NOT \DECODIF|Segundos2[0]~0_combout\;
\DECODIF|ALT_INV_Segundos1[2]~2_combout\ <= NOT \DECODIF|Segundos1[2]~2_combout\;
\DECODIF|ALT_INV_Segundos1[0]~0_combout\ <= NOT \DECODIF|Segundos1[0]~0_combout\;
\ALT_INV_PiscaHR~regout\ <= NOT \PiscaHR~regout\;
\ALT_INV_PiscaM~regout\ <= NOT \PiscaM~regout\;

-- Location: LCFF_X29_Y16_N27
\Minutos1Sig[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Minutos1Sig~1_combout\,
	sdata => \CRONOMETRO1|CONT0A9_3|contagem\(3),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Minutos1Sig(3));

-- Location: LCCOMB_X20_Y30_N8
\DIVFREQ|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~0_combout\ = \DIVFREQ|contagem\(0) $ (GND)
-- \DIVFREQ|Add0~1\ = CARRY(!\DIVFREQ|contagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(0),
	datad => VCC,
	combout => \DIVFREQ|Add0~0_combout\,
	cout => \DIVFREQ|Add0~1\);

-- Location: LCCOMB_X20_Y30_N16
\DIVFREQ|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~8_combout\ = (\DIVFREQ|contagem\(4) & (\DIVFREQ|Add0~7\ $ (GND))) # (!\DIVFREQ|contagem\(4) & (!\DIVFREQ|Add0~7\ & VCC))
-- \DIVFREQ|Add0~9\ = CARRY((\DIVFREQ|contagem\(4) & !\DIVFREQ|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(4),
	datad => VCC,
	cin => \DIVFREQ|Add0~7\,
	combout => \DIVFREQ|Add0~8_combout\,
	cout => \DIVFREQ|Add0~9\);

-- Location: LCCOMB_X20_Y30_N18
\DIVFREQ|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~10_combout\ = (\DIVFREQ|contagem\(5) & (!\DIVFREQ|Add0~9\)) # (!\DIVFREQ|contagem\(5) & ((\DIVFREQ|Add0~9\) # (GND)))
-- \DIVFREQ|Add0~11\ = CARRY((!\DIVFREQ|Add0~9\) # (!\DIVFREQ|contagem\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(5),
	datad => VCC,
	cin => \DIVFREQ|Add0~9\,
	combout => \DIVFREQ|Add0~10_combout\,
	cout => \DIVFREQ|Add0~11\);

-- Location: LCCOMB_X20_Y29_N12
\DIVFREQ|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~36_combout\ = (\DIVFREQ|contagem\(18) & (\DIVFREQ|Add0~35\ $ (GND))) # (!\DIVFREQ|contagem\(18) & (!\DIVFREQ|Add0~35\ & VCC))
-- \DIVFREQ|Add0~37\ = CARRY((\DIVFREQ|contagem\(18) & !\DIVFREQ|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(18),
	datad => VCC,
	cin => \DIVFREQ|Add0~35\,
	combout => \DIVFREQ|Add0~36_combout\,
	cout => \DIVFREQ|Add0~37\);

-- Location: LCCOMB_X23_Y30_N16
\CRONOMETRO1|DIV0|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~1_cout\ = CARRY((\DIVFREQ|contagem\(1) & !\DIVFREQ|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(1),
	datab => \DIVFREQ|contagem\(0),
	datad => VCC,
	cout => \CRONOMETRO1|DIV0|Add0~1_cout\);

-- Location: LCCOMB_X23_Y30_N18
\CRONOMETRO1|DIV0|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~3_cout\ = CARRY((!\CRONOMETRO1|DIV0|Add0~1_cout\) # (!\DIVFREQ|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(2),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~1_cout\,
	cout => \CRONOMETRO1|DIV0|Add0~3_cout\);

-- Location: LCCOMB_X23_Y30_N20
\CRONOMETRO1|DIV0|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~5_cout\ = CARRY((\DIVFREQ|contagem\(3) & !\CRONOMETRO1|DIV0|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(3),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~3_cout\,
	cout => \CRONOMETRO1|DIV0|Add0~5_cout\);

-- Location: LCCOMB_X23_Y30_N22
\CRONOMETRO1|DIV0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~6_combout\ = (\CRONOMETRO1|DIV0|contagem\(4) & (!\CRONOMETRO1|DIV0|Add0~5_cout\)) # (!\CRONOMETRO1|DIV0|contagem\(4) & ((\CRONOMETRO1|DIV0|Add0~5_cout\) # (GND)))
-- \CRONOMETRO1|DIV0|Add0~7\ = CARRY((!\CRONOMETRO1|DIV0|Add0~5_cout\) # (!\CRONOMETRO1|DIV0|contagem\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|DIV0|contagem\(4),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~5_cout\,
	combout => \CRONOMETRO1|DIV0|Add0~6_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~7\);

-- Location: LCCOMB_X23_Y30_N24
\CRONOMETRO1|DIV0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~8_combout\ = (\CRONOMETRO1|DIV0|contagem\(5) & (\CRONOMETRO1|DIV0|Add0~7\ $ (GND))) # (!\CRONOMETRO1|DIV0|contagem\(5) & (!\CRONOMETRO1|DIV0|Add0~7\ & VCC))
-- \CRONOMETRO1|DIV0|Add0~9\ = CARRY((\CRONOMETRO1|DIV0|contagem\(5) & !\CRONOMETRO1|DIV0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(5),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~7\,
	combout => \CRONOMETRO1|DIV0|Add0~8_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~9\);

-- Location: LCCOMB_X23_Y30_N26
\CRONOMETRO1|DIV0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~10_combout\ = (\CRONOMETRO1|DIV0|contagem\(6) & (!\CRONOMETRO1|DIV0|Add0~9\)) # (!\CRONOMETRO1|DIV0|contagem\(6) & ((\CRONOMETRO1|DIV0|Add0~9\) # (GND)))
-- \CRONOMETRO1|DIV0|Add0~11\ = CARRY((!\CRONOMETRO1|DIV0|Add0~9\) # (!\CRONOMETRO1|DIV0|contagem\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|DIV0|contagem\(6),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~9\,
	combout => \CRONOMETRO1|DIV0|Add0~10_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~11\);

-- Location: LCCOMB_X23_Y30_N28
\CRONOMETRO1|DIV0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~12_combout\ = (\CRONOMETRO1|DIV0|contagem\(7) & (\CRONOMETRO1|DIV0|Add0~11\ $ (GND))) # (!\CRONOMETRO1|DIV0|contagem\(7) & (!\CRONOMETRO1|DIV0|Add0~11\ & VCC))
-- \CRONOMETRO1|DIV0|Add0~13\ = CARRY((\CRONOMETRO1|DIV0|contagem\(7) & !\CRONOMETRO1|DIV0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(7),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~11\,
	combout => \CRONOMETRO1|DIV0|Add0~12_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~13\);

-- Location: LCCOMB_X23_Y30_N30
\CRONOMETRO1|DIV0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~14_combout\ = (\CRONOMETRO1|DIV0|contagem\(8) & (!\CRONOMETRO1|DIV0|Add0~13\)) # (!\CRONOMETRO1|DIV0|contagem\(8) & ((\CRONOMETRO1|DIV0|Add0~13\) # (GND)))
-- \CRONOMETRO1|DIV0|Add0~15\ = CARRY((!\CRONOMETRO1|DIV0|Add0~13\) # (!\CRONOMETRO1|DIV0|contagem\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|DIV0|contagem\(8),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~13\,
	combout => \CRONOMETRO1|DIV0|Add0~14_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~15\);

-- Location: LCCOMB_X23_Y29_N0
\CRONOMETRO1|DIV0|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~16_combout\ = (\CRONOMETRO1|DIV0|contagem\(9) & (\CRONOMETRO1|DIV0|Add0~15\ $ (GND))) # (!\CRONOMETRO1|DIV0|contagem\(9) & (!\CRONOMETRO1|DIV0|Add0~15\ & VCC))
-- \CRONOMETRO1|DIV0|Add0~17\ = CARRY((\CRONOMETRO1|DIV0|contagem\(9) & !\CRONOMETRO1|DIV0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|DIV0|contagem\(9),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~15\,
	combout => \CRONOMETRO1|DIV0|Add0~16_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~17\);

-- Location: LCCOMB_X23_Y29_N2
\CRONOMETRO1|DIV0|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~18_combout\ = (\CRONOMETRO1|DIV0|contagem\(10) & (!\CRONOMETRO1|DIV0|Add0~17\)) # (!\CRONOMETRO1|DIV0|contagem\(10) & ((\CRONOMETRO1|DIV0|Add0~17\) # (GND)))
-- \CRONOMETRO1|DIV0|Add0~19\ = CARRY((!\CRONOMETRO1|DIV0|Add0~17\) # (!\CRONOMETRO1|DIV0|contagem\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|DIV0|contagem\(10),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~17\,
	combout => \CRONOMETRO1|DIV0|Add0~18_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~19\);

-- Location: LCCOMB_X23_Y29_N4
\CRONOMETRO1|DIV0|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~20_combout\ = (\CRONOMETRO1|DIV0|contagem\(11) & (\CRONOMETRO1|DIV0|Add0~19\ $ (GND))) # (!\CRONOMETRO1|DIV0|contagem\(11) & (!\CRONOMETRO1|DIV0|Add0~19\ & VCC))
-- \CRONOMETRO1|DIV0|Add0~21\ = CARRY((\CRONOMETRO1|DIV0|contagem\(11) & !\CRONOMETRO1|DIV0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|DIV0|contagem\(11),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~19\,
	combout => \CRONOMETRO1|DIV0|Add0~20_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~21\);

-- Location: LCCOMB_X23_Y29_N6
\CRONOMETRO1|DIV0|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~22_combout\ = (\CRONOMETRO1|DIV0|contagem\(12) & (!\CRONOMETRO1|DIV0|Add0~21\)) # (!\CRONOMETRO1|DIV0|contagem\(12) & ((\CRONOMETRO1|DIV0|Add0~21\) # (GND)))
-- \CRONOMETRO1|DIV0|Add0~23\ = CARRY((!\CRONOMETRO1|DIV0|Add0~21\) # (!\CRONOMETRO1|DIV0|contagem\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|DIV0|contagem\(12),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~21\,
	combout => \CRONOMETRO1|DIV0|Add0~22_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~23\);

-- Location: LCCOMB_X23_Y29_N8
\CRONOMETRO1|DIV0|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~24_combout\ = (\CRONOMETRO1|DIV0|contagem\(13) & (\CRONOMETRO1|DIV0|Add0~23\ $ (GND))) # (!\CRONOMETRO1|DIV0|contagem\(13) & (!\CRONOMETRO1|DIV0|Add0~23\ & VCC))
-- \CRONOMETRO1|DIV0|Add0~25\ = CARRY((\CRONOMETRO1|DIV0|contagem\(13) & !\CRONOMETRO1|DIV0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|DIV0|contagem\(13),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~23\,
	combout => \CRONOMETRO1|DIV0|Add0~24_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~25\);

-- Location: LCCOMB_X23_Y29_N10
\CRONOMETRO1|DIV0|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~26_combout\ = (\CRONOMETRO1|DIV0|contagem\(14) & (!\CRONOMETRO1|DIV0|Add0~25\)) # (!\CRONOMETRO1|DIV0|contagem\(14) & ((\CRONOMETRO1|DIV0|Add0~25\) # (GND)))
-- \CRONOMETRO1|DIV0|Add0~27\ = CARRY((!\CRONOMETRO1|DIV0|Add0~25\) # (!\CRONOMETRO1|DIV0|contagem\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|DIV0|contagem\(14),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~25\,
	combout => \CRONOMETRO1|DIV0|Add0~26_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~27\);

-- Location: LCCOMB_X23_Y29_N12
\CRONOMETRO1|DIV0|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~28_combout\ = (\CRONOMETRO1|DIV0|contagem\(15) & (\CRONOMETRO1|DIV0|Add0~27\ $ (GND))) # (!\CRONOMETRO1|DIV0|contagem\(15) & (!\CRONOMETRO1|DIV0|Add0~27\ & VCC))
-- \CRONOMETRO1|DIV0|Add0~29\ = CARRY((\CRONOMETRO1|DIV0|contagem\(15) & !\CRONOMETRO1|DIV0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(15),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~27\,
	combout => \CRONOMETRO1|DIV0|Add0~28_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~29\);

-- Location: LCCOMB_X23_Y29_N14
\CRONOMETRO1|DIV0|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~30_combout\ = (\CRONOMETRO1|DIV0|contagem\(16) & (!\CRONOMETRO1|DIV0|Add0~29\)) # (!\CRONOMETRO1|DIV0|contagem\(16) & ((\CRONOMETRO1|DIV0|Add0~29\) # (GND)))
-- \CRONOMETRO1|DIV0|Add0~31\ = CARRY((!\CRONOMETRO1|DIV0|Add0~29\) # (!\CRONOMETRO1|DIV0|contagem\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|DIV0|contagem\(16),
	datad => VCC,
	cin => \CRONOMETRO1|DIV0|Add0~29\,
	combout => \CRONOMETRO1|DIV0|Add0~30_combout\,
	cout => \CRONOMETRO1|DIV0|Add0~31\);

-- Location: LCCOMB_X23_Y29_N16
\CRONOMETRO1|DIV0|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Add0~32_combout\ = \CRONOMETRO1|DIV0|Add0~31\ $ (!\CRONOMETRO1|DIV0|contagem\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CRONOMETRO1|DIV0|contagem\(17),
	cin => \CRONOMETRO1|DIV0|Add0~31\,
	combout => \CRONOMETRO1|DIV0|Add0~32_combout\);

-- Location: LCCOMB_X21_Y30_N8
\RELOGIO1|DIV0|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~1_cout\ = CARRY((\DIVFREQ|contagem\(1) & !\DIVFREQ|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(1),
	datab => \DIVFREQ|contagem\(0),
	datad => VCC,
	cout => \RELOGIO1|DIV0|Add0~1_cout\);

-- Location: LCCOMB_X21_Y30_N10
\RELOGIO1|DIV0|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~3_cout\ = CARRY((!\RELOGIO1|DIV0|Add0~1_cout\) # (!\DIVFREQ|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(2),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~1_cout\,
	cout => \RELOGIO1|DIV0|Add0~3_cout\);

-- Location: LCCOMB_X21_Y30_N12
\RELOGIO1|DIV0|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~5_cout\ = CARRY((\DIVFREQ|contagem\(3) & !\RELOGIO1|DIV0|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(3),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~3_cout\,
	cout => \RELOGIO1|DIV0|Add0~5_cout\);

-- Location: LCCOMB_X21_Y30_N14
\RELOGIO1|DIV0|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~7_cout\ = CARRY((!\RELOGIO1|DIV0|Add0~5_cout\) # (!\DIVFREQ|contagem\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(4),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~5_cout\,
	cout => \RELOGIO1|DIV0|Add0~7_cout\);

-- Location: LCCOMB_X21_Y30_N16
\RELOGIO1|DIV0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~8_combout\ = (\RELOGIO1|DIV0|contagem\(5) & (\RELOGIO1|DIV0|Add0~7_cout\ $ (GND))) # (!\RELOGIO1|DIV0|contagem\(5) & (!\RELOGIO1|DIV0|Add0~7_cout\ & VCC))
-- \RELOGIO1|DIV0|Add0~9\ = CARRY((\RELOGIO1|DIV0|contagem\(5) & !\RELOGIO1|DIV0|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(5),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~7_cout\,
	combout => \RELOGIO1|DIV0|Add0~8_combout\,
	cout => \RELOGIO1|DIV0|Add0~9\);

-- Location: LCCOMB_X21_Y30_N18
\RELOGIO1|DIV0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~10_combout\ = (\RELOGIO1|DIV0|contagem\(6) & (!\RELOGIO1|DIV0|Add0~9\)) # (!\RELOGIO1|DIV0|contagem\(6) & ((\RELOGIO1|DIV0|Add0~9\) # (GND)))
-- \RELOGIO1|DIV0|Add0~11\ = CARRY((!\RELOGIO1|DIV0|Add0~9\) # (!\RELOGIO1|DIV0|contagem\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(6),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~9\,
	combout => \RELOGIO1|DIV0|Add0~10_combout\,
	cout => \RELOGIO1|DIV0|Add0~11\);

-- Location: LCCOMB_X21_Y30_N20
\RELOGIO1|DIV0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~12_combout\ = (\RELOGIO1|DIV0|contagem\(7) & (\RELOGIO1|DIV0|Add0~11\ $ (GND))) # (!\RELOGIO1|DIV0|contagem\(7) & (!\RELOGIO1|DIV0|Add0~11\ & VCC))
-- \RELOGIO1|DIV0|Add0~13\ = CARRY((\RELOGIO1|DIV0|contagem\(7) & !\RELOGIO1|DIV0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(7),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~11\,
	combout => \RELOGIO1|DIV0|Add0~12_combout\,
	cout => \RELOGIO1|DIV0|Add0~13\);

-- Location: LCCOMB_X21_Y30_N22
\RELOGIO1|DIV0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~14_combout\ = (\RELOGIO1|DIV0|contagem\(8) & (!\RELOGIO1|DIV0|Add0~13\)) # (!\RELOGIO1|DIV0|contagem\(8) & ((\RELOGIO1|DIV0|Add0~13\) # (GND)))
-- \RELOGIO1|DIV0|Add0~15\ = CARRY((!\RELOGIO1|DIV0|Add0~13\) # (!\RELOGIO1|DIV0|contagem\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(8),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~13\,
	combout => \RELOGIO1|DIV0|Add0~14_combout\,
	cout => \RELOGIO1|DIV0|Add0~15\);

-- Location: LCCOMB_X21_Y30_N24
\RELOGIO1|DIV0|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~16_combout\ = (\RELOGIO1|DIV0|contagem\(9) & (\RELOGIO1|DIV0|Add0~15\ $ (GND))) # (!\RELOGIO1|DIV0|contagem\(9) & (!\RELOGIO1|DIV0|Add0~15\ & VCC))
-- \RELOGIO1|DIV0|Add0~17\ = CARRY((\RELOGIO1|DIV0|contagem\(9) & !\RELOGIO1|DIV0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(9),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~15\,
	combout => \RELOGIO1|DIV0|Add0~16_combout\,
	cout => \RELOGIO1|DIV0|Add0~17\);

-- Location: LCCOMB_X21_Y30_N26
\RELOGIO1|DIV0|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~18_combout\ = (\RELOGIO1|DIV0|contagem\(10) & (!\RELOGIO1|DIV0|Add0~17\)) # (!\RELOGIO1|DIV0|contagem\(10) & ((\RELOGIO1|DIV0|Add0~17\) # (GND)))
-- \RELOGIO1|DIV0|Add0~19\ = CARRY((!\RELOGIO1|DIV0|Add0~17\) # (!\RELOGIO1|DIV0|contagem\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(10),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~17\,
	combout => \RELOGIO1|DIV0|Add0~18_combout\,
	cout => \RELOGIO1|DIV0|Add0~19\);

-- Location: LCCOMB_X21_Y30_N28
\RELOGIO1|DIV0|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~20_combout\ = (\RELOGIO1|DIV0|contagem\(11) & (\RELOGIO1|DIV0|Add0~19\ $ (GND))) # (!\RELOGIO1|DIV0|contagem\(11) & (!\RELOGIO1|DIV0|Add0~19\ & VCC))
-- \RELOGIO1|DIV0|Add0~21\ = CARRY((\RELOGIO1|DIV0|contagem\(11) & !\RELOGIO1|DIV0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(11),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~19\,
	combout => \RELOGIO1|DIV0|Add0~20_combout\,
	cout => \RELOGIO1|DIV0|Add0~21\);

-- Location: LCCOMB_X21_Y30_N30
\RELOGIO1|DIV0|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~22_combout\ = (\RELOGIO1|DIV0|contagem\(12) & (!\RELOGIO1|DIV0|Add0~21\)) # (!\RELOGIO1|DIV0|contagem\(12) & ((\RELOGIO1|DIV0|Add0~21\) # (GND)))
-- \RELOGIO1|DIV0|Add0~23\ = CARRY((!\RELOGIO1|DIV0|Add0~21\) # (!\RELOGIO1|DIV0|contagem\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(12),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~21\,
	combout => \RELOGIO1|DIV0|Add0~22_combout\,
	cout => \RELOGIO1|DIV0|Add0~23\);

-- Location: LCCOMB_X21_Y29_N0
\RELOGIO1|DIV0|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~24_combout\ = (\RELOGIO1|DIV0|contagem\(13) & (\RELOGIO1|DIV0|Add0~23\ $ (GND))) # (!\RELOGIO1|DIV0|contagem\(13) & (!\RELOGIO1|DIV0|Add0~23\ & VCC))
-- \RELOGIO1|DIV0|Add0~25\ = CARRY((\RELOGIO1|DIV0|contagem\(13) & !\RELOGIO1|DIV0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(13),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~23\,
	combout => \RELOGIO1|DIV0|Add0~24_combout\,
	cout => \RELOGIO1|DIV0|Add0~25\);

-- Location: LCCOMB_X21_Y29_N2
\RELOGIO1|DIV0|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~26_combout\ = (\RELOGIO1|DIV0|contagem\(14) & (!\RELOGIO1|DIV0|Add0~25\)) # (!\RELOGIO1|DIV0|contagem\(14) & ((\RELOGIO1|DIV0|Add0~25\) # (GND)))
-- \RELOGIO1|DIV0|Add0~27\ = CARRY((!\RELOGIO1|DIV0|Add0~25\) # (!\RELOGIO1|DIV0|contagem\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(14),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~25\,
	combout => \RELOGIO1|DIV0|Add0~26_combout\,
	cout => \RELOGIO1|DIV0|Add0~27\);

-- Location: LCCOMB_X21_Y29_N4
\RELOGIO1|DIV0|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~28_combout\ = (\RELOGIO1|DIV0|contagem\(15) & (\RELOGIO1|DIV0|Add0~27\ $ (GND))) # (!\RELOGIO1|DIV0|contagem\(15) & (!\RELOGIO1|DIV0|Add0~27\ & VCC))
-- \RELOGIO1|DIV0|Add0~29\ = CARRY((\RELOGIO1|DIV0|contagem\(15) & !\RELOGIO1|DIV0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(15),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~27\,
	combout => \RELOGIO1|DIV0|Add0~28_combout\,
	cout => \RELOGIO1|DIV0|Add0~29\);

-- Location: LCCOMB_X21_Y29_N6
\RELOGIO1|DIV0|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~30_combout\ = (\RELOGIO1|DIV0|contagem\(16) & (!\RELOGIO1|DIV0|Add0~29\)) # (!\RELOGIO1|DIV0|contagem\(16) & ((\RELOGIO1|DIV0|Add0~29\) # (GND)))
-- \RELOGIO1|DIV0|Add0~31\ = CARRY((!\RELOGIO1|DIV0|Add0~29\) # (!\RELOGIO1|DIV0|contagem\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(16),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~29\,
	combout => \RELOGIO1|DIV0|Add0~30_combout\,
	cout => \RELOGIO1|DIV0|Add0~31\);

-- Location: LCCOMB_X21_Y29_N8
\RELOGIO1|DIV0|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~32_combout\ = (\RELOGIO1|DIV0|contagem\(17) & (\RELOGIO1|DIV0|Add0~31\ $ (GND))) # (!\RELOGIO1|DIV0|contagem\(17) & (!\RELOGIO1|DIV0|Add0~31\ & VCC))
-- \RELOGIO1|DIV0|Add0~33\ = CARRY((\RELOGIO1|DIV0|contagem\(17) & !\RELOGIO1|DIV0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(17),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~31\,
	combout => \RELOGIO1|DIV0|Add0~32_combout\,
	cout => \RELOGIO1|DIV0|Add0~33\);

-- Location: LCCOMB_X21_Y29_N10
\RELOGIO1|DIV0|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~34_combout\ = (\RELOGIO1|DIV0|contagem\(18) & (!\RELOGIO1|DIV0|Add0~33\)) # (!\RELOGIO1|DIV0|contagem\(18) & ((\RELOGIO1|DIV0|Add0~33\) # (GND)))
-- \RELOGIO1|DIV0|Add0~35\ = CARRY((!\RELOGIO1|DIV0|Add0~33\) # (!\RELOGIO1|DIV0|contagem\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(18),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~33\,
	combout => \RELOGIO1|DIV0|Add0~34_combout\,
	cout => \RELOGIO1|DIV0|Add0~35\);

-- Location: LCCOMB_X21_Y29_N12
\RELOGIO1|DIV0|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~36_combout\ = (\RELOGIO1|DIV0|contagem\(19) & (\RELOGIO1|DIV0|Add0~35\ $ (GND))) # (!\RELOGIO1|DIV0|contagem\(19) & (!\RELOGIO1|DIV0|Add0~35\ & VCC))
-- \RELOGIO1|DIV0|Add0~37\ = CARRY((\RELOGIO1|DIV0|contagem\(19) & !\RELOGIO1|DIV0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(19),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~35\,
	combout => \RELOGIO1|DIV0|Add0~36_combout\,
	cout => \RELOGIO1|DIV0|Add0~37\);

-- Location: LCCOMB_X21_Y29_N14
\RELOGIO1|DIV0|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~38_combout\ = (\RELOGIO1|DIV0|contagem\(20) & (!\RELOGIO1|DIV0|Add0~37\)) # (!\RELOGIO1|DIV0|contagem\(20) & ((\RELOGIO1|DIV0|Add0~37\) # (GND)))
-- \RELOGIO1|DIV0|Add0~39\ = CARRY((!\RELOGIO1|DIV0|Add0~37\) # (!\RELOGIO1|DIV0|contagem\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(20),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~37\,
	combout => \RELOGIO1|DIV0|Add0~38_combout\,
	cout => \RELOGIO1|DIV0|Add0~39\);

-- Location: LCCOMB_X21_Y29_N16
\RELOGIO1|DIV0|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~40_combout\ = (\RELOGIO1|DIV0|contagem\(21) & (\RELOGIO1|DIV0|Add0~39\ $ (GND))) # (!\RELOGIO1|DIV0|contagem\(21) & (!\RELOGIO1|DIV0|Add0~39\ & VCC))
-- \RELOGIO1|DIV0|Add0~41\ = CARRY((\RELOGIO1|DIV0|contagem\(21) & !\RELOGIO1|DIV0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(21),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~39\,
	combout => \RELOGIO1|DIV0|Add0~40_combout\,
	cout => \RELOGIO1|DIV0|Add0~41\);

-- Location: LCCOMB_X21_Y29_N18
\RELOGIO1|DIV0|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~42_combout\ = (\RELOGIO1|DIV0|contagem\(22) & (!\RELOGIO1|DIV0|Add0~41\)) # (!\RELOGIO1|DIV0|contagem\(22) & ((\RELOGIO1|DIV0|Add0~41\) # (GND)))
-- \RELOGIO1|DIV0|Add0~43\ = CARRY((!\RELOGIO1|DIV0|Add0~41\) # (!\RELOGIO1|DIV0|contagem\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|contagem\(22),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~41\,
	combout => \RELOGIO1|DIV0|Add0~42_combout\,
	cout => \RELOGIO1|DIV0|Add0~43\);

-- Location: LCCOMB_X21_Y29_N20
\RELOGIO1|DIV0|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~44_combout\ = (\RELOGIO1|DIV0|contagem\(23) & (\RELOGIO1|DIV0|Add0~43\ $ (GND))) # (!\RELOGIO1|DIV0|contagem\(23) & (!\RELOGIO1|DIV0|Add0~43\ & VCC))
-- \RELOGIO1|DIV0|Add0~45\ = CARRY((\RELOGIO1|DIV0|contagem\(23) & !\RELOGIO1|DIV0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(23),
	datad => VCC,
	cin => \RELOGIO1|DIV0|Add0~43\,
	combout => \RELOGIO1|DIV0|Add0~44_combout\,
	cout => \RELOGIO1|DIV0|Add0~45\);

-- Location: LCCOMB_X21_Y29_N22
\RELOGIO1|DIV0|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Add0~46_combout\ = \RELOGIO1|DIV0|Add0~45\ $ (\RELOGIO1|DIV0|contagem\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RELOGIO1|DIV0|contagem\(24),
	cin => \RELOGIO1|DIV0|Add0~45\,
	combout => \RELOGIO1|DIV0|Add0~46_combout\);

-- Location: LCFF_X20_Y30_N1
\DECODIF|DivFreq|estado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DECODIF|DivFreq|estado~0_combout\,
	ena => \DECODIF|DivFreq|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DECODIF|DivFreq|estado~regout\);

-- Location: LCFF_X30_Y16_N25
\RELOGIO1|MIN0A9|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|comb~clkctrl_outclk\,
	datain => \RELOGIO1|MIN0A9|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|MIN0A9|contagem\(1));

-- Location: LCCOMB_X29_Y16_N26
\Minutos1Sig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Minutos1Sig~1_combout\ = (SignalMode(0) & ((\ALARME1|MIN0A9|contagem\(3)))) # (!SignalMode(0) & (\RELOGIO1|MIN0A9|contagem\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|MIN0A9|contagem\(3),
	datab => \ALARME1|MIN0A9|contagem\(3),
	datad => SignalMode(0),
	combout => \Minutos1Sig~1_combout\);

-- Location: LCFF_X27_Y29_N1
\CRONOMETRO1|DIV0|estado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|estado~regout\);

-- Location: LCFF_X23_Y29_N27
\RELOGIO1|DIV0|estado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|estado~regout\);

-- Location: LCFF_X33_Y16_N27
\CRONOMETRO1|CONT0A9_1|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|DIV0|estado~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_1|tc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_1|tc~regout\);

-- Location: LCFF_X34_Y16_N7
\RELOGIO1|SEG0A9|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|DIV0|estado~clkctrl_outclk\,
	datain => \RELOGIO1|SEG0A9|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|SEG0A9|tc~regout\);

-- Location: LCFF_X20_Y30_N7
\DIVFREQ|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(0));

-- Location: LCFF_X19_Y30_N21
\DIVFREQ|contagem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(5));

-- Location: LCFF_X20_Y30_N17
\DIVFREQ|contagem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(4));

-- Location: LCCOMB_X19_Y30_N12
\DECODIF|DivFreq|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|DivFreq|Equal0~4_combout\ = (\DIVFREQ|contagem\(15) & (\DIVFREQ|contagem\(13) & (!\DIVFREQ|contagem\(16) & \DIVFREQ|contagem\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(15),
	datab => \DIVFREQ|contagem\(13),
	datac => \DIVFREQ|contagem\(16),
	datad => \DIVFREQ|contagem\(14),
	combout => \DECODIF|DivFreq|Equal0~4_combout\);

-- Location: LCFF_X20_Y29_N13
\DIVFREQ|contagem[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(18));

-- Location: LCCOMB_X30_Y16_N24
\RELOGIO1|MIN0A9|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|MIN0A9|contagem~0_combout\ = (\RELOGIO1|MIN0A9|contagem\(1) & (((!\RELOGIO1|MIN0A9|contagem\(0))))) # (!\RELOGIO1|MIN0A9|contagem\(1) & (\RELOGIO1|MIN0A9|contagem\(0) & ((\RELOGIO1|MIN0A9|contagem\(2)) # (!\RELOGIO1|MIN0A9|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|MIN0A9|contagem\(2),
	datab => \RELOGIO1|MIN0A9|contagem\(3),
	datac => \RELOGIO1|MIN0A9|contagem\(1),
	datad => \RELOGIO1|MIN0A9|contagem\(0),
	combout => \RELOGIO1|MIN0A9|contagem~0_combout\);

-- Location: LCFF_X31_Y13_N27
\CRONOMETRO1|CONT0A9_2|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_1|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_2|Equal0~0_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_2|tc~regout\);

-- Location: LCFF_X31_Y15_N21
\ALARME1|MIN0A9|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|comb~clkctrl_outclk\,
	datain => \ALARME1|MIN0A9|tc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|MIN0A9|tc~regout\);

-- Location: LCFF_X30_Y16_N17
\RELOGIO1|MIN0A9|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|comb~clkctrl_outclk\,
	datain => \RELOGIO1|MIN0A9|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|MIN0A9|tc~regout\);

-- Location: LCFF_X28_Y16_N11
\CRONOMETRO1|CONT0A9_3|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_2|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_3|Equal0~0_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_3|tc~regout\);

-- Location: LCCOMB_X30_Y17_N14
\RELOGIO1|SignalResetHora~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SignalResetHora~3_combout\ = (!\RELOGIO1|HR0A2|contagem\(0) & \RELOGIO1|HR0A2|contagem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|HR0A2|contagem\(0),
	datac => \RELOGIO1|HR0A2|contagem\(1),
	combout => \RELOGIO1|SignalResetHora~3_combout\);

-- Location: LCFF_X31_Y17_N27
\CRONOMETRO1|CONT0A5_1|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_3|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A5_1|Equal0~0_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A5_1|tc~regout\);

-- Location: LCFF_X32_Y16_N21
\CRONOMETRO1|CONT0A9_4|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A5_1|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_4|Equal0~0_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_4|tc~regout\);

-- Location: LCFF_X32_Y15_N11
\ALARME1|HR0A9|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|comb~10clkctrl_outclk\,
	datain => \ALARME1|HR0A9|tc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|HR0A9|tc~regout\);

-- Location: LCFF_X30_Y17_N25
\RELOGIO1|HR0A9|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|comb~6clkctrl_outclk\,
	datain => \RELOGIO1|HR0A9|tc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|HR0A9|tc~regout\);

-- Location: LCCOMB_X31_Y18_N20
\process_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\ALARME1|MIN0A5|contagem\(1) & (\RELOGIO1|MIN0A5|contagem\(1) & (\ALARME1|MIN0A5|contagem\(0) $ (!\RELOGIO1|MIN0A5|contagem\(0))))) # (!\ALARME1|MIN0A5|contagem\(1) & (!\RELOGIO1|MIN0A5|contagem\(1) & (\ALARME1|MIN0A5|contagem\(0) 
-- $ (!\RELOGIO1|MIN0A5|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|MIN0A5|contagem\(1),
	datab => \ALARME1|MIN0A5|contagem\(0),
	datac => \RELOGIO1|MIN0A5|contagem\(0),
	datad => \RELOGIO1|MIN0A5|contagem\(1),
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X30_Y16_N22
\process_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (\RELOGIO1|MIN0A9|contagem\(1) & (\ALARME1|MIN0A9|contagem\(1) & (\ALARME1|MIN0A9|contagem\(2) $ (!\RELOGIO1|MIN0A9|contagem\(2))))) # (!\RELOGIO1|MIN0A9|contagem\(1) & (!\ALARME1|MIN0A9|contagem\(1) & (\ALARME1|MIN0A9|contagem\(2) 
-- $ (!\RELOGIO1|MIN0A9|contagem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|MIN0A9|contagem\(1),
	datab => \ALARME1|MIN0A9|contagem\(1),
	datac => \ALARME1|MIN0A9|contagem\(2),
	datad => \RELOGIO1|MIN0A9|contagem\(2),
	combout => \process_1~6_combout\);

-- Location: LCFF_X23_Y29_N23
\CRONOMETRO1|DIV0|contagem[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(16));

-- Location: LCFF_X23_Y29_N31
\CRONOMETRO1|DIV0|contagem[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(17));

-- Location: LCFF_X23_Y30_N5
\CRONOMETRO1|DIV0|contagem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|contagem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(4));

-- Location: LCFF_X23_Y30_N11
\CRONOMETRO1|DIV0|contagem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|contagem~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(7));

-- Location: LCFF_X23_Y30_N27
\CRONOMETRO1|DIV0|contagem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(6));

-- Location: LCFF_X23_Y30_N25
\CRONOMETRO1|DIV0|contagem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(5));

-- Location: LCCOMB_X23_Y30_N12
\CRONOMETRO1|DIV0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Equal0~0_combout\ = (\CRONOMETRO1|DIV0|contagem\(7) & (\CRONOMETRO1|DIV0|contagem\(4) & (!\CRONOMETRO1|DIV0|contagem\(5) & !\CRONOMETRO1|DIV0|contagem\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(7),
	datab => \CRONOMETRO1|DIV0|contagem\(4),
	datac => \CRONOMETRO1|DIV0|contagem\(5),
	datad => \CRONOMETRO1|DIV0|contagem\(6),
	combout => \CRONOMETRO1|DIV0|Equal0~0_combout\);

-- Location: LCFF_X23_Y30_N31
\CRONOMETRO1|DIV0|contagem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(8));

-- Location: LCFF_X23_Y29_N1
\CRONOMETRO1|DIV0|contagem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(9));

-- Location: LCFF_X23_Y29_N3
\CRONOMETRO1|DIV0|contagem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(10));

-- Location: LCFF_X23_Y29_N5
\CRONOMETRO1|DIV0|contagem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(11));

-- Location: LCCOMB_X23_Y30_N2
\CRONOMETRO1|DIV0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Equal0~1_combout\ = (!\CRONOMETRO1|DIV0|contagem\(10) & (!\CRONOMETRO1|DIV0|contagem\(9) & (!\CRONOMETRO1|DIV0|contagem\(8) & !\CRONOMETRO1|DIV0|contagem\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(10),
	datab => \CRONOMETRO1|DIV0|contagem\(9),
	datac => \CRONOMETRO1|DIV0|contagem\(8),
	datad => \CRONOMETRO1|DIV0|contagem\(11),
	combout => \CRONOMETRO1|DIV0|Equal0~1_combout\);

-- Location: LCFF_X23_Y29_N29
\CRONOMETRO1|DIV0|contagem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|contagem~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(12));

-- Location: LCFF_X23_Y29_N19
\CRONOMETRO1|DIV0|contagem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|contagem~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(14));

-- Location: LCFF_X23_Y29_N25
\CRONOMETRO1|DIV0|contagem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|contagem~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(15));

-- Location: LCFF_X23_Y29_N9
\CRONOMETRO1|DIV0|contagem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CRONOMETRO1|DIV0|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|DIV0|contagem\(13));

-- Location: LCCOMB_X23_Y29_N20
\CRONOMETRO1|DIV0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Equal0~2_combout\ = (\CRONOMETRO1|DIV0|contagem\(15) & (\CRONOMETRO1|DIV0|contagem\(14) & (!\CRONOMETRO1|DIV0|contagem\(13) & \CRONOMETRO1|DIV0|contagem\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(15),
	datab => \CRONOMETRO1|DIV0|contagem\(14),
	datac => \CRONOMETRO1|DIV0|contagem\(13),
	datad => \CRONOMETRO1|DIV0|contagem\(12),
	combout => \CRONOMETRO1|DIV0|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y30_N0
\CRONOMETRO1|DIV0|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|Equal0~3_combout\ = (\CRONOMETRO1|DIV0|Equal0~0_combout\ & (\CRONOMETRO1|DIV0|Equal0~1_combout\ & (\DECODIF|DivFreq|Equal0~0_combout\ & \CRONOMETRO1|DIV0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|Equal0~0_combout\,
	datab => \CRONOMETRO1|DIV0|Equal0~1_combout\,
	datac => \DECODIF|DivFreq|Equal0~0_combout\,
	datad => \CRONOMETRO1|DIV0|Equal0~2_combout\,
	combout => \CRONOMETRO1|DIV0|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y29_N0
\CRONOMETRO1|DIV0|estado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|estado~0_combout\ = \CRONOMETRO1|DIV0|estado~regout\ $ (((\CRONOMETRO1|DIV0|contagem\(16) & (\CRONOMETRO1|DIV0|contagem\(17) & \CRONOMETRO1|DIV0|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(16),
	datab => \CRONOMETRO1|DIV0|contagem\(17),
	datac => \CRONOMETRO1|DIV0|estado~regout\,
	datad => \CRONOMETRO1|DIV0|Equal0~3_combout\,
	combout => \CRONOMETRO1|DIV0|estado~0_combout\);

-- Location: LCFF_X22_Y29_N5
\RELOGIO1|DIV0|contagem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(11));

-- Location: LCFF_X21_Y30_N27
\RELOGIO1|DIV0|contagem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(10));

-- Location: LCFF_X21_Y30_N25
\RELOGIO1|DIV0|contagem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(9));

-- Location: LCFF_X21_Y30_N23
\RELOGIO1|DIV0|contagem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(8));

-- Location: LCCOMB_X21_Y30_N4
\RELOGIO1|DIV0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Equal0~0_combout\ = (!\RELOGIO1|DIV0|contagem\(10) & (!\RELOGIO1|DIV0|contagem\(8) & (!\RELOGIO1|DIV0|contagem\(9) & \RELOGIO1|DIV0|contagem\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(10),
	datab => \RELOGIO1|DIV0|contagem\(8),
	datac => \RELOGIO1|DIV0|contagem\(9),
	datad => \RELOGIO1|DIV0|contagem\(11),
	combout => \RELOGIO1|DIV0|Equal0~0_combout\);

-- Location: LCFF_X21_Y30_N7
\RELOGIO1|DIV0|contagem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(6));

-- Location: LCFF_X21_Y30_N1
\RELOGIO1|DIV0|contagem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(12));

-- Location: LCFF_X21_Y30_N21
\RELOGIO1|DIV0|contagem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(7));

-- Location: LCFF_X21_Y30_N17
\RELOGIO1|DIV0|contagem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(5));

-- Location: LCCOMB_X21_Y30_N2
\RELOGIO1|DIV0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Equal0~1_combout\ = (!\RELOGIO1|DIV0|contagem\(5) & (\RELOGIO1|DIV0|contagem\(12) & (!\RELOGIO1|DIV0|contagem\(7) & \RELOGIO1|DIV0|contagem\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(5),
	datab => \RELOGIO1|DIV0|contagem\(12),
	datac => \RELOGIO1|DIV0|contagem\(7),
	datad => \RELOGIO1|DIV0|contagem\(6),
	combout => \RELOGIO1|DIV0|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y29_N24
\RELOGIO1|DIV0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Equal0~2_combout\ = (!\DIVFREQ|contagem\(4) & (\RELOGIO1|DIV0|Equal0~1_combout\ & (\DECODIF|DivFreq|Equal0~0_combout\ & \RELOGIO1|DIV0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(4),
	datab => \RELOGIO1|DIV0|Equal0~1_combout\,
	datac => \DECODIF|DivFreq|Equal0~0_combout\,
	datad => \RELOGIO1|DIV0|Equal0~0_combout\,
	combout => \RELOGIO1|DIV0|Equal0~2_combout\);

-- Location: LCFF_X22_Y29_N19
\RELOGIO1|DIV0|contagem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(13));

-- Location: LCFF_X22_Y29_N17
\RELOGIO1|DIV0|contagem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(14));

-- Location: LCFF_X22_Y29_N31
\RELOGIO1|DIV0|contagem[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(16));

-- Location: LCFF_X21_Y29_N5
\RELOGIO1|DIV0|contagem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(15));

-- Location: LCCOMB_X22_Y29_N24
\RELOGIO1|DIV0|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Equal0~3_combout\ = (\RELOGIO1|DIV0|contagem\(14) & (\RELOGIO1|DIV0|contagem\(16) & (!\RELOGIO1|DIV0|contagem\(15) & \RELOGIO1|DIV0|contagem\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(14),
	datab => \RELOGIO1|DIV0|contagem\(16),
	datac => \RELOGIO1|DIV0|contagem\(15),
	datad => \RELOGIO1|DIV0|contagem\(13),
	combout => \RELOGIO1|DIV0|Equal0~3_combout\);

-- Location: LCFF_X22_Y29_N15
\RELOGIO1|DIV0|contagem[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(18));

-- Location: LCFF_X22_Y29_N13
\RELOGIO1|DIV0|contagem[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(19));

-- Location: LCFF_X22_Y29_N11
\RELOGIO1|DIV0|contagem[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(20));

-- Location: LCFF_X21_Y29_N9
\RELOGIO1|DIV0|contagem[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(17));

-- Location: LCCOMB_X22_Y29_N8
\RELOGIO1|DIV0|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Equal0~4_combout\ = (!\RELOGIO1|DIV0|contagem\(17) & (\RELOGIO1|DIV0|contagem\(18) & (\RELOGIO1|DIV0|contagem\(20) & \RELOGIO1|DIV0|contagem\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(17),
	datab => \RELOGIO1|DIV0|contagem\(18),
	datac => \RELOGIO1|DIV0|contagem\(20),
	datad => \RELOGIO1|DIV0|contagem\(19),
	combout => \RELOGIO1|DIV0|Equal0~4_combout\);

-- Location: LCFF_X21_Y29_N27
\RELOGIO1|DIV0|contagem[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(21));

-- Location: LCFF_X21_Y29_N29
\RELOGIO1|DIV0|contagem[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(22));

-- Location: LCFF_X21_Y29_N31
\RELOGIO1|DIV0|contagem[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|contagem~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(24));

-- Location: LCFF_X21_Y29_N21
\RELOGIO1|DIV0|contagem[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RELOGIO1|DIV0|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|DIV0|contagem\(23));

-- Location: LCCOMB_X22_Y29_N6
\RELOGIO1|DIV0|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Equal0~5_combout\ = (\RELOGIO1|DIV0|contagem\(24) & (\RELOGIO1|DIV0|contagem\(22) & (!\RELOGIO1|DIV0|contagem\(23) & \RELOGIO1|DIV0|contagem\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|contagem\(24),
	datab => \RELOGIO1|DIV0|contagem\(22),
	datac => \RELOGIO1|DIV0|contagem\(23),
	datad => \RELOGIO1|DIV0|contagem\(21),
	combout => \RELOGIO1|DIV0|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y29_N0
\RELOGIO1|DIV0|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|Equal0~6_combout\ = (\RELOGIO1|DIV0|Equal0~5_combout\ & (\RELOGIO1|DIV0|Equal0~4_combout\ & (\RELOGIO1|DIV0|Equal0~3_combout\ & \RELOGIO1|DIV0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|DIV0|Equal0~5_combout\,
	datab => \RELOGIO1|DIV0|Equal0~4_combout\,
	datac => \RELOGIO1|DIV0|Equal0~3_combout\,
	datad => \RELOGIO1|DIV0|Equal0~2_combout\,
	combout => \RELOGIO1|DIV0|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y29_N26
\RELOGIO1|DIV0|estado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|estado~0_combout\ = \RELOGIO1|DIV0|estado~regout\ $ (\RELOGIO1|DIV0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|DIV0|estado~regout\,
	datad => \RELOGIO1|DIV0|Equal0~6_combout\,
	combout => \RELOGIO1|DIV0|estado~0_combout\);

-- Location: LCCOMB_X33_Y16_N4
\CRONOMETRO1|CONT0A9_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_1|Equal0~0_combout\ = (!\CRONOMETRO1|CONT0A9_1|contagem\(2) & (\CRONOMETRO1|CONT0A9_1|contagem\(3) & (\CRONOMETRO1|CONT0A9_1|contagem\(0) & !\CRONOMETRO1|CONT0A9_1|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_1|contagem\(2),
	datab => \CRONOMETRO1|CONT0A9_1|contagem\(3),
	datac => \CRONOMETRO1|CONT0A9_1|contagem\(0),
	datad => \CRONOMETRO1|CONT0A9_1|contagem\(1),
	combout => \CRONOMETRO1|CONT0A9_1|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y16_N26
\CRONOMETRO1|CONT0A9_1|tc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_1|tc~0_combout\ = (\CRONOMETRO1|FFJK|temp~regout\ & ((\comb~0_combout\ & (\CRONOMETRO1|CONT0A9_1|Equal0~0_combout\)) # (!\comb~0_combout\ & ((\CRONOMETRO1|CONT0A9_1|tc~regout\))))) # (!\CRONOMETRO1|FFJK|temp~regout\ & 
-- (((\CRONOMETRO1|CONT0A9_1|tc~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|FFJK|temp~regout\,
	datab => \CRONOMETRO1|CONT0A9_1|Equal0~0_combout\,
	datac => \CRONOMETRO1|CONT0A9_1|tc~regout\,
	datad => \comb~0_combout\,
	combout => \CRONOMETRO1|CONT0A9_1|tc~0_combout\);

-- Location: LCCOMB_X34_Y16_N6
\RELOGIO1|SEG0A9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SEG0A9|Equal0~0_combout\ = (!\RELOGIO1|SEG0A9|contagem\(2) & (\RELOGIO1|SEG0A9|contagem\(0) & (\RELOGIO1|SEG0A9|contagem\(3) & !\RELOGIO1|SEG0A9|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|SEG0A9|contagem\(2),
	datab => \RELOGIO1|SEG0A9|contagem\(0),
	datac => \RELOGIO1|SEG0A9|contagem\(3),
	datad => \RELOGIO1|SEG0A9|contagem\(1),
	combout => \RELOGIO1|SEG0A9|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y30_N20
\DIVFREQ|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem~2_combout\ = (!\DECODIF|DivFreq|Equal0~7_combout\ & \DIVFREQ|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|DivFreq|Equal0~7_combout\,
	datad => \DIVFREQ|Add0~10_combout\,
	combout => \DIVFREQ|contagem~2_combout\);

-- Location: LCCOMB_X30_Y15_N26
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (SignalMode(0) & !SignalMode(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SignalMode(0),
	datad => SignalMode(1),
	combout => \comb~2_combout\);

-- Location: LCFF_X33_Y13_N1
\RELOGIO1|SEG0A5|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|SEG0A9|tc~regout\,
	datain => \RELOGIO1|SEG0A5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|SEG0A5|tc~regout\);

-- Location: LCCOMB_X30_Y14_N24
\RELOGIO1|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|comb~2_combout\ = (!\start~combout\ & (!SignalMode(1) & !SignalMode(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~combout\,
	datac => SignalMode(1),
	datad => SignalMode(0),
	combout => \RELOGIO1|comb~2_combout\);

-- Location: LCCOMB_X31_Y13_N26
\CRONOMETRO1|CONT0A9_2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_2|Equal0~0_combout\ = (\CRONOMETRO1|CONT0A9_2|contagem\(0) & (!\CRONOMETRO1|CONT0A9_2|contagem\(2) & (!\CRONOMETRO1|CONT0A9_2|contagem\(1) & \CRONOMETRO1|CONT0A9_2|contagem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_2|contagem\(0),
	datab => \CRONOMETRO1|CONT0A9_2|contagem\(2),
	datac => \CRONOMETRO1|CONT0A9_2|contagem\(1),
	datad => \CRONOMETRO1|CONT0A9_2|contagem\(3),
	combout => \CRONOMETRO1|CONT0A9_2|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y15_N26
\ALARME1|MIN0A9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|MIN0A9|Equal0~0_combout\ = (\ALARME1|MIN0A9|contagem\(3) & (!\ALARME1|MIN0A9|contagem\(2) & (\ALARME1|MIN0A9|contagem\(0) & !\ALARME1|MIN0A9|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|MIN0A9|contagem\(3),
	datab => \ALARME1|MIN0A9|contagem\(2),
	datac => \ALARME1|MIN0A9|contagem\(0),
	datad => \ALARME1|MIN0A9|contagem\(1),
	combout => \ALARME1|MIN0A9|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y15_N20
\ALARME1|MIN0A9|tc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|MIN0A9|tc~0_combout\ = (\ALARME1|LOGICADOALARME|FFJK|temp~regout\ & ((\comb~13\ & (\ALARME1|MIN0A9|tc~regout\)) # (!\comb~13\ & ((\ALARME1|MIN0A9|Equal0~0_combout\))))) # (!\ALARME1|LOGICADOALARME|FFJK|temp~regout\ & 
-- (((\ALARME1|MIN0A9|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	datab => \comb~13\,
	datac => \ALARME1|MIN0A9|tc~regout\,
	datad => \ALARME1|MIN0A9|Equal0~0_combout\,
	combout => \ALARME1|MIN0A9|tc~0_combout\);

-- Location: LCCOMB_X30_Y16_N16
\RELOGIO1|MIN0A9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|MIN0A9|Equal0~0_combout\ = (!\RELOGIO1|MIN0A9|contagem\(2) & (\RELOGIO1|MIN0A9|contagem\(0) & (!\RELOGIO1|MIN0A9|contagem\(1) & \RELOGIO1|MIN0A9|contagem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|MIN0A9|contagem\(2),
	datab => \RELOGIO1|MIN0A9|contagem\(0),
	datac => \RELOGIO1|MIN0A9|contagem\(1),
	datad => \RELOGIO1|MIN0A9|contagem\(3),
	combout => \RELOGIO1|MIN0A9|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y16_N10
\CRONOMETRO1|CONT0A9_3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_3|Equal0~0_combout\ = (\CRONOMETRO1|CONT0A9_3|contagem\(0) & (\CRONOMETRO1|CONT0A9_3|contagem\(3) & (!\CRONOMETRO1|CONT0A9_3|contagem\(1) & !\CRONOMETRO1|CONT0A9_3|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_3|contagem\(0),
	datab => \CRONOMETRO1|CONT0A9_3|contagem\(3),
	datac => \CRONOMETRO1|CONT0A9_3|contagem\(1),
	datad => \CRONOMETRO1|CONT0A9_3|contagem\(2),
	combout => \CRONOMETRO1|CONT0A9_3|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y15_N12
\ALARME1|comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|comb~10\ = LCELL((!\ALARME1|LOGICADOALARME|signalcont~regout\ & (\comb~2_combout\ & (\ALARME1|LOGICADOALARME|FFJK|temp~regout\ & !\start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|LOGICADOALARME|signalcont~regout\,
	datab => \comb~2_combout\,
	datac => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	datad => \start~combout\,
	combout => \ALARME1|comb~10\);

-- Location: LCFF_X30_Y18_N29
\RELOGIO1|MIN0A5|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|MIN0A9|tc~regout\,
	datain => \RELOGIO1|MIN0A5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|MIN0A5|tc~regout\);

-- Location: LCCOMB_X30_Y14_N2
\RELOGIO1|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|comb~6\ = LCELL((\RELOGIO1|MIN0A5|tc~regout\) # ((\RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\ & (\RELOGIO1|comb~2_combout\ & !\RELOGIO1|LOGICADOCONFIG|signalcont~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|MIN0A5|tc~regout\,
	datab => \RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\,
	datac => \RELOGIO1|comb~2_combout\,
	datad => \RELOGIO1|LOGICADOCONFIG|signalcont~regout\,
	combout => \RELOGIO1|comb~6\);

-- Location: LCCOMB_X31_Y17_N26
\CRONOMETRO1|CONT0A5_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A5_1|Equal0~0_combout\ = (\CRONOMETRO1|CONT0A5_1|contagem\(0) & (!\CRONOMETRO1|CONT0A5_1|contagem\(1) & \CRONOMETRO1|CONT0A5_1|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A5_1|contagem\(0),
	datab => \CRONOMETRO1|CONT0A5_1|contagem\(1),
	datad => \CRONOMETRO1|CONT0A5_1|contagem\(2),
	combout => \CRONOMETRO1|CONT0A5_1|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y16_N20
\CRONOMETRO1|CONT0A9_4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_4|Equal0~0_combout\ = (\CRONOMETRO1|CONT0A9_4|contagem\(3) & (\CRONOMETRO1|CONT0A9_4|contagem\(0) & (!\CRONOMETRO1|CONT0A9_4|contagem\(2) & !\CRONOMETRO1|CONT0A9_4|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_4|contagem\(3),
	datab => \CRONOMETRO1|CONT0A9_4|contagem\(0),
	datac => \CRONOMETRO1|CONT0A9_4|contagem\(2),
	datad => \CRONOMETRO1|CONT0A9_4|contagem\(1),
	combout => \CRONOMETRO1|CONT0A9_4|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y15_N18
\ALARME1|HR0A9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|HR0A9|Equal0~0_combout\ = (!\ALARME1|HR0A9|contagem\(1) & (!\ALARME1|HR0A9|contagem\(2) & (\ALARME1|HR0A9|contagem\(0) & \ALARME1|HR0A9|contagem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|HR0A9|contagem\(1),
	datab => \ALARME1|HR0A9|contagem\(2),
	datac => \ALARME1|HR0A9|contagem\(0),
	datad => \ALARME1|HR0A9|contagem\(3),
	combout => \ALARME1|HR0A9|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y15_N10
\ALARME1|HR0A9|tc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|HR0A9|tc~0_combout\ = (\ALARME1|comb~6_combout\ & ((\ALARME1|HR0A9|tc~regout\))) # (!\ALARME1|comb~6_combout\ & (\ALARME1|HR0A9|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALARME1|HR0A9|Equal0~0_combout\,
	datac => \ALARME1|HR0A9|tc~regout\,
	datad => \ALARME1|comb~6_combout\,
	combout => \ALARME1|HR0A9|tc~0_combout\);

-- Location: LCCOMB_X30_Y17_N2
\RELOGIO1|HR0A9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|HR0A9|Equal0~0_combout\ = (\RELOGIO1|HR0A9|contagem\(0) & (\RELOGIO1|HR0A9|contagem\(3) & (!\RELOGIO1|HR0A9|contagem\(1) & !\RELOGIO1|HR0A9|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|HR0A9|contagem\(0),
	datab => \RELOGIO1|HR0A9|contagem\(3),
	datac => \RELOGIO1|HR0A9|contagem\(1),
	datad => \RELOGIO1|HR0A9|contagem\(2),
	combout => \RELOGIO1|HR0A9|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y17_N24
\RELOGIO1|HR0A9|tc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|HR0A9|tc~0_combout\ = (\RELOGIO1|SignalResetHora~3_combout\ & ((\RELOGIO1|SignalResetHora~2_combout\ & ((\RELOGIO1|HR0A9|tc~regout\))) # (!\RELOGIO1|SignalResetHora~2_combout\ & (\RELOGIO1|HR0A9|Equal0~0_combout\)))) # 
-- (!\RELOGIO1|SignalResetHora~3_combout\ & (\RELOGIO1|HR0A9|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|SignalResetHora~3_combout\,
	datab => \RELOGIO1|HR0A9|Equal0~0_combout\,
	datac => \RELOGIO1|HR0A9|tc~regout\,
	datad => \RELOGIO1|SignalResetHora~2_combout\,
	combout => \RELOGIO1|HR0A9|tc~0_combout\);

-- Location: LCCOMB_X31_Y14_N30
comb : cycloneii_lcell_comb
-- Equation(s):
-- \comb~combout\ = LCELL((\config~combout\ & (!SignalMode(0) & !SignalMode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \config~combout\,
	datac => SignalMode(0),
	datad => SignalMode(1),
	combout => \comb~combout\);

-- Location: LCCOMB_X31_Y14_N20
\comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~14\ = LCELL((\config~combout\ & (SignalMode(0) & !SignalMode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \config~combout\,
	datac => SignalMode(0),
	datad => SignalMode(1),
	combout => \comb~14\);

-- Location: LCCOMB_X23_Y29_N22
\CRONOMETRO1|DIV0|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|contagem~0_combout\ = (\CRONOMETRO1|DIV0|Add0~30_combout\ & (((!\CRONOMETRO1|DIV0|contagem\(16)) # (!\CRONOMETRO1|DIV0|Equal0~3_combout\)) # (!\CRONOMETRO1|DIV0|contagem\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(17),
	datab => \CRONOMETRO1|DIV0|Equal0~3_combout\,
	datac => \CRONOMETRO1|DIV0|contagem\(16),
	datad => \CRONOMETRO1|DIV0|Add0~30_combout\,
	combout => \CRONOMETRO1|DIV0|contagem~0_combout\);

-- Location: LCCOMB_X23_Y29_N30
\CRONOMETRO1|DIV0|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|contagem~1_combout\ = (\CRONOMETRO1|DIV0|Add0~32_combout\ & (((!\CRONOMETRO1|DIV0|contagem\(17)) # (!\CRONOMETRO1|DIV0|Equal0~3_combout\)) # (!\CRONOMETRO1|DIV0|contagem\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(16),
	datab => \CRONOMETRO1|DIV0|Equal0~3_combout\,
	datac => \CRONOMETRO1|DIV0|contagem\(17),
	datad => \CRONOMETRO1|DIV0|Add0~32_combout\,
	combout => \CRONOMETRO1|DIV0|contagem~1_combout\);

-- Location: LCCOMB_X23_Y30_N4
\CRONOMETRO1|DIV0|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|contagem~2_combout\ = (\CRONOMETRO1|DIV0|Add0~6_combout\ & (((!\CRONOMETRO1|DIV0|Equal0~3_combout\) # (!\CRONOMETRO1|DIV0|contagem\(16))) # (!\CRONOMETRO1|DIV0|contagem\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(17),
	datab => \CRONOMETRO1|DIV0|Add0~6_combout\,
	datac => \CRONOMETRO1|DIV0|contagem\(16),
	datad => \CRONOMETRO1|DIV0|Equal0~3_combout\,
	combout => \CRONOMETRO1|DIV0|contagem~2_combout\);

-- Location: LCCOMB_X23_Y30_N10
\CRONOMETRO1|DIV0|contagem~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|contagem~3_combout\ = (\CRONOMETRO1|DIV0|Add0~12_combout\ & (((!\CRONOMETRO1|DIV0|contagem\(16)) # (!\CRONOMETRO1|DIV0|Equal0~3_combout\)) # (!\CRONOMETRO1|DIV0|contagem\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(17),
	datab => \CRONOMETRO1|DIV0|Equal0~3_combout\,
	datac => \CRONOMETRO1|DIV0|contagem\(16),
	datad => \CRONOMETRO1|DIV0|Add0~12_combout\,
	combout => \CRONOMETRO1|DIV0|contagem~3_combout\);

-- Location: LCCOMB_X23_Y29_N28
\CRONOMETRO1|DIV0|contagem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|contagem~4_combout\ = (\CRONOMETRO1|DIV0|Add0~22_combout\ & (((!\CRONOMETRO1|DIV0|Equal0~3_combout\) # (!\CRONOMETRO1|DIV0|contagem\(17))) # (!\CRONOMETRO1|DIV0|contagem\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|Add0~22_combout\,
	datab => \CRONOMETRO1|DIV0|contagem\(16),
	datac => \CRONOMETRO1|DIV0|contagem\(17),
	datad => \CRONOMETRO1|DIV0|Equal0~3_combout\,
	combout => \CRONOMETRO1|DIV0|contagem~4_combout\);

-- Location: LCCOMB_X23_Y29_N18
\CRONOMETRO1|DIV0|contagem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|contagem~5_combout\ = (\CRONOMETRO1|DIV0|Add0~26_combout\ & (((!\CRONOMETRO1|DIV0|contagem\(17)) # (!\CRONOMETRO1|DIV0|Equal0~3_combout\)) # (!\CRONOMETRO1|DIV0|contagem\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(16),
	datab => \CRONOMETRO1|DIV0|Equal0~3_combout\,
	datac => \CRONOMETRO1|DIV0|contagem\(17),
	datad => \CRONOMETRO1|DIV0|Add0~26_combout\,
	combout => \CRONOMETRO1|DIV0|contagem~5_combout\);

-- Location: LCCOMB_X23_Y29_N24
\CRONOMETRO1|DIV0|contagem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|DIV0|contagem~6_combout\ = (\CRONOMETRO1|DIV0|Add0~28_combout\ & (((!\CRONOMETRO1|DIV0|contagem\(17)) # (!\CRONOMETRO1|DIV0|Equal0~3_combout\)) # (!\CRONOMETRO1|DIV0|contagem\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|DIV0|contagem\(16),
	datab => \CRONOMETRO1|DIV0|Equal0~3_combout\,
	datac => \CRONOMETRO1|DIV0|contagem\(17),
	datad => \CRONOMETRO1|DIV0|Add0~28_combout\,
	combout => \CRONOMETRO1|DIV0|contagem~6_combout\);

-- Location: LCCOMB_X32_Y16_N6
\comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~15\ = LCELL((!\start~combout\ & (SignalMode(1) & SignalMode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datac => SignalMode(1),
	datad => SignalMode(0),
	combout => \comb~15\);

-- Location: LCCOMB_X22_Y29_N4
\RELOGIO1|DIV0|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~0_combout\ = (!\RELOGIO1|DIV0|Equal0~6_combout\ & \RELOGIO1|DIV0|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|Equal0~6_combout\,
	datad => \RELOGIO1|DIV0|Add0~20_combout\,
	combout => \RELOGIO1|DIV0|contagem~0_combout\);

-- Location: LCCOMB_X21_Y30_N6
\RELOGIO1|DIV0|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~1_combout\ = (\RELOGIO1|DIV0|Add0~10_combout\ & !\RELOGIO1|DIV0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|Add0~10_combout\,
	datad => \RELOGIO1|DIV0|Equal0~6_combout\,
	combout => \RELOGIO1|DIV0|contagem~1_combout\);

-- Location: LCCOMB_X21_Y30_N0
\RELOGIO1|DIV0|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~2_combout\ = (!\RELOGIO1|DIV0|Equal0~6_combout\ & \RELOGIO1|DIV0|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|DIV0|Equal0~6_combout\,
	datad => \RELOGIO1|DIV0|Add0~22_combout\,
	combout => \RELOGIO1|DIV0|contagem~2_combout\);

-- Location: LCCOMB_X22_Y29_N18
\RELOGIO1|DIV0|contagem~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~3_combout\ = (\RELOGIO1|DIV0|Add0~24_combout\ & !\RELOGIO1|DIV0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|DIV0|Add0~24_combout\,
	datad => \RELOGIO1|DIV0|Equal0~6_combout\,
	combout => \RELOGIO1|DIV0|contagem~3_combout\);

-- Location: LCCOMB_X22_Y29_N16
\RELOGIO1|DIV0|contagem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~4_combout\ = (!\RELOGIO1|DIV0|Equal0~6_combout\ & \RELOGIO1|DIV0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|Equal0~6_combout\,
	datad => \RELOGIO1|DIV0|Add0~26_combout\,
	combout => \RELOGIO1|DIV0|contagem~4_combout\);

-- Location: LCCOMB_X22_Y29_N30
\RELOGIO1|DIV0|contagem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~5_combout\ = (\RELOGIO1|DIV0|Add0~30_combout\ & !\RELOGIO1|DIV0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|DIV0|Add0~30_combout\,
	datad => \RELOGIO1|DIV0|Equal0~6_combout\,
	combout => \RELOGIO1|DIV0|contagem~5_combout\);

-- Location: LCCOMB_X22_Y29_N14
\RELOGIO1|DIV0|contagem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~6_combout\ = (!\RELOGIO1|DIV0|Equal0~6_combout\ & \RELOGIO1|DIV0|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|Equal0~6_combout\,
	datad => \RELOGIO1|DIV0|Add0~34_combout\,
	combout => \RELOGIO1|DIV0|contagem~6_combout\);

-- Location: LCCOMB_X22_Y29_N12
\RELOGIO1|DIV0|contagem~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~7_combout\ = (!\RELOGIO1|DIV0|Equal0~6_combout\ & \RELOGIO1|DIV0|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|Equal0~6_combout\,
	datad => \RELOGIO1|DIV0|Add0~36_combout\,
	combout => \RELOGIO1|DIV0|contagem~7_combout\);

-- Location: LCCOMB_X22_Y29_N10
\RELOGIO1|DIV0|contagem~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~8_combout\ = (!\RELOGIO1|DIV0|Equal0~6_combout\ & \RELOGIO1|DIV0|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|Equal0~6_combout\,
	datad => \RELOGIO1|DIV0|Add0~38_combout\,
	combout => \RELOGIO1|DIV0|contagem~8_combout\);

-- Location: LCCOMB_X21_Y29_N26
\RELOGIO1|DIV0|contagem~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~9_combout\ = (!\RELOGIO1|DIV0|Equal0~6_combout\ & \RELOGIO1|DIV0|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|DIV0|Equal0~6_combout\,
	datac => \RELOGIO1|DIV0|Add0~40_combout\,
	combout => \RELOGIO1|DIV0|contagem~9_combout\);

-- Location: LCCOMB_X21_Y29_N28
\RELOGIO1|DIV0|contagem~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~10_combout\ = (!\RELOGIO1|DIV0|Equal0~6_combout\ & \RELOGIO1|DIV0|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|DIV0|Equal0~6_combout\,
	datad => \RELOGIO1|DIV0|Add0~42_combout\,
	combout => \RELOGIO1|DIV0|contagem~10_combout\);

-- Location: LCCOMB_X21_Y29_N30
\RELOGIO1|DIV0|contagem~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|DIV0|contagem~11_combout\ = (!\RELOGIO1|DIV0|Equal0~6_combout\ & \RELOGIO1|DIV0|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|DIV0|Equal0~6_combout\,
	datad => \RELOGIO1|DIV0|Add0~46_combout\,
	combout => \RELOGIO1|DIV0|contagem~11_combout\);

-- Location: LCCOMB_X30_Y15_N20
\comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~16\ = LCELL((!\set~combout\ & (!SignalMode(1) & SignalMode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~combout\,
	datac => SignalMode(1),
	datad => SignalMode(0),
	combout => \comb~16\);

-- Location: LCCOMB_X30_Y14_N6
\comb~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~17\ = LCELL((!\set~combout\ & (!SignalMode(1) & !SignalMode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~combout\,
	datac => SignalMode(1),
	datad => SignalMode(0),
	combout => \comb~17\);

-- Location: LCCOMB_X33_Y13_N0
\RELOGIO1|SEG0A5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SEG0A5|Equal0~0_combout\ = (\RELOGIO1|SEG0A5|contagem\(0) & (!\RELOGIO1|SEG0A5|contagem\(1) & \RELOGIO1|SEG0A5|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|SEG0A5|contagem\(0),
	datac => \RELOGIO1|SEG0A5|contagem\(1),
	datad => \RELOGIO1|SEG0A5|contagem\(2),
	combout => \RELOGIO1|SEG0A5|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y18_N28
\RELOGIO1|MIN0A5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|MIN0A5|Equal0~0_combout\ = (\RELOGIO1|MIN0A5|contagem\(0) & (!\RELOGIO1|MIN0A5|contagem\(1) & \RELOGIO1|MIN0A5|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|MIN0A5|contagem\(0),
	datac => \RELOGIO1|MIN0A5|contagem\(1),
	datad => \RELOGIO1|MIN0A5|contagem\(2),
	combout => \RELOGIO1|MIN0A5|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y15_N16
\ALARME1|comb\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|comb~combout\ = LCELL((\ALARME1|LOGICADOALARME|signalcont~regout\ & (\comb~2_combout\ & (\ALARME1|LOGICADOALARME|FFJK|temp~regout\ & !\start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|LOGICADOALARME|signalcont~regout\,
	datab => \comb~2_combout\,
	datac => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	datad => \start~combout\,
	combout => \ALARME1|comb~combout\);

-- Location: LCCOMB_X29_Y14_N30
\RELOGIO1|comb\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|comb~combout\ = LCELL((\RELOGIO1|SEG0A5|tc~regout\) # ((\RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\ & (\RELOGIO1|LOGICADOCONFIG|signalcont~regout\ & \RELOGIO1|comb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|SEG0A5|tc~regout\,
	datab => \RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\,
	datac => \RELOGIO1|LOGICADOCONFIG|signalcont~regout\,
	datad => \RELOGIO1|comb~2_combout\,
	combout => \RELOGIO1|comb~combout\);

-- Location: LCCOMB_X20_Y30_N0
\DECODIF|DivFreq|estado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|DivFreq|estado~0_combout\ = !\DECODIF|DivFreq|estado~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|DivFreq|estado~regout\,
	combout => \DECODIF|DivFreq|estado~0_combout\);

-- Location: LCCOMB_X20_Y30_N6
\DIVFREQ|contagem[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem[0]~10_combout\ = !\DIVFREQ|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIVFREQ|Add0~0_combout\,
	combout => \DIVFREQ|contagem[0]~10_combout\);

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

-- Location: CLKCTRL_G11
\CRONOMETRO1|CONT0A5_1|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CRONOMETRO1|CONT0A5_1|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CRONOMETRO1|CONT0A5_1|tc~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\ALARME1|comb~10clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ALARME1|comb~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ALARME1|comb~10clkctrl_outclk\);

-- Location: CLKCTRL_G13
\ALARME1|comb~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ALARME1|comb~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ALARME1|comb~clkctrl_outclk\);

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

-- Location: CLKCTRL_G7
\CRONOMETRO1|CONT0A9_1|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CRONOMETRO1|CONT0A9_1|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CRONOMETRO1|CONT0A9_1|tc~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\RELOGIO1|comb~6clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOGIO1|comb~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOGIO1|comb~6clkctrl_outclk\);

-- Location: CLKCTRL_G8
\CRONOMETRO1|DIV0|estado~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CRONOMETRO1|DIV0|estado~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CRONOMETRO1|DIV0|estado~clkctrl_outclk\);

-- Location: CLKCTRL_G1
\CRONOMETRO1|CONT0A9_3|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CRONOMETRO1|CONT0A9_3|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CRONOMETRO1|CONT0A9_3|tc~clkctrl_outclk\);

-- Location: CLKCTRL_G0
\RELOGIO1|comb~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOGIO1|comb~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOGIO1|comb~clkctrl_outclk\);

-- Location: CLKCTRL_G15
\CRONOMETRO1|CONT0A9_2|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CRONOMETRO1|CONT0A9_2|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CRONOMETRO1|CONT0A9_2|tc~clkctrl_outclk\);

-- Location: CLKCTRL_G12
\ALARME1|MIN0A9|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ALARME1|MIN0A9|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ALARME1|MIN0A9|tc~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\RELOGIO1|DIV0|estado~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOGIO1|DIV0|estado~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOGIO1|DIV0|estado~clkctrl_outclk\);

-- Location: CLKCTRL_G6
\ALARME1|HR0A9|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ALARME1|HR0A9|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ALARME1|HR0A9|tc~clkctrl_outclk\);

-- Location: CLKCTRL_G4
\RELOGIO1|SEG0A9|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOGIO1|SEG0A9|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOGIO1|SEG0A9|tc~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\RELOGIO1|MIN0A9|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOGIO1|MIN0A9|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOGIO1|MIN0A9|tc~clkctrl_outclk\);

-- Location: CLKCTRL_G5
\CRONOMETRO1|CONT0A9_4|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CRONOMETRO1|CONT0A9_4|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CRONOMETRO1|CONT0A9_4|tc~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y14_N0
\SignalMode[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SignalMode[1]~1_combout\ = SignalMode(0) $ (SignalMode(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(0),
	datac => SignalMode(1),
	combout => \SignalMode[1]~1_combout\);

-- Location: LCFF_X31_Y14_N1
\SignalMode[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_mode~combout\,
	datain => \SignalMode[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SignalMode(1));

-- Location: LCCOMB_X30_Y14_N14
\RELOGIO1|LOGICADOCONFIG|FFJK|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|LOGICADOCONFIG|FFJK|temp~0_combout\ = !\RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\,
	combout => \RELOGIO1|LOGICADOCONFIG|FFJK|temp~0_combout\);

-- Location: LCCOMB_X29_Y14_N16
\RELOGIO1|LOGICADOCONFIG|signalcont~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|LOGICADOCONFIG|signalcont~0_combout\ = \RELOGIO1|LOGICADOCONFIG|signalcont~regout\ $ (((\RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\ & !\RELOGIO1|LOGICADOCONFIG|signalmode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\,
	datac => \RELOGIO1|LOGICADOCONFIG|signalcont~regout\,
	datad => \RELOGIO1|LOGICADOCONFIG|signalmode~regout\,
	combout => \RELOGIO1|LOGICADOCONFIG|signalcont~0_combout\);

-- Location: LCFF_X29_Y14_N17
\RELOGIO1|LOGICADOCONFIG|signalcont\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~17\,
	datain => \RELOGIO1|LOGICADOCONFIG|signalcont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|LOGICADOCONFIG|signalcont~regout\);

-- Location: LCCOMB_X29_Y14_N28
\RELOGIO1|PiscaMRe\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|PiscaMRe~combout\ = (\RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\ & \RELOGIO1|LOGICADOCONFIG|signalcont~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\,
	datad => \RELOGIO1|LOGICADOCONFIG|signalcont~regout\,
	combout => \RELOGIO1|PiscaMRe~combout\);

-- Location: LCCOMB_X29_Y14_N14
\RELOGIO1|LOGICADOCONFIG|signalmode~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|LOGICADOCONFIG|signalmode~feeder_combout\ = \RELOGIO1|PiscaMRe~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RELOGIO1|PiscaMRe~combout\,
	combout => \RELOGIO1|LOGICADOCONFIG|signalmode~feeder_combout\);

-- Location: LCFF_X29_Y14_N15
\RELOGIO1|LOGICADOCONFIG|signalmode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~17\,
	datain => \RELOGIO1|LOGICADOCONFIG|signalmode~feeder_combout\,
	aclr => \RELOGIO1|LOGICADOCONFIG|signalmode~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|LOGICADOCONFIG|signalmode~regout\);

-- Location: LCCOMB_X30_Y14_N16
\RELOGIO1|LOGICADOCONFIG|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|LOGICADOCONFIG|comb~0_combout\ = (\RELOGIO1|LOGICADOCONFIG|signalmode~regout\) # ((!\mode~combout\ & (!SignalMode(0) & !SignalMode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\,
	datab => SignalMode(0),
	datac => SignalMode(1),
	datad => \RELOGIO1|LOGICADOCONFIG|signalmode~regout\,
	combout => \RELOGIO1|LOGICADOCONFIG|comb~0_combout\);

-- Location: LCFF_X30_Y14_N15
\RELOGIO1|LOGICADOCONFIG|FFJK|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~combout\,
	datain => \RELOGIO1|LOGICADOCONFIG|FFJK|temp~0_combout\,
	aclr => \RELOGIO1|LOGICADOCONFIG|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\);

-- Location: LCCOMB_X31_Y14_N24
\SignalMode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SignalMode~0_combout\ = (SignalMode(0)) # ((!SignalMode(1) & !\RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SignalMode(1),
	datac => SignalMode(0),
	datad => \RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\,
	combout => \SignalMode~0_combout\);

-- Location: LCCOMB_X31_Y14_N16
\SignalMode[1]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \SignalMode[1]~_wirecell_combout\ = !SignalMode(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SignalMode(1),
	combout => \SignalMode[1]~_wirecell_combout\);

-- Location: LCFF_X31_Y14_N25
\SignalMode[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_mode~combout\,
	datain => \SignalMode~0_combout\,
	sdata => \SignalMode[1]~_wirecell_combout\,
	sload => SignalMode(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SignalMode(0));

-- Location: LCCOMB_X34_Y16_N14
\RELOGIO1|SEG0A9|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SEG0A9|contagem[0]~3_combout\ = !\RELOGIO1|SEG0A9|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|SEG0A9|contagem\(0),
	combout => \RELOGIO1|SEG0A9|contagem[0]~3_combout\);

-- Location: LCFF_X34_Y16_N15
\RELOGIO1|SEG0A9|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|DIV0|estado~clkctrl_outclk\,
	datain => \RELOGIO1|SEG0A9|contagem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|SEG0A9|contagem\(0));

-- Location: LCCOMB_X34_Y16_N2
\RELOGIO1|SEG0A9|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SEG0A9|contagem~2_combout\ = (\RELOGIO1|SEG0A9|contagem\(1) & (((!\RELOGIO1|SEG0A9|contagem\(0))))) # (!\RELOGIO1|SEG0A9|contagem\(1) & (\RELOGIO1|SEG0A9|contagem\(0) & ((\RELOGIO1|SEG0A9|contagem\(2)) # (!\RELOGIO1|SEG0A9|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|SEG0A9|contagem\(2),
	datab => \RELOGIO1|SEG0A9|contagem\(3),
	datac => \RELOGIO1|SEG0A9|contagem\(1),
	datad => \RELOGIO1|SEG0A9|contagem\(0),
	combout => \RELOGIO1|SEG0A9|contagem~2_combout\);

-- Location: LCFF_X34_Y16_N3
\RELOGIO1|SEG0A9|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|DIV0|estado~clkctrl_outclk\,
	datain => \RELOGIO1|SEG0A9|contagem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|SEG0A9|contagem\(1));

-- Location: LCCOMB_X34_Y16_N24
\RELOGIO1|SEG0A9|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SEG0A9|contagem~1_combout\ = (\RELOGIO1|SEG0A9|contagem\(2) & (\RELOGIO1|SEG0A9|contagem\(3) $ (((\RELOGIO1|SEG0A9|contagem\(0) & \RELOGIO1|SEG0A9|contagem\(1)))))) # (!\RELOGIO1|SEG0A9|contagem\(2) & (\RELOGIO1|SEG0A9|contagem\(3) & 
-- ((\RELOGIO1|SEG0A9|contagem\(1)) # (!\RELOGIO1|SEG0A9|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|SEG0A9|contagem\(2),
	datab => \RELOGIO1|SEG0A9|contagem\(0),
	datac => \RELOGIO1|SEG0A9|contagem\(3),
	datad => \RELOGIO1|SEG0A9|contagem\(1),
	combout => \RELOGIO1|SEG0A9|contagem~1_combout\);

-- Location: LCFF_X34_Y16_N25
\RELOGIO1|SEG0A9|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|DIV0|estado~clkctrl_outclk\,
	datain => \RELOGIO1|SEG0A9|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|SEG0A9|contagem\(3));

-- Location: LCCOMB_X33_Y16_N14
\CRONOMETRO1|CONT0A9_1|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_1|contagem[0]~3_combout\ = !\CRONOMETRO1|CONT0A9_1|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CRONOMETRO1|CONT0A9_1|contagem\(0),
	combout => \CRONOMETRO1|CONT0A9_1|contagem[0]~3_combout\);

-- Location: LCCOMB_X32_Y16_N14
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\reset~combout\) # ((!SignalMode(0)) # (!SignalMode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => SignalMode(1),
	datad => SignalMode(0),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X32_Y16_N30
\CRONOMETRO1|FFJK|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|FFJK|temp~0_combout\ = !\CRONOMETRO1|FFJK|temp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CRONOMETRO1|FFJK|temp~regout\,
	combout => \CRONOMETRO1|FFJK|temp~0_combout\);

-- Location: LCFF_X32_Y16_N31
\CRONOMETRO1|FFJK|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~15\,
	datain => \CRONOMETRO1|FFJK|temp~0_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|FFJK|temp~regout\);

-- Location: LCFF_X33_Y16_N15
\CRONOMETRO1|CONT0A9_1|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|DIV0|estado~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_1|contagem[0]~3_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	ena => \CRONOMETRO1|FFJK|temp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_1|contagem\(0));

-- Location: LCCOMB_X33_Y16_N30
\CRONOMETRO1|CONT0A9_1|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_1|contagem~2_combout\ = (\CRONOMETRO1|CONT0A9_1|contagem\(0) & (!\CRONOMETRO1|CONT0A9_1|contagem\(1) & ((\CRONOMETRO1|CONT0A9_1|contagem\(2)) # (!\CRONOMETRO1|CONT0A9_1|contagem\(3))))) # (!\CRONOMETRO1|CONT0A9_1|contagem\(0) & 
-- (((\CRONOMETRO1|CONT0A9_1|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_1|contagem\(2),
	datab => \CRONOMETRO1|CONT0A9_1|contagem\(0),
	datac => \CRONOMETRO1|CONT0A9_1|contagem\(1),
	datad => \CRONOMETRO1|CONT0A9_1|contagem\(3),
	combout => \CRONOMETRO1|CONT0A9_1|contagem~2_combout\);

-- Location: LCFF_X33_Y16_N31
\CRONOMETRO1|CONT0A9_1|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|DIV0|estado~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_1|contagem~2_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	ena => \CRONOMETRO1|FFJK|temp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_1|contagem\(1));

-- Location: LCCOMB_X33_Y16_N18
\CRONOMETRO1|CONT0A9_1|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_1|contagem~1_combout\ = (\CRONOMETRO1|CONT0A9_1|contagem\(2) & (\CRONOMETRO1|CONT0A9_1|contagem\(3) $ (((\CRONOMETRO1|CONT0A9_1|contagem\(0) & \CRONOMETRO1|CONT0A9_1|contagem\(1)))))) # (!\CRONOMETRO1|CONT0A9_1|contagem\(2) & 
-- (\CRONOMETRO1|CONT0A9_1|contagem\(3) & ((\CRONOMETRO1|CONT0A9_1|contagem\(1)) # (!\CRONOMETRO1|CONT0A9_1|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_1|contagem\(2),
	datab => \CRONOMETRO1|CONT0A9_1|contagem\(0),
	datac => \CRONOMETRO1|CONT0A9_1|contagem\(3),
	datad => \CRONOMETRO1|CONT0A9_1|contagem\(1),
	combout => \CRONOMETRO1|CONT0A9_1|contagem~1_combout\);

-- Location: LCFF_X33_Y16_N19
\CRONOMETRO1|CONT0A9_1|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|DIV0|estado~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_1|contagem~1_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	ena => \CRONOMETRO1|FFJK|temp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_1|contagem\(3));

-- Location: LCCOMB_X34_Y16_N10
\Segundos1Sig~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segundos1Sig~2_combout\ = (SignalMode(1) & (((\CRONOMETRO1|CONT0A9_1|contagem\(3))))) # (!SignalMode(1) & (!SignalMode(0) & (\RELOGIO1|SEG0A9|contagem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(1),
	datab => SignalMode(0),
	datac => \RELOGIO1|SEG0A9|contagem\(3),
	datad => \CRONOMETRO1|CONT0A9_1|contagem\(3),
	combout => \Segundos1Sig~2_combout\);

-- Location: LCCOMB_X31_Y14_N22
\Segundos2Sig[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segundos2Sig[0]~0_combout\ = (SignalMode(0)) # (!SignalMode(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SignalMode(0),
	datad => SignalMode(1),
	combout => \Segundos2Sig[0]~0_combout\);

-- Location: LCFF_X34_Y16_N11
\Segundos1Sig[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Segundos1Sig~2_combout\,
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Segundos1Sig(3));

-- Location: LCCOMB_X34_Y16_N8
\Segundos1Sig~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segundos1Sig~3_combout\ = (SignalMode(1) & (((\CRONOMETRO1|CONT0A9_1|contagem\(1))))) # (!SignalMode(1) & (!SignalMode(0) & ((\RELOGIO1|SEG0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(1),
	datab => SignalMode(0),
	datac => \CRONOMETRO1|CONT0A9_1|contagem\(1),
	datad => \RELOGIO1|SEG0A9|contagem\(1),
	combout => \Segundos1Sig~3_combout\);

-- Location: LCFF_X34_Y16_N9
\Segundos1Sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Segundos1Sig~3_combout\,
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Segundos1Sig(1));

-- Location: LCCOMB_X34_Y16_N16
\RELOGIO1|SEG0A9|contagem[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SEG0A9|contagem[2]~0_combout\ = \RELOGIO1|SEG0A9|contagem\(2) $ (((\RELOGIO1|SEG0A9|contagem\(1) & \RELOGIO1|SEG0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|SEG0A9|contagem\(1),
	datac => \RELOGIO1|SEG0A9|contagem\(2),
	datad => \RELOGIO1|SEG0A9|contagem\(0),
	combout => \RELOGIO1|SEG0A9|contagem[2]~0_combout\);

-- Location: LCFF_X34_Y16_N17
\RELOGIO1|SEG0A9|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|DIV0|estado~clkctrl_outclk\,
	datain => \RELOGIO1|SEG0A9|contagem[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|SEG0A9|contagem\(2));

-- Location: LCCOMB_X33_Y16_N24
\CRONOMETRO1|CONT0A9_1|contagem[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_1|contagem[2]~0_combout\ = \CRONOMETRO1|CONT0A9_1|contagem\(2) $ (((\CRONOMETRO1|FFJK|temp~regout\ & (\CRONOMETRO1|CONT0A9_1|contagem\(0) & \CRONOMETRO1|CONT0A9_1|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|FFJK|temp~regout\,
	datab => \CRONOMETRO1|CONT0A9_1|contagem\(0),
	datac => \CRONOMETRO1|CONT0A9_1|contagem\(2),
	datad => \CRONOMETRO1|CONT0A9_1|contagem\(1),
	combout => \CRONOMETRO1|CONT0A9_1|contagem[2]~0_combout\);

-- Location: LCFF_X33_Y16_N25
\CRONOMETRO1|CONT0A9_1|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|DIV0|estado~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_1|contagem[2]~0_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_1|contagem\(2));

-- Location: LCCOMB_X34_Y16_N26
\Segundos1Sig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segundos1Sig~1_combout\ = (SignalMode(1) & (((\CRONOMETRO1|CONT0A9_1|contagem\(2))))) # (!SignalMode(1) & (!SignalMode(0) & (\RELOGIO1|SEG0A9|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(1),
	datab => SignalMode(0),
	datac => \RELOGIO1|SEG0A9|contagem\(2),
	datad => \CRONOMETRO1|CONT0A9_1|contagem\(2),
	combout => \Segundos1Sig~1_combout\);

-- Location: LCFF_X34_Y16_N27
\Segundos1Sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Segundos1Sig~1_combout\,
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Segundos1Sig(2));

-- Location: LCCOMB_X34_Y16_N30
\Segundos1Sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segundos1Sig~0_combout\ = (SignalMode(1) & (((\CRONOMETRO1|CONT0A9_1|contagem\(0))))) # (!SignalMode(1) & (!SignalMode(0) & (\RELOGIO1|SEG0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(1),
	datab => SignalMode(0),
	datac => \RELOGIO1|SEG0A9|contagem\(0),
	datad => \CRONOMETRO1|CONT0A9_1|contagem\(0),
	combout => \Segundos1Sig~0_combout\);

-- Location: LCFF_X34_Y16_N31
\Segundos1Sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Segundos1Sig~0_combout\,
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Segundos1Sig(0));

-- Location: LCCOMB_X34_Y16_N28
\DECODIF|Segundos1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[0]~0_combout\ = (Segundos1Sig(2) & ((Segundos1Sig(0)) # ((Segundos1Sig(3) & !Segundos1Sig(1))))) # (!Segundos1Sig(2) & ((Segundos1Sig(3) $ (Segundos1Sig(1))) # (!Segundos1Sig(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos1Sig(3),
	datab => Segundos1Sig(1),
	datac => Segundos1Sig(2),
	datad => Segundos1Sig(0),
	combout => \DECODIF|Segundos1[0]~0_combout\);

-- Location: LCCOMB_X34_Y16_N22
\DECODIF|Segundos1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[1]~1_combout\ = (Segundos1Sig(2) & ((Segundos1Sig(3) & (Segundos1Sig(1) & Segundos1Sig(0))) # (!Segundos1Sig(3) & (Segundos1Sig(1) $ (Segundos1Sig(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos1Sig(3),
	datab => Segundos1Sig(1),
	datac => Segundos1Sig(2),
	datad => Segundos1Sig(0),
	combout => \DECODIF|Segundos1[1]~1_combout\);

-- Location: LCCOMB_X34_Y16_N18
\DECODIF|Segundos1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[2]~2_combout\ = (Segundos1Sig(0)) # ((Segundos1Sig(3) & ((Segundos1Sig(1)) # (!Segundos1Sig(2)))) # (!Segundos1Sig(3) & ((Segundos1Sig(2)) # (!Segundos1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos1Sig(3),
	datab => Segundos1Sig(1),
	datac => Segundos1Sig(2),
	datad => Segundos1Sig(0),
	combout => \DECODIF|Segundos1[2]~2_combout\);

-- Location: LCCOMB_X34_Y16_N12
\DECODIF|Segundos1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[3]~3_combout\ = (Segundos1Sig(0) & (Segundos1Sig(2) $ (((Segundos1Sig(3)) # (!Segundos1Sig(1)))))) # (!Segundos1Sig(0) & (Segundos1Sig(2) & (Segundos1Sig(3) $ (!Segundos1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos1Sig(3),
	datab => Segundos1Sig(1),
	datac => Segundos1Sig(2),
	datad => Segundos1Sig(0),
	combout => \DECODIF|Segundos1[3]~3_combout\);

-- Location: LCCOMB_X34_Y16_N4
\DECODIF|Segundos1[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[4]~4_combout\ = (Segundos1Sig(0)) # ((Segundos1Sig(2) & (Segundos1Sig(3) $ (!Segundos1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos1Sig(3),
	datab => Segundos1Sig(1),
	datac => Segundos1Sig(2),
	datad => Segundos1Sig(0),
	combout => \DECODIF|Segundos1[4]~4_combout\);

-- Location: LCCOMB_X34_Y16_N0
\DECODIF|Segundos1[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[5]~5_combout\ = (Segundos1Sig(3) & ((Segundos1Sig(1) & (!Segundos1Sig(2) & Segundos1Sig(0))) # (!Segundos1Sig(1) & (Segundos1Sig(2))))) # (!Segundos1Sig(3) & ((Segundos1Sig(1) & ((Segundos1Sig(0)) # (!Segundos1Sig(2)))) # 
-- (!Segundos1Sig(1) & (!Segundos1Sig(2) & Segundos1Sig(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos1Sig(3),
	datab => Segundos1Sig(1),
	datac => Segundos1Sig(2),
	datad => Segundos1Sig(0),
	combout => \DECODIF|Segundos1[5]~5_combout\);

-- Location: LCCOMB_X34_Y16_N20
\DECODIF|Segundos1[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos1[6]~6_combout\ = (Segundos1Sig(2) & (!Segundos1Sig(3) & (Segundos1Sig(1) & Segundos1Sig(0)))) # (!Segundos1Sig(2) & (Segundos1Sig(3) $ ((!Segundos1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos1Sig(3),
	datab => Segundos1Sig(1),
	datac => Segundos1Sig(2),
	datad => Segundos1Sig(0),
	combout => \DECODIF|Segundos1[6]~6_combout\);

-- Location: LCCOMB_X31_Y13_N30
\CRONOMETRO1|CONT0A9_2|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_2|contagem[0]~3_combout\ = !\CRONOMETRO1|CONT0A9_2|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CRONOMETRO1|CONT0A9_2|contagem\(0),
	combout => \CRONOMETRO1|CONT0A9_2|contagem[0]~3_combout\);

-- Location: LCFF_X31_Y13_N31
\CRONOMETRO1|CONT0A9_2|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_1|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_2|contagem[0]~3_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_2|contagem\(0));

-- Location: LCCOMB_X32_Y13_N2
\RELOGIO1|SEG0A5|contagem[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SEG0A5|contagem[0]~2_combout\ = !\RELOGIO1|SEG0A5|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|SEG0A5|contagem\(0),
	combout => \RELOGIO1|SEG0A5|contagem[0]~2_combout\);

-- Location: LCFF_X32_Y13_N3
\RELOGIO1|SEG0A5|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|SEG0A9|tc~clkctrl_outclk\,
	datain => \RELOGIO1|SEG0A5|contagem[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|SEG0A5|contagem\(0));

-- Location: LCCOMB_X32_Y13_N20
\Segundos2Sig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segundos2Sig~1_combout\ = (SignalMode(1) & (((\CRONOMETRO1|CONT0A9_2|contagem\(0))))) # (!SignalMode(1) & (!SignalMode(0) & ((\RELOGIO1|SEG0A5|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(1),
	datab => SignalMode(0),
	datac => \CRONOMETRO1|CONT0A9_2|contagem\(0),
	datad => \RELOGIO1|SEG0A5|contagem\(0),
	combout => \Segundos2Sig~1_combout\);

-- Location: LCFF_X32_Y13_N21
\Segundos2Sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Segundos2Sig~1_combout\,
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Segundos2Sig(0));

-- Location: LCCOMB_X32_Y13_N24
\RELOGIO1|SEG0A5|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SEG0A5|contagem~0_combout\ = (\RELOGIO1|SEG0A5|contagem\(0) & (!\RELOGIO1|SEG0A5|contagem\(2) & \RELOGIO1|SEG0A5|contagem\(1))) # (!\RELOGIO1|SEG0A5|contagem\(0) & (\RELOGIO1|SEG0A5|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|SEG0A5|contagem\(0),
	datac => \RELOGIO1|SEG0A5|contagem\(2),
	datad => \RELOGIO1|SEG0A5|contagem\(1),
	combout => \RELOGIO1|SEG0A5|contagem~0_combout\);

-- Location: LCFF_X32_Y13_N25
\RELOGIO1|SEG0A5|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|SEG0A9|tc~clkctrl_outclk\,
	datain => \RELOGIO1|SEG0A5|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|SEG0A5|contagem\(2));

-- Location: LCCOMB_X32_Y13_N30
\RELOGIO1|SEG0A5|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SEG0A5|contagem~1_combout\ = (\RELOGIO1|SEG0A5|contagem\(0) & (!\RELOGIO1|SEG0A5|contagem\(1) & !\RELOGIO1|SEG0A5|contagem\(2))) # (!\RELOGIO1|SEG0A5|contagem\(0) & (\RELOGIO1|SEG0A5|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|SEG0A5|contagem\(0),
	datac => \RELOGIO1|SEG0A5|contagem\(1),
	datad => \RELOGIO1|SEG0A5|contagem\(2),
	combout => \RELOGIO1|SEG0A5|contagem~1_combout\);

-- Location: LCFF_X32_Y13_N31
\RELOGIO1|SEG0A5|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|SEG0A9|tc~clkctrl_outclk\,
	datain => \RELOGIO1|SEG0A5|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|SEG0A5|contagem\(1));

-- Location: LCCOMB_X31_Y13_N28
\CRONOMETRO1|CONT0A9_2|contagem[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_2|contagem[2]~0_combout\ = \CRONOMETRO1|CONT0A9_2|contagem\(2) $ (((\CRONOMETRO1|CONT0A9_2|contagem\(1) & \CRONOMETRO1|CONT0A9_2|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|CONT0A9_2|contagem\(1),
	datac => \CRONOMETRO1|CONT0A9_2|contagem\(2),
	datad => \CRONOMETRO1|CONT0A9_2|contagem\(0),
	combout => \CRONOMETRO1|CONT0A9_2|contagem[2]~0_combout\);

-- Location: LCFF_X31_Y13_N29
\CRONOMETRO1|CONT0A9_2|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_1|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_2|contagem[2]~0_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_2|contagem\(2));

-- Location: LCCOMB_X31_Y13_N2
\CRONOMETRO1|CONT0A9_2|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_2|contagem~1_combout\ = (\CRONOMETRO1|CONT0A9_2|contagem\(0) & ((\CRONOMETRO1|CONT0A9_2|contagem\(2) & (\CRONOMETRO1|CONT0A9_2|contagem\(3) $ (\CRONOMETRO1|CONT0A9_2|contagem\(1)))) # (!\CRONOMETRO1|CONT0A9_2|contagem\(2) & 
-- (\CRONOMETRO1|CONT0A9_2|contagem\(3) & \CRONOMETRO1|CONT0A9_2|contagem\(1))))) # (!\CRONOMETRO1|CONT0A9_2|contagem\(0) & (((\CRONOMETRO1|CONT0A9_2|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_2|contagem\(0),
	datab => \CRONOMETRO1|CONT0A9_2|contagem\(2),
	datac => \CRONOMETRO1|CONT0A9_2|contagem\(3),
	datad => \CRONOMETRO1|CONT0A9_2|contagem\(1),
	combout => \CRONOMETRO1|CONT0A9_2|contagem~1_combout\);

-- Location: LCFF_X31_Y13_N3
\CRONOMETRO1|CONT0A9_2|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_1|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_2|contagem~1_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_2|contagem\(3));

-- Location: LCCOMB_X31_Y13_N14
\CRONOMETRO1|CONT0A9_2|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_2|contagem~2_combout\ = (\CRONOMETRO1|CONT0A9_2|contagem\(1) & (((!\CRONOMETRO1|CONT0A9_2|contagem\(0))))) # (!\CRONOMETRO1|CONT0A9_2|contagem\(1) & (\CRONOMETRO1|CONT0A9_2|contagem\(0) & ((\CRONOMETRO1|CONT0A9_2|contagem\(2)) # 
-- (!\CRONOMETRO1|CONT0A9_2|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_2|contagem\(2),
	datab => \CRONOMETRO1|CONT0A9_2|contagem\(3),
	datac => \CRONOMETRO1|CONT0A9_2|contagem\(1),
	datad => \CRONOMETRO1|CONT0A9_2|contagem\(0),
	combout => \CRONOMETRO1|CONT0A9_2|contagem~2_combout\);

-- Location: LCFF_X31_Y13_N15
\CRONOMETRO1|CONT0A9_2|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_1|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_2|contagem~2_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_2|contagem\(1));

-- Location: LCCOMB_X32_Y13_N10
\Segundos2Sig~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segundos2Sig~4_combout\ = (SignalMode(1) & (((\CRONOMETRO1|CONT0A9_2|contagem\(1))))) # (!SignalMode(1) & (!SignalMode(0) & (\RELOGIO1|SEG0A5|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(0),
	datab => \RELOGIO1|SEG0A5|contagem\(1),
	datac => SignalMode(1),
	datad => \CRONOMETRO1|CONT0A9_2|contagem\(1),
	combout => \Segundos2Sig~4_combout\);

-- Location: LCFF_X32_Y13_N11
\Segundos2Sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Segundos2Sig~4_combout\,
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Segundos2Sig(1));

-- Location: LCCOMB_X32_Y13_N8
\Segundos2Sig~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segundos2Sig~3_combout\ = (SignalMode(1) & \CRONOMETRO1|CONT0A9_2|contagem\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SignalMode(1),
	datad => \CRONOMETRO1|CONT0A9_2|contagem\(3),
	combout => \Segundos2Sig~3_combout\);

-- Location: LCFF_X32_Y13_N9
\Segundos2Sig[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Segundos2Sig~3_combout\,
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Segundos2Sig(3));

-- Location: LCCOMB_X32_Y13_N22
\Segundos2Sig~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segundos2Sig~2_combout\ = (SignalMode(1) & (((\CRONOMETRO1|CONT0A9_2|contagem\(2))))) # (!SignalMode(1) & (!SignalMode(0) & (\RELOGIO1|SEG0A5|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(1),
	datab => SignalMode(0),
	datac => \RELOGIO1|SEG0A5|contagem\(2),
	datad => \CRONOMETRO1|CONT0A9_2|contagem\(2),
	combout => \Segundos2Sig~2_combout\);

-- Location: LCFF_X32_Y13_N23
\Segundos2Sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Segundos2Sig~2_combout\,
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Segundos2Sig(2));

-- Location: LCCOMB_X32_Y13_N28
\DECODIF|Segundos2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2[0]~0_combout\ = (Segundos2Sig(0) & ((Segundos2Sig(2)) # (Segundos2Sig(1) $ (Segundos2Sig(3))))) # (!Segundos2Sig(0) & (((!Segundos2Sig(1) & Segundos2Sig(3))) # (!Segundos2Sig(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos2Sig(0),
	datab => Segundos2Sig(1),
	datac => Segundos2Sig(3),
	datad => Segundos2Sig(2),
	combout => \DECODIF|Segundos2[0]~0_combout\);

-- Location: LCCOMB_X32_Y13_N18
\DECODIF|Segundos2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2[1]~1_combout\ = (Segundos2Sig(2) & ((Segundos2Sig(0) & (Segundos2Sig(1) $ (!Segundos2Sig(3)))) # (!Segundos2Sig(0) & (Segundos2Sig(1) & !Segundos2Sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos2Sig(0),
	datab => Segundos2Sig(1),
	datac => Segundos2Sig(3),
	datad => Segundos2Sig(2),
	combout => \DECODIF|Segundos2[1]~1_combout\);

-- Location: LCCOMB_X32_Y13_N16
\DECODIF|Segundos2[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2[2]~2_combout\ = (Segundos2Sig(0)) # ((Segundos2Sig(1) & ((Segundos2Sig(3)) # (Segundos2Sig(2)))) # (!Segundos2Sig(1) & ((!Segundos2Sig(2)) # (!Segundos2Sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos2Sig(0),
	datab => Segundos2Sig(1),
	datac => Segundos2Sig(3),
	datad => Segundos2Sig(2),
	combout => \DECODIF|Segundos2[2]~2_combout\);

-- Location: LCCOMB_X32_Y13_N14
\DECODIF|Segundos2[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2[3]~3_combout\ = (Segundos2Sig(0) & (Segundos2Sig(2) $ (((Segundos2Sig(3)) # (!Segundos2Sig(1)))))) # (!Segundos2Sig(0) & (Segundos2Sig(2) & (Segundos2Sig(1) $ (!Segundos2Sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos2Sig(0),
	datab => Segundos2Sig(1),
	datac => Segundos2Sig(3),
	datad => Segundos2Sig(2),
	combout => \DECODIF|Segundos2[3]~3_combout\);

-- Location: LCCOMB_X32_Y13_N4
\DECODIF|Segundos2[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2[4]~4_combout\ = (Segundos2Sig(0)) # ((Segundos2Sig(2) & (Segundos2Sig(1) $ (!Segundos2Sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos2Sig(0),
	datab => Segundos2Sig(1),
	datac => Segundos2Sig(3),
	datad => Segundos2Sig(2),
	combout => \DECODIF|Segundos2[4]~4_combout\);

-- Location: LCCOMB_X32_Y13_N26
\DECODIF|Segundos2[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2[5]~5_combout\ = (Segundos2Sig(1) & ((Segundos2Sig(0) & ((!Segundos2Sig(2)) # (!Segundos2Sig(3)))) # (!Segundos2Sig(0) & (!Segundos2Sig(3) & !Segundos2Sig(2))))) # (!Segundos2Sig(1) & ((Segundos2Sig(3) & ((Segundos2Sig(2)))) # 
-- (!Segundos2Sig(3) & (Segundos2Sig(0) & !Segundos2Sig(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos2Sig(0),
	datab => Segundos2Sig(1),
	datac => Segundos2Sig(3),
	datad => Segundos2Sig(2),
	combout => \DECODIF|Segundos2[5]~5_combout\);

-- Location: LCCOMB_X32_Y13_N12
\DECODIF|Segundos2[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Segundos2[6]~6_combout\ = (Segundos2Sig(2) & (Segundos2Sig(0) & (Segundos2Sig(1) & !Segundos2Sig(3)))) # (!Segundos2Sig(2) & ((Segundos2Sig(1) $ (!Segundos2Sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Segundos2Sig(0),
	datab => Segundos2Sig(1),
	datac => Segundos2Sig(3),
	datad => Segundos2Sig(2),
	combout => \DECODIF|Segundos2[6]~6_combout\);

-- Location: LCCOMB_X30_Y16_N26
\RELOGIO1|MIN0A9|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|MIN0A9|contagem[0]~3_combout\ = !\RELOGIO1|MIN0A9|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|MIN0A9|contagem\(0),
	combout => \RELOGIO1|MIN0A9|contagem[0]~3_combout\);

-- Location: LCFF_X30_Y16_N27
\RELOGIO1|MIN0A9|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|comb~clkctrl_outclk\,
	datain => \RELOGIO1|MIN0A9|contagem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|MIN0A9|contagem\(0));

-- Location: LCCOMB_X29_Y16_N18
\Minutos1Sig~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Minutos1Sig~3_combout\ = (SignalMode(0) & (\ALARME1|MIN0A9|contagem\(0))) # (!SignalMode(0) & ((\RELOGIO1|MIN0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|MIN0A9|contagem\(0),
	datab => \RELOGIO1|MIN0A9|contagem\(0),
	datad => SignalMode(0),
	combout => \Minutos1Sig~3_combout\);

-- Location: LCCOMB_X29_Y16_N14
\CRONOMETRO1|CONT0A9_3|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_3|contagem[0]~3_combout\ = !\CRONOMETRO1|CONT0A9_3|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CRONOMETRO1|CONT0A9_3|contagem\(0),
	combout => \CRONOMETRO1|CONT0A9_3|contagem[0]~3_combout\);

-- Location: LCFF_X29_Y16_N15
\CRONOMETRO1|CONT0A9_3|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_2|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_3|contagem[0]~3_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_3|contagem\(0));

-- Location: LCFF_X29_Y16_N19
\Minutos1Sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Minutos1Sig~3_combout\,
	sdata => \CRONOMETRO1|CONT0A9_3|contagem\(0),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Minutos1Sig(0));

-- Location: LCCOMB_X30_Y16_N30
\RELOGIO1|MIN0A9|contagem[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|MIN0A9|contagem[2]~2_combout\ = \RELOGIO1|MIN0A9|contagem\(2) $ (((\RELOGIO1|MIN0A9|contagem\(1) & \RELOGIO1|MIN0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|MIN0A9|contagem\(1),
	datac => \RELOGIO1|MIN0A9|contagem\(2),
	datad => \RELOGIO1|MIN0A9|contagem\(0),
	combout => \RELOGIO1|MIN0A9|contagem[2]~2_combout\);

-- Location: LCFF_X30_Y16_N31
\RELOGIO1|MIN0A9|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|comb~clkctrl_outclk\,
	datain => \RELOGIO1|MIN0A9|contagem[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|MIN0A9|contagem\(2));

-- Location: LCCOMB_X29_Y16_N24
\Minutos1Sig~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Minutos1Sig~2_combout\ = (SignalMode(0) & (\ALARME1|MIN0A9|contagem\(2))) # (!SignalMode(0) & ((\RELOGIO1|MIN0A9|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|MIN0A9|contagem\(2),
	datab => \RELOGIO1|MIN0A9|contagem\(2),
	datad => SignalMode(0),
	combout => \Minutos1Sig~2_combout\);

-- Location: LCCOMB_X29_Y16_N30
\CRONOMETRO1|CONT0A9_3|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_3|contagem~1_combout\ = (\CRONOMETRO1|CONT0A9_3|contagem\(1) & (\CRONOMETRO1|CONT0A9_3|contagem\(3) $ (((\CRONOMETRO1|CONT0A9_3|contagem\(0) & \CRONOMETRO1|CONT0A9_3|contagem\(2)))))) # (!\CRONOMETRO1|CONT0A9_3|contagem\(1) & 
-- (\CRONOMETRO1|CONT0A9_3|contagem\(3) & ((\CRONOMETRO1|CONT0A9_3|contagem\(2)) # (!\CRONOMETRO1|CONT0A9_3|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_3|contagem\(1),
	datab => \CRONOMETRO1|CONT0A9_3|contagem\(0),
	datac => \CRONOMETRO1|CONT0A9_3|contagem\(3),
	datad => \CRONOMETRO1|CONT0A9_3|contagem\(2),
	combout => \CRONOMETRO1|CONT0A9_3|contagem~1_combout\);

-- Location: LCFF_X29_Y16_N31
\CRONOMETRO1|CONT0A9_3|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_2|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_3|contagem~1_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_3|contagem\(3));

-- Location: LCCOMB_X29_Y16_N16
\CRONOMETRO1|CONT0A9_3|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_3|contagem~0_combout\ = (\CRONOMETRO1|CONT0A9_3|contagem\(0) & (!\CRONOMETRO1|CONT0A9_3|contagem\(1) & ((\CRONOMETRO1|CONT0A9_3|contagem\(2)) # (!\CRONOMETRO1|CONT0A9_3|contagem\(3))))) # (!\CRONOMETRO1|CONT0A9_3|contagem\(0) & 
-- (((\CRONOMETRO1|CONT0A9_3|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_3|contagem\(0),
	datab => \CRONOMETRO1|CONT0A9_3|contagem\(3),
	datac => \CRONOMETRO1|CONT0A9_3|contagem\(1),
	datad => \CRONOMETRO1|CONT0A9_3|contagem\(2),
	combout => \CRONOMETRO1|CONT0A9_3|contagem~0_combout\);

-- Location: LCFF_X29_Y16_N17
\CRONOMETRO1|CONT0A9_3|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_2|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_3|contagem~0_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_3|contagem\(1));

-- Location: LCCOMB_X29_Y16_N20
\CRONOMETRO1|CONT0A9_3|contagem[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_3|contagem[2]~2_combout\ = \CRONOMETRO1|CONT0A9_3|contagem\(2) $ (((\CRONOMETRO1|CONT0A9_3|contagem\(0) & \CRONOMETRO1|CONT0A9_3|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|CONT0A9_3|contagem\(0),
	datac => \CRONOMETRO1|CONT0A9_3|contagem\(2),
	datad => \CRONOMETRO1|CONT0A9_3|contagem\(1),
	combout => \CRONOMETRO1|CONT0A9_3|contagem[2]~2_combout\);

-- Location: LCFF_X29_Y16_N21
\CRONOMETRO1|CONT0A9_3|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_2|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_3|contagem[2]~2_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_3|contagem\(2));

-- Location: LCFF_X29_Y16_N25
\Minutos1Sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Minutos1Sig~2_combout\,
	sdata => \CRONOMETRO1|CONT0A9_3|contagem\(2),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Minutos1Sig(2));

-- Location: LCCOMB_X31_Y15_N18
\ALARME1|MIN0A9|contagem[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|MIN0A9|contagem[2]~2_combout\ = \ALARME1|MIN0A9|contagem\(2) $ (((\ALARME1|MIN0A9|contagem\(0) & \ALARME1|MIN0A9|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|MIN0A9|contagem\(0),
	datac => \ALARME1|MIN0A9|contagem\(2),
	datad => \ALARME1|MIN0A9|contagem\(1),
	combout => \ALARME1|MIN0A9|contagem[2]~2_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCCOMB_X31_Y15_N30
\comb~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~13\ = LCELL((!SignalMode(1) & (!\reset~combout\ & SignalMode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SignalMode(1),
	datac => \reset~combout\,
	datad => SignalMode(0),
	combout => \comb~13\);

-- Location: LCCOMB_X30_Y15_N14
\ALARME1|LOGICADOALARME|FFJK|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|LOGICADOALARME|FFJK|temp~0_combout\ = !\ALARME1|LOGICADOALARME|FFJK|temp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	combout => \ALARME1|LOGICADOALARME|FFJK|temp~0_combout\);

-- Location: LCCOMB_X30_Y15_N22
\ALARME1|LOGICADOALARME|signalcont~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|LOGICADOALARME|signalcont~0_combout\ = \ALARME1|LOGICADOALARME|signalcont~regout\ $ (((!\ALARME1|LOGICADOALARME|signalreset~regout\ & \ALARME1|LOGICADOALARME|FFJK|temp~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALARME1|LOGICADOALARME|signalreset~regout\,
	datac => \ALARME1|LOGICADOALARME|signalcont~regout\,
	datad => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	combout => \ALARME1|LOGICADOALARME|signalcont~0_combout\);

-- Location: LCFF_X30_Y15_N23
\ALARME1|LOGICADOALARME|signalcont\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~16\,
	datain => \ALARME1|LOGICADOALARME|signalcont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|LOGICADOALARME|signalcont~regout\);

-- Location: LCCOMB_X30_Y15_N28
\ALARME1|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|comb~4_combout\ = (\ALARME1|LOGICADOALARME|FFJK|temp~regout\ & \ALARME1|LOGICADOALARME|signalcont~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	datad => \ALARME1|LOGICADOALARME|signalcont~regout\,
	combout => \ALARME1|comb~4_combout\);

-- Location: LCFF_X30_Y15_N29
\ALARME1|LOGICADOALARME|signalreset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~16\,
	datain => \ALARME1|comb~4_combout\,
	aclr => \ALARME1|LOGICADOALARME|signalreset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|LOGICADOALARME|signalreset~regout\);

-- Location: LCFF_X30_Y15_N15
\ALARME1|LOGICADOALARME|FFJK|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~14\,
	datain => \ALARME1|LOGICADOALARME|FFJK|temp~0_combout\,
	aclr => \ALARME1|LOGICADOALARME|signalreset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|LOGICADOALARME|FFJK|temp~regout\);

-- Location: LCCOMB_X31_Y15_N24
\ALARME1|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|comb~5_combout\ = (\comb~13\ & \ALARME1|LOGICADOALARME|FFJK|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~13\,
	datad => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	combout => \ALARME1|comb~5_combout\);

-- Location: LCFF_X31_Y15_N19
\ALARME1|MIN0A9|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|comb~clkctrl_outclk\,
	datain => \ALARME1|MIN0A9|contagem[2]~2_combout\,
	aclr => \ALARME1|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|MIN0A9|contagem\(2));

-- Location: LCCOMB_X31_Y15_N22
\ALARME1|MIN0A9|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|MIN0A9|contagem~1_combout\ = (\ALARME1|MIN0A9|contagem\(0) & ((\ALARME1|MIN0A9|contagem\(2) & (\ALARME1|MIN0A9|contagem\(3) $ (\ALARME1|MIN0A9|contagem\(1)))) # (!\ALARME1|MIN0A9|contagem\(2) & (\ALARME1|MIN0A9|contagem\(3) & 
-- \ALARME1|MIN0A9|contagem\(1))))) # (!\ALARME1|MIN0A9|contagem\(0) & (((\ALARME1|MIN0A9|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|MIN0A9|contagem\(0),
	datab => \ALARME1|MIN0A9|contagem\(2),
	datac => \ALARME1|MIN0A9|contagem\(3),
	datad => \ALARME1|MIN0A9|contagem\(1),
	combout => \ALARME1|MIN0A9|contagem~1_combout\);

-- Location: LCFF_X31_Y15_N23
\ALARME1|MIN0A9|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|comb~clkctrl_outclk\,
	datain => \ALARME1|MIN0A9|contagem~1_combout\,
	aclr => \ALARME1|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|MIN0A9|contagem\(3));

-- Location: LCCOMB_X31_Y15_N28
\ALARME1|MIN0A9|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|MIN0A9|contagem~0_combout\ = (\ALARME1|MIN0A9|contagem\(0) & (!\ALARME1|MIN0A9|contagem\(1) & ((\ALARME1|MIN0A9|contagem\(2)) # (!\ALARME1|MIN0A9|contagem\(3))))) # (!\ALARME1|MIN0A9|contagem\(0) & (((\ALARME1|MIN0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|MIN0A9|contagem\(0),
	datab => \ALARME1|MIN0A9|contagem\(2),
	datac => \ALARME1|MIN0A9|contagem\(1),
	datad => \ALARME1|MIN0A9|contagem\(3),
	combout => \ALARME1|MIN0A9|contagem~0_combout\);

-- Location: LCFF_X31_Y15_N29
\ALARME1|MIN0A9|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|comb~clkctrl_outclk\,
	datain => \ALARME1|MIN0A9|contagem~0_combout\,
	aclr => \ALARME1|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|MIN0A9|contagem\(1));

-- Location: LCCOMB_X29_Y16_N28
\Minutos1Sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Minutos1Sig~0_combout\ = (SignalMode(0) & ((\ALARME1|MIN0A9|contagem\(1)))) # (!SignalMode(0) & (\RELOGIO1|MIN0A9|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|MIN0A9|contagem\(1),
	datab => \ALARME1|MIN0A9|contagem\(1),
	datad => SignalMode(0),
	combout => \Minutos1Sig~0_combout\);

-- Location: LCFF_X29_Y16_N29
\Minutos1Sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Minutos1Sig~0_combout\,
	sdata => \CRONOMETRO1|CONT0A9_3|contagem\(1),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Minutos1Sig(1));

-- Location: LCCOMB_X28_Y14_N12
\DECODIF|Minutos1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[0]~0_combout\ = (Minutos1Sig(0) & (!Minutos1Sig(2) & (Minutos1Sig(3) $ (!Minutos1Sig(1))))) # (!Minutos1Sig(0) & (Minutos1Sig(2) & ((Minutos1Sig(1)) # (!Minutos1Sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos1Sig(3),
	datab => Minutos1Sig(0),
	datac => Minutos1Sig(2),
	datad => Minutos1Sig(1),
	combout => \DECODIF|Minutos1[0]~0_combout\);

-- Location: LCCOMB_X28_Y14_N2
\DECODIF|JK2|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|JK2|temp~0_combout\ = !\DECODIF|JK2|temp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|JK2|temp~regout\,
	combout => \DECODIF|JK2|temp~0_combout\);

-- Location: LCCOMB_X28_Y14_N24
\PiscaM~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PiscaM~4_combout\ = (SignalMode(0) & (\ALARME1|LOGICADOALARME|signalcont~regout\ & (\ALARME1|LOGICADOALARME|FFJK|temp~regout\))) # (!SignalMode(0) & (((\RELOGIO1|PiscaMRe~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(0),
	datab => \ALARME1|LOGICADOALARME|signalcont~regout\,
	datac => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	datad => \RELOGIO1|PiscaMRe~combout\,
	combout => \PiscaM~4_combout\);

-- Location: LCFF_X28_Y14_N25
PiscaM : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \PiscaM~4_combout\,
	sclr => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PiscaM~regout\);

-- Location: LCFF_X28_Y14_N3
\DECODIF|JK2|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DECODIF|DivFreq|estado~regout\,
	datain => \DECODIF|JK2|temp~0_combout\,
	aclr => \ALT_INV_PiscaM~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DECODIF|JK2|temp~regout\);

-- Location: LCCOMB_X28_Y14_N22
\DECODIF|Minutos1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[0]~1_combout\ = (\DECODIF|Minutos1[0]~0_combout\) # (\DECODIF|JK2|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIF|Minutos1[0]~0_combout\,
	datad => \DECODIF|JK2|temp~regout\,
	combout => \DECODIF|Minutos1[0]~1_combout\);

-- Location: LCCOMB_X28_Y14_N28
\DECODIF|Minutos1[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[1]~2_combout\ = (Minutos1Sig(2) & ((Minutos1Sig(3) & (Minutos1Sig(0) & Minutos1Sig(1))) # (!Minutos1Sig(3) & (Minutos1Sig(0) $ (Minutos1Sig(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos1Sig(3),
	datab => Minutos1Sig(0),
	datac => Minutos1Sig(2),
	datad => Minutos1Sig(1),
	combout => \DECODIF|Minutos1[1]~2_combout\);

-- Location: LCCOMB_X28_Y14_N6
\DECODIF|Minutos1[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1\(1) = (\DECODIF|Minutos1[1]~2_combout\) # (\DECODIF|JK2|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECODIF|Minutos1[1]~2_combout\,
	datad => \DECODIF|JK2|temp~regout\,
	combout => \DECODIF|Minutos1\(1));

-- Location: LCCOMB_X28_Y14_N20
\DECODIF|Minutos1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1~3_combout\ = (Minutos1Sig(0)) # ((Minutos1Sig(3) & ((Minutos1Sig(1)) # (!Minutos1Sig(2)))) # (!Minutos1Sig(3) & ((Minutos1Sig(2)) # (!Minutos1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos1Sig(3),
	datab => Minutos1Sig(0),
	datac => Minutos1Sig(2),
	datad => Minutos1Sig(1),
	combout => \DECODIF|Minutos1~3_combout\);

-- Location: LCCOMB_X28_Y14_N14
\DECODIF|Minutos1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1\(2) = (\DECODIF|JK2|temp~regout\) # (!\DECODIF|Minutos1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|Minutos1~3_combout\,
	datad => \DECODIF|JK2|temp~regout\,
	combout => \DECODIF|Minutos1\(2));

-- Location: LCCOMB_X28_Y14_N0
\DECODIF|Minutos1[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[3]~4_combout\ = (Minutos1Sig(0) & (Minutos1Sig(2) $ (((Minutos1Sig(3)) # (!Minutos1Sig(1)))))) # (!Minutos1Sig(0) & (Minutos1Sig(2) & (Minutos1Sig(3) $ (!Minutos1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos1Sig(3),
	datab => Minutos1Sig(0),
	datac => Minutos1Sig(2),
	datad => Minutos1Sig(1),
	combout => \DECODIF|Minutos1[3]~4_combout\);

-- Location: LCCOMB_X28_Y14_N30
\DECODIF|Minutos1[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[3]~5_combout\ = (\DECODIF|Minutos1[3]~4_combout\) # (\DECODIF|JK2|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECODIF|Minutos1[3]~4_combout\,
	datad => \DECODIF|JK2|temp~regout\,
	combout => \DECODIF|Minutos1[3]~5_combout\);

-- Location: LCCOMB_X28_Y14_N8
\DECODIF|Minutos1[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[4]~6_combout\ = (\DECODIF|JK2|temp~regout\) # ((Minutos1Sig(2) & (Minutos1Sig(3) $ (!Minutos1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos1Sig(3),
	datab => \DECODIF|JK2|temp~regout\,
	datac => Minutos1Sig(2),
	datad => Minutos1Sig(1),
	combout => \DECODIF|Minutos1[4]~6_combout\);

-- Location: LCCOMB_X28_Y14_N18
\DECODIF|Minutos1[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[4]~7_combout\ = (\DECODIF|Minutos1[4]~6_combout\) # (Minutos1Sig(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|Minutos1[4]~6_combout\,
	datad => Minutos1Sig(0),
	combout => \DECODIF|Minutos1[4]~7_combout\);

-- Location: LCCOMB_X28_Y14_N4
\DECODIF|Minutos1[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[5]~8_combout\ = (Minutos1Sig(3) & ((Minutos1Sig(2) & ((!Minutos1Sig(1)))) # (!Minutos1Sig(2) & (Minutos1Sig(0) & Minutos1Sig(1))))) # (!Minutos1Sig(3) & ((Minutos1Sig(0) & ((Minutos1Sig(1)) # (!Minutos1Sig(2)))) # (!Minutos1Sig(0) & 
-- (!Minutos1Sig(2) & Minutos1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos1Sig(3),
	datab => Minutos1Sig(0),
	datac => Minutos1Sig(2),
	datad => Minutos1Sig(1),
	combout => \DECODIF|Minutos1[5]~8_combout\);

-- Location: LCCOMB_X28_Y14_N26
\DECODIF|Minutos1[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[5]~9_combout\ = (\DECODIF|Minutos1[5]~8_combout\) # (\DECODIF|JK2|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|Minutos1[5]~8_combout\,
	datad => \DECODIF|JK2|temp~regout\,
	combout => \DECODIF|Minutos1[5]~9_combout\);

-- Location: LCCOMB_X28_Y14_N16
\DECODIF|Minutos1[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[6]~10_combout\ = (Minutos1Sig(2) & (!Minutos1Sig(3) & (Minutos1Sig(0) & Minutos1Sig(1)))) # (!Minutos1Sig(2) & (Minutos1Sig(3) $ (((!Minutos1Sig(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos1Sig(3),
	datab => Minutos1Sig(0),
	datac => Minutos1Sig(2),
	datad => Minutos1Sig(1),
	combout => \DECODIF|Minutos1[6]~10_combout\);

-- Location: LCCOMB_X28_Y14_N10
\DECODIF|Minutos1[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos1[6]~11_combout\ = (\DECODIF|Minutos1[6]~10_combout\) # (\DECODIF|JK2|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|Minutos1[6]~10_combout\,
	datad => \DECODIF|JK2|temp~regout\,
	combout => \DECODIF|Minutos1[6]~11_combout\);

-- Location: LCCOMB_X30_Y18_N30
\RELOGIO1|MIN0A5|contagem[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|MIN0A5|contagem[0]~2_combout\ = !\RELOGIO1|MIN0A5|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|MIN0A5|contagem\(0),
	combout => \RELOGIO1|MIN0A5|contagem[0]~2_combout\);

-- Location: LCFF_X30_Y18_N31
\RELOGIO1|MIN0A5|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|MIN0A9|tc~clkctrl_outclk\,
	datain => \RELOGIO1|MIN0A5|contagem[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|MIN0A5|contagem\(0));

-- Location: LCCOMB_X30_Y18_N14
\RELOGIO1|MIN0A5|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|MIN0A5|contagem~1_combout\ = (\RELOGIO1|MIN0A5|contagem\(1) & ((!\RELOGIO1|MIN0A5|contagem\(0)))) # (!\RELOGIO1|MIN0A5|contagem\(1) & (!\RELOGIO1|MIN0A5|contagem\(2) & \RELOGIO1|MIN0A5|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|MIN0A5|contagem\(2),
	datac => \RELOGIO1|MIN0A5|contagem\(1),
	datad => \RELOGIO1|MIN0A5|contagem\(0),
	combout => \RELOGIO1|MIN0A5|contagem~1_combout\);

-- Location: LCFF_X30_Y18_N15
\RELOGIO1|MIN0A5|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|MIN0A9|tc~clkctrl_outclk\,
	datain => \RELOGIO1|MIN0A5|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|MIN0A5|contagem\(1));

-- Location: LCCOMB_X31_Y18_N22
\ALARME1|MIN0A5|contagem[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|MIN0A5|contagem[0]~2_combout\ = !\ALARME1|MIN0A5|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALARME1|MIN0A5|contagem\(0),
	combout => \ALARME1|MIN0A5|contagem[0]~2_combout\);

-- Location: LCFF_X31_Y18_N23
\ALARME1|MIN0A5|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|MIN0A9|tc~clkctrl_outclk\,
	datain => \ALARME1|MIN0A5|contagem[0]~2_combout\,
	aclr => \ALARME1|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|MIN0A5|contagem\(0));

-- Location: LCCOMB_X31_Y18_N6
\ALARME1|MIN0A5|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|MIN0A5|contagem~0_combout\ = (\ALARME1|MIN0A5|contagem\(0) & (!\ALARME1|MIN0A5|contagem\(2) & \ALARME1|MIN0A5|contagem\(1))) # (!\ALARME1|MIN0A5|contagem\(0) & (\ALARME1|MIN0A5|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALARME1|MIN0A5|contagem\(0),
	datac => \ALARME1|MIN0A5|contagem\(2),
	datad => \ALARME1|MIN0A5|contagem\(1),
	combout => \ALARME1|MIN0A5|contagem~0_combout\);

-- Location: LCFF_X31_Y18_N7
\ALARME1|MIN0A5|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|MIN0A9|tc~clkctrl_outclk\,
	datain => \ALARME1|MIN0A5|contagem~0_combout\,
	aclr => \ALARME1|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|MIN0A5|contagem\(2));

-- Location: LCCOMB_X31_Y18_N12
\ALARME1|MIN0A5|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|MIN0A5|contagem~1_combout\ = (\ALARME1|MIN0A5|contagem\(0) & (!\ALARME1|MIN0A5|contagem\(1) & !\ALARME1|MIN0A5|contagem\(2))) # (!\ALARME1|MIN0A5|contagem\(0) & (\ALARME1|MIN0A5|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALARME1|MIN0A5|contagem\(0),
	datac => \ALARME1|MIN0A5|contagem\(1),
	datad => \ALARME1|MIN0A5|contagem\(2),
	combout => \ALARME1|MIN0A5|contagem~1_combout\);

-- Location: LCFF_X31_Y18_N13
\ALARME1|MIN0A5|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|MIN0A9|tc~clkctrl_outclk\,
	datain => \ALARME1|MIN0A5|contagem~1_combout\,
	aclr => \ALARME1|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|MIN0A5|contagem\(1));

-- Location: LCCOMB_X32_Y17_N2
\Minutos2Sig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Minutos2Sig~1_combout\ = (SignalMode(0) & ((\ALARME1|MIN0A5|contagem\(1)))) # (!SignalMode(0) & (\RELOGIO1|MIN0A5|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(0),
	datab => \RELOGIO1|MIN0A5|contagem\(1),
	datad => \ALARME1|MIN0A5|contagem\(1),
	combout => \Minutos2Sig~1_combout\);

-- Location: LCCOMB_X31_Y17_N6
\CRONOMETRO1|CONT0A5_1|contagem[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A5_1|contagem[0]~2_combout\ = !\CRONOMETRO1|CONT0A5_1|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CRONOMETRO1|CONT0A5_1|contagem\(0),
	combout => \CRONOMETRO1|CONT0A5_1|contagem[0]~2_combout\);

-- Location: LCFF_X31_Y17_N7
\CRONOMETRO1|CONT0A5_1|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_3|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A5_1|contagem[0]~2_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A5_1|contagem\(0));

-- Location: LCCOMB_X31_Y17_N30
\CRONOMETRO1|CONT0A5_1|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A5_1|contagem~0_combout\ = (\CRONOMETRO1|CONT0A5_1|contagem\(2) & ((!\CRONOMETRO1|CONT0A5_1|contagem\(0)))) # (!\CRONOMETRO1|CONT0A5_1|contagem\(2) & (\CRONOMETRO1|CONT0A5_1|contagem\(1) & \CRONOMETRO1|CONT0A5_1|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|CONT0A5_1|contagem\(1),
	datac => \CRONOMETRO1|CONT0A5_1|contagem\(2),
	datad => \CRONOMETRO1|CONT0A5_1|contagem\(0),
	combout => \CRONOMETRO1|CONT0A5_1|contagem~0_combout\);

-- Location: LCFF_X31_Y17_N31
\CRONOMETRO1|CONT0A5_1|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_3|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A5_1|contagem~0_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A5_1|contagem\(2));

-- Location: LCCOMB_X31_Y17_N0
\CRONOMETRO1|CONT0A5_1|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A5_1|contagem~1_combout\ = (\CRONOMETRO1|CONT0A5_1|contagem\(1) & ((!\CRONOMETRO1|CONT0A5_1|contagem\(0)))) # (!\CRONOMETRO1|CONT0A5_1|contagem\(1) & (!\CRONOMETRO1|CONT0A5_1|contagem\(2) & \CRONOMETRO1|CONT0A5_1|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|CONT0A5_1|contagem\(2),
	datac => \CRONOMETRO1|CONT0A5_1|contagem\(1),
	datad => \CRONOMETRO1|CONT0A5_1|contagem\(0),
	combout => \CRONOMETRO1|CONT0A5_1|contagem~1_combout\);

-- Location: LCFF_X31_Y17_N1
\CRONOMETRO1|CONT0A5_1|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_3|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A5_1|contagem~1_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A5_1|contagem\(1));

-- Location: LCFF_X32_Y17_N3
\Minutos2Sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Minutos2Sig~1_combout\,
	sdata => \CRONOMETRO1|CONT0A5_1|contagem\(1),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Minutos2Sig(1));

-- Location: LCCOMB_X32_Y17_N20
\Minutos2Sig~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Minutos2Sig~2_combout\ = (SignalMode(0) & ((\ALARME1|MIN0A5|contagem\(0)))) # (!SignalMode(0) & (\RELOGIO1|MIN0A5|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|MIN0A5|contagem\(0),
	datab => \ALARME1|MIN0A5|contagem\(0),
	datad => SignalMode(0),
	combout => \Minutos2Sig~2_combout\);

-- Location: LCFF_X32_Y17_N21
\Minutos2Sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Minutos2Sig~2_combout\,
	sdata => \CRONOMETRO1|CONT0A5_1|contagem\(0),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Minutos2Sig(0));

-- Location: LCCOMB_X30_Y18_N16
\RELOGIO1|MIN0A5|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|MIN0A5|contagem~0_combout\ = (\RELOGIO1|MIN0A5|contagem\(0) & (!\RELOGIO1|MIN0A5|contagem\(2) & \RELOGIO1|MIN0A5|contagem\(1))) # (!\RELOGIO1|MIN0A5|contagem\(0) & (\RELOGIO1|MIN0A5|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|MIN0A5|contagem\(0),
	datac => \RELOGIO1|MIN0A5|contagem\(2),
	datad => \RELOGIO1|MIN0A5|contagem\(1),
	combout => \RELOGIO1|MIN0A5|contagem~0_combout\);

-- Location: LCFF_X30_Y18_N17
\RELOGIO1|MIN0A5|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|MIN0A9|tc~clkctrl_outclk\,
	datain => \RELOGIO1|MIN0A5|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|MIN0A5|contagem\(2));

-- Location: LCCOMB_X32_Y17_N0
\Minutos2Sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Minutos2Sig~0_combout\ = (SignalMode(0) & ((\ALARME1|MIN0A5|contagem\(2)))) # (!SignalMode(0) & (\RELOGIO1|MIN0A5|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(0),
	datab => \RELOGIO1|MIN0A5|contagem\(2),
	datad => \ALARME1|MIN0A5|contagem\(2),
	combout => \Minutos2Sig~0_combout\);

-- Location: LCFF_X32_Y17_N1
\Minutos2Sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Minutos2Sig~0_combout\,
	sdata => \CRONOMETRO1|CONT0A5_1|contagem\(2),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Minutos2Sig(2));

-- Location: LCCOMB_X31_Y18_N28
\DECODIF|Minutos2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2[0]~0_combout\ = (\DECODIF|JK2|temp~regout\) # ((Minutos2Sig(0) & (!Minutos2Sig(1) & !Minutos2Sig(2))) # (!Minutos2Sig(0) & ((Minutos2Sig(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos2Sig(1),
	datab => Minutos2Sig(0),
	datac => \DECODIF|JK2|temp~regout\,
	datad => Minutos2Sig(2),
	combout => \DECODIF|Minutos2[0]~0_combout\);

-- Location: LCCOMB_X31_Y18_N26
\DECODIF|Minutos2[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2\(1) = (\DECODIF|JK2|temp~regout\) # ((Minutos2Sig(2) & (Minutos2Sig(1) $ (Minutos2Sig(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos2Sig(1),
	datab => Minutos2Sig(0),
	datac => \DECODIF|JK2|temp~regout\,
	datad => Minutos2Sig(2),
	combout => \DECODIF|Minutos2\(1));

-- Location: LCCOMB_X31_Y18_N8
\DECODIF|Minutos2[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2\(2) = (\DECODIF|JK2|temp~regout\) # ((Minutos2Sig(1) & (!Minutos2Sig(0) & !Minutos2Sig(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos2Sig(1),
	datab => Minutos2Sig(0),
	datac => \DECODIF|JK2|temp~regout\,
	datad => Minutos2Sig(2),
	combout => \DECODIF|Minutos2\(2));

-- Location: LCCOMB_X31_Y18_N18
\DECODIF|Minutos2[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2\(3) = (\DECODIF|JK2|temp~regout\) # ((Minutos2Sig(1) & (Minutos2Sig(0) & Minutos2Sig(2))) # (!Minutos2Sig(1) & (Minutos2Sig(0) $ (Minutos2Sig(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos2Sig(1),
	datab => Minutos2Sig(0),
	datac => \DECODIF|JK2|temp~regout\,
	datad => Minutos2Sig(2),
	combout => \DECODIF|Minutos2\(3));

-- Location: LCCOMB_X31_Y18_N24
\DECODIF|Minutos2[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2[4]~1_combout\ = (Minutos2Sig(0)) # ((\DECODIF|JK2|temp~regout\) # ((!Minutos2Sig(1) & Minutos2Sig(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos2Sig(1),
	datab => Minutos2Sig(0),
	datac => \DECODIF|JK2|temp~regout\,
	datad => Minutos2Sig(2),
	combout => \DECODIF|Minutos2[4]~1_combout\);

-- Location: LCCOMB_X31_Y18_N30
\DECODIF|Minutos2[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2[5]~2_combout\ = (\DECODIF|JK2|temp~regout\) # ((Minutos2Sig(1) & ((Minutos2Sig(0)) # (!Minutos2Sig(2)))) # (!Minutos2Sig(1) & (Minutos2Sig(0) & !Minutos2Sig(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos2Sig(1),
	datab => Minutos2Sig(0),
	datac => \DECODIF|JK2|temp~regout\,
	datad => Minutos2Sig(2),
	combout => \DECODIF|Minutos2[5]~2_combout\);

-- Location: LCCOMB_X31_Y18_N16
\DECODIF|Minutos2[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Minutos2\(6) = (\DECODIF|JK2|temp~regout\) # ((Minutos2Sig(1) & (Minutos2Sig(0) & Minutos2Sig(2))) # (!Minutos2Sig(1) & ((!Minutos2Sig(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Minutos2Sig(1),
	datab => Minutos2Sig(0),
	datac => \DECODIF|JK2|temp~regout\,
	datad => Minutos2Sig(2),
	combout => \DECODIF|Minutos2\(6));

-- Location: LCCOMB_X32_Y15_N8
\ALARME1|HR0A9|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|HR0A9|contagem[0]~3_combout\ = !\ALARME1|HR0A9|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALARME1|HR0A9|contagem\(0),
	combout => \ALARME1|HR0A9|contagem[0]~3_combout\);

-- Location: LCCOMB_X32_Y15_N6
\ALARME1|HR0A2|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|HR0A2|contagem~0_combout\ = (!\ALARME1|HR0A2|contagem\(1) & \ALARME1|HR0A2|contagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALARME1|HR0A2|contagem\(1),
	datad => \ALARME1|HR0A2|contagem\(0),
	combout => \ALARME1|HR0A2|contagem~0_combout\);

-- Location: LCFF_X32_Y15_N7
\ALARME1|HR0A2|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|HR0A9|tc~clkctrl_outclk\,
	datain => \ALARME1|HR0A2|contagem~0_combout\,
	aclr => \ALARME1|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|HR0A2|contagem\(1));

-- Location: LCCOMB_X32_Y15_N22
\ALARME1|HR0A2|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|HR0A2|contagem~1_combout\ = (!\ALARME1|HR0A2|contagem\(0) & !\ALARME1|HR0A2|contagem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALARME1|HR0A2|contagem\(0),
	datad => \ALARME1|HR0A2|contagem\(1),
	combout => \ALARME1|HR0A2|contagem~1_combout\);

-- Location: LCFF_X32_Y15_N23
\ALARME1|HR0A2|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|HR0A9|tc~clkctrl_outclk\,
	datain => \ALARME1|HR0A2|contagem~1_combout\,
	aclr => \ALARME1|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|HR0A2|contagem\(0));

-- Location: LCCOMB_X32_Y15_N30
\ALARME1|SignalResetHora~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|SignalResetHora~1_combout\ = (!\ALARME1|HR0A2|contagem\(0) & \ALARME1|HR0A2|contagem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALARME1|HR0A2|contagem\(0),
	datad => \ALARME1|HR0A2|contagem\(1),
	combout => \ALARME1|SignalResetHora~1_combout\);

-- Location: LCCOMB_X32_Y15_N20
\ALARME1|SignalResetHora~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|SignalResetHora~0_combout\ = (!\ALARME1|HR0A9|contagem\(3) & (\ALARME1|HR0A9|contagem\(2) & (!\ALARME1|HR0A9|contagem\(0) & !\ALARME1|HR0A9|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|HR0A9|contagem\(3),
	datab => \ALARME1|HR0A9|contagem\(2),
	datac => \ALARME1|HR0A9|contagem\(0),
	datad => \ALARME1|HR0A9|contagem\(1),
	combout => \ALARME1|SignalResetHora~0_combout\);

-- Location: LCCOMB_X32_Y15_N28
\ALARME1|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|comb~6_combout\ = (\comb~13\ & ((\ALARME1|LOGICADOALARME|FFJK|temp~regout\) # ((\ALARME1|SignalResetHora~1_combout\ & \ALARME1|SignalResetHora~0_combout\)))) # (!\comb~13\ & (\ALARME1|SignalResetHora~1_combout\ & 
-- (\ALARME1|SignalResetHora~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~13\,
	datab => \ALARME1|SignalResetHora~1_combout\,
	datac => \ALARME1|SignalResetHora~0_combout\,
	datad => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	combout => \ALARME1|comb~6_combout\);

-- Location: LCFF_X32_Y15_N9
\ALARME1|HR0A9|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|comb~10clkctrl_outclk\,
	datain => \ALARME1|HR0A9|contagem[0]~3_combout\,
	aclr => \ALARME1|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|HR0A9|contagem\(0));

-- Location: LCCOMB_X32_Y15_N26
\ALARME1|HR0A9|contagem[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|HR0A9|contagem[2]~2_combout\ = \ALARME1|HR0A9|contagem\(2) $ (((\ALARME1|HR0A9|contagem\(1) & \ALARME1|HR0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALARME1|HR0A9|contagem\(1),
	datac => \ALARME1|HR0A9|contagem\(2),
	datad => \ALARME1|HR0A9|contagem\(0),
	combout => \ALARME1|HR0A9|contagem[2]~2_combout\);

-- Location: LCFF_X32_Y15_N27
\ALARME1|HR0A9|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|comb~10clkctrl_outclk\,
	datain => \ALARME1|HR0A9|contagem[2]~2_combout\,
	aclr => \ALARME1|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|HR0A9|contagem\(2));

-- Location: LCCOMB_X32_Y15_N0
\ALARME1|HR0A9|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|HR0A9|contagem~0_combout\ = (\ALARME1|HR0A9|contagem\(1) & (((!\ALARME1|HR0A9|contagem\(0))))) # (!\ALARME1|HR0A9|contagem\(1) & (\ALARME1|HR0A9|contagem\(0) & ((\ALARME1|HR0A9|contagem\(2)) # (!\ALARME1|HR0A9|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|HR0A9|contagem\(3),
	datab => \ALARME1|HR0A9|contagem\(2),
	datac => \ALARME1|HR0A9|contagem\(1),
	datad => \ALARME1|HR0A9|contagem\(0),
	combout => \ALARME1|HR0A9|contagem~0_combout\);

-- Location: LCFF_X32_Y15_N1
\ALARME1|HR0A9|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|comb~10clkctrl_outclk\,
	datain => \ALARME1|HR0A9|contagem~0_combout\,
	aclr => \ALARME1|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|HR0A9|contagem\(1));

-- Location: LCCOMB_X32_Y15_N24
\ALARME1|HR0A9|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|HR0A9|contagem~1_combout\ = (\ALARME1|HR0A9|contagem\(2) & (\ALARME1|HR0A9|contagem\(3) $ (((\ALARME1|HR0A9|contagem\(1) & \ALARME1|HR0A9|contagem\(0)))))) # (!\ALARME1|HR0A9|contagem\(2) & (\ALARME1|HR0A9|contagem\(3) & 
-- ((\ALARME1|HR0A9|contagem\(1)) # (!\ALARME1|HR0A9|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|HR0A9|contagem\(2),
	datab => \ALARME1|HR0A9|contagem\(1),
	datac => \ALARME1|HR0A9|contagem\(3),
	datad => \ALARME1|HR0A9|contagem\(0),
	combout => \ALARME1|HR0A9|contagem~1_combout\);

-- Location: LCFF_X32_Y15_N25
\ALARME1|HR0A9|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|comb~10clkctrl_outclk\,
	datain => \ALARME1|HR0A9|contagem~1_combout\,
	aclr => \ALARME1|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|HR0A9|contagem\(3));

-- Location: LCCOMB_X31_Y16_N6
\Horas1Sig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Horas1Sig~1_combout\ = (SignalMode(0) & ((\ALARME1|HR0A9|contagem\(3)))) # (!SignalMode(0) & (\RELOGIO1|HR0A9|contagem\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|HR0A9|contagem\(3),
	datab => \ALARME1|HR0A9|contagem\(3),
	datad => SignalMode(0),
	combout => \Horas1Sig~1_combout\);

-- Location: LCCOMB_X31_Y16_N24
\CRONOMETRO1|CONT0A9_4|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_4|contagem[0]~3_combout\ = !\CRONOMETRO1|CONT0A9_4|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CRONOMETRO1|CONT0A9_4|contagem\(0),
	combout => \CRONOMETRO1|CONT0A9_4|contagem[0]~3_combout\);

-- Location: LCFF_X31_Y16_N25
\CRONOMETRO1|CONT0A9_4|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A5_1|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_4|contagem[0]~3_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_4|contagem\(0));

-- Location: LCCOMB_X31_Y16_N30
\CRONOMETRO1|CONT0A9_4|contagem[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_4|contagem[2]~2_combout\ = \CRONOMETRO1|CONT0A9_4|contagem\(2) $ (((\CRONOMETRO1|CONT0A9_4|contagem\(1) & \CRONOMETRO1|CONT0A9_4|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|CONT0A9_4|contagem\(1),
	datac => \CRONOMETRO1|CONT0A9_4|contagem\(2),
	datad => \CRONOMETRO1|CONT0A9_4|contagem\(0),
	combout => \CRONOMETRO1|CONT0A9_4|contagem[2]~2_combout\);

-- Location: LCFF_X31_Y16_N31
\CRONOMETRO1|CONT0A9_4|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A5_1|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_4|contagem[2]~2_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_4|contagem\(2));

-- Location: LCCOMB_X31_Y16_N8
\CRONOMETRO1|CONT0A9_4|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_4|contagem~0_combout\ = (\CRONOMETRO1|CONT0A9_4|contagem\(0) & (!\CRONOMETRO1|CONT0A9_4|contagem\(1) & ((\CRONOMETRO1|CONT0A9_4|contagem\(2)) # (!\CRONOMETRO1|CONT0A9_4|contagem\(3))))) # (!\CRONOMETRO1|CONT0A9_4|contagem\(0) & 
-- (((\CRONOMETRO1|CONT0A9_4|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_4|contagem\(0),
	datab => \CRONOMETRO1|CONT0A9_4|contagem\(3),
	datac => \CRONOMETRO1|CONT0A9_4|contagem\(1),
	datad => \CRONOMETRO1|CONT0A9_4|contagem\(2),
	combout => \CRONOMETRO1|CONT0A9_4|contagem~0_combout\);

-- Location: LCFF_X31_Y16_N9
\CRONOMETRO1|CONT0A9_4|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A5_1|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_4|contagem~0_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_4|contagem\(1));

-- Location: LCCOMB_X31_Y16_N14
\CRONOMETRO1|CONT0A9_4|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A9_4|contagem~1_combout\ = (\CRONOMETRO1|CONT0A9_4|contagem\(0) & ((\CRONOMETRO1|CONT0A9_4|contagem\(1) & (\CRONOMETRO1|CONT0A9_4|contagem\(3) $ (\CRONOMETRO1|CONT0A9_4|contagem\(2)))) # (!\CRONOMETRO1|CONT0A9_4|contagem\(1) & 
-- (\CRONOMETRO1|CONT0A9_4|contagem\(3) & \CRONOMETRO1|CONT0A9_4|contagem\(2))))) # (!\CRONOMETRO1|CONT0A9_4|contagem\(0) & (((\CRONOMETRO1|CONT0A9_4|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRONOMETRO1|CONT0A9_4|contagem\(0),
	datab => \CRONOMETRO1|CONT0A9_4|contagem\(1),
	datac => \CRONOMETRO1|CONT0A9_4|contagem\(3),
	datad => \CRONOMETRO1|CONT0A9_4|contagem\(2),
	combout => \CRONOMETRO1|CONT0A9_4|contagem~1_combout\);

-- Location: LCFF_X31_Y16_N15
\CRONOMETRO1|CONT0A9_4|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A5_1|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A9_4|contagem~1_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A9_4|contagem\(3));

-- Location: LCFF_X31_Y16_N7
\Horas1Sig[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Horas1Sig~1_combout\,
	sdata => \CRONOMETRO1|CONT0A9_4|contagem\(3),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Horas1Sig(3));

-- Location: LCCOMB_X30_Y17_N16
\RELOGIO1|HR0A9|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|HR0A9|contagem[0]~3_combout\ = !\RELOGIO1|HR0A9|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|HR0A9|contagem\(0),
	combout => \RELOGIO1|HR0A9|contagem[0]~3_combout\);

-- Location: LCCOMB_X30_Y17_N4
\RELOGIO1|HR0A2|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|HR0A2|contagem~0_combout\ = (!\RELOGIO1|HR0A2|contagem\(1) & \RELOGIO1|HR0A2|contagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|HR0A2|contagem\(1),
	datad => \RELOGIO1|HR0A2|contagem\(0),
	combout => \RELOGIO1|HR0A2|contagem~0_combout\);

-- Location: LCFF_X30_Y17_N5
\RELOGIO1|HR0A2|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|HR0A9|tc~regout\,
	datain => \RELOGIO1|HR0A2|contagem~0_combout\,
	aclr => \RELOGIO1|SignalResetHora~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|HR0A2|contagem\(1));

-- Location: LCCOMB_X30_Y17_N0
\RELOGIO1|HR0A2|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|HR0A2|contagem~1_combout\ = (!\RELOGIO1|HR0A2|contagem\(0) & !\RELOGIO1|HR0A2|contagem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RELOGIO1|HR0A2|contagem\(0),
	datad => \RELOGIO1|HR0A2|contagem\(1),
	combout => \RELOGIO1|HR0A2|contagem~1_combout\);

-- Location: LCFF_X30_Y17_N1
\RELOGIO1|HR0A2|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|HR0A9|tc~regout\,
	datain => \RELOGIO1|HR0A2|contagem~1_combout\,
	aclr => \RELOGIO1|SignalResetHora~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|HR0A2|contagem\(0));

-- Location: LCCOMB_X30_Y17_N8
\RELOGIO1|HR0A9|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|HR0A9|contagem~1_combout\ = (\RELOGIO1|HR0A9|contagem\(2) & (\RELOGIO1|HR0A9|contagem\(3) $ (((\RELOGIO1|HR0A9|contagem\(1) & \RELOGIO1|HR0A9|contagem\(0)))))) # (!\RELOGIO1|HR0A9|contagem\(2) & (\RELOGIO1|HR0A9|contagem\(3) & 
-- ((\RELOGIO1|HR0A9|contagem\(1)) # (!\RELOGIO1|HR0A9|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|HR0A9|contagem\(2),
	datab => \RELOGIO1|HR0A9|contagem\(1),
	datac => \RELOGIO1|HR0A9|contagem\(3),
	datad => \RELOGIO1|HR0A9|contagem\(0),
	combout => \RELOGIO1|HR0A9|contagem~1_combout\);

-- Location: LCFF_X30_Y17_N9
\RELOGIO1|HR0A9|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|comb~6clkctrl_outclk\,
	datain => \RELOGIO1|HR0A9|contagem~1_combout\,
	aclr => \RELOGIO1|SignalResetHora~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|HR0A9|contagem\(3));

-- Location: LCCOMB_X30_Y17_N30
\RELOGIO1|SignalResetHora~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SignalResetHora~2_combout\ = (!\RELOGIO1|HR0A9|contagem\(0) & (!\RELOGIO1|HR0A9|contagem\(3) & (!\RELOGIO1|HR0A9|contagem\(1) & \RELOGIO1|HR0A9|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|HR0A9|contagem\(0),
	datab => \RELOGIO1|HR0A9|contagem\(3),
	datac => \RELOGIO1|HR0A9|contagem\(1),
	datad => \RELOGIO1|HR0A9|contagem\(2),
	combout => \RELOGIO1|SignalResetHora~2_combout\);

-- Location: LCCOMB_X30_Y17_N28
\RELOGIO1|SignalResetHora\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|SignalResetHora~combout\ = (!\RELOGIO1|HR0A2|contagem\(0) & (\RELOGIO1|HR0A2|contagem\(1) & \RELOGIO1|SignalResetHora~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|HR0A2|contagem\(0),
	datac => \RELOGIO1|HR0A2|contagem\(1),
	datad => \RELOGIO1|SignalResetHora~2_combout\,
	combout => \RELOGIO1|SignalResetHora~combout\);

-- Location: LCFF_X30_Y17_N17
\RELOGIO1|HR0A9|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|comb~6clkctrl_outclk\,
	datain => \RELOGIO1|HR0A9|contagem[0]~3_combout\,
	aclr => \RELOGIO1|SignalResetHora~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|HR0A9|contagem\(0));

-- Location: LCCOMB_X30_Y17_N26
\RELOGIO1|HR0A9|contagem[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|HR0A9|contagem[2]~2_combout\ = \RELOGIO1|HR0A9|contagem\(2) $ (((\RELOGIO1|HR0A9|contagem\(1) & \RELOGIO1|HR0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|HR0A9|contagem\(1),
	datac => \RELOGIO1|HR0A9|contagem\(2),
	datad => \RELOGIO1|HR0A9|contagem\(0),
	combout => \RELOGIO1|HR0A9|contagem[2]~2_combout\);

-- Location: LCFF_X30_Y17_N27
\RELOGIO1|HR0A9|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|comb~6clkctrl_outclk\,
	datain => \RELOGIO1|HR0A9|contagem[2]~2_combout\,
	aclr => \RELOGIO1|SignalResetHora~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|HR0A9|contagem\(2));

-- Location: LCCOMB_X30_Y17_N20
\RELOGIO1|HR0A9|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|HR0A9|contagem~0_combout\ = (\RELOGIO1|HR0A9|contagem\(1) & (((!\RELOGIO1|HR0A9|contagem\(0))))) # (!\RELOGIO1|HR0A9|contagem\(1) & (\RELOGIO1|HR0A9|contagem\(0) & ((\RELOGIO1|HR0A9|contagem\(2)) # (!\RELOGIO1|HR0A9|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|HR0A9|contagem\(3),
	datab => \RELOGIO1|HR0A9|contagem\(2),
	datac => \RELOGIO1|HR0A9|contagem\(1),
	datad => \RELOGIO1|HR0A9|contagem\(0),
	combout => \RELOGIO1|HR0A9|contagem~0_combout\);

-- Location: LCFF_X30_Y17_N21
\RELOGIO1|HR0A9|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|comb~6clkctrl_outclk\,
	datain => \RELOGIO1|HR0A9|contagem~0_combout\,
	aclr => \RELOGIO1|SignalResetHora~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|HR0A9|contagem\(1));

-- Location: LCCOMB_X31_Y16_N28
\Horas1Sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Horas1Sig~0_combout\ = (SignalMode(0) & ((\ALARME1|HR0A9|contagem\(1)))) # (!SignalMode(0) & (\RELOGIO1|HR0A9|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(0),
	datab => \RELOGIO1|HR0A9|contagem\(1),
	datad => \ALARME1|HR0A9|contagem\(1),
	combout => \Horas1Sig~0_combout\);

-- Location: LCFF_X31_Y16_N29
\Horas1Sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Horas1Sig~0_combout\,
	sdata => \CRONOMETRO1|CONT0A9_4|contagem\(1),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Horas1Sig(1));

-- Location: LCCOMB_X31_Y16_N20
\Horas1Sig~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Horas1Sig~2_combout\ = (SignalMode(0) & ((\ALARME1|HR0A9|contagem\(2)))) # (!SignalMode(0) & (\RELOGIO1|HR0A9|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(0),
	datab => \RELOGIO1|HR0A9|contagem\(2),
	datad => \ALARME1|HR0A9|contagem\(2),
	combout => \Horas1Sig~2_combout\);

-- Location: LCFF_X31_Y16_N21
\Horas1Sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Horas1Sig~2_combout\,
	sdata => \CRONOMETRO1|CONT0A9_4|contagem\(2),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Horas1Sig(2));

-- Location: LCCOMB_X1_Y23_N0
\DECODIF|Horas1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[0]~0_combout\ = (Horas1Sig(0) & (!Horas1Sig(2) & (Horas1Sig(3) $ (!Horas1Sig(1))))) # (!Horas1Sig(0) & (Horas1Sig(2) & ((Horas1Sig(1)) # (!Horas1Sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Horas1Sig(0),
	datab => Horas1Sig(3),
	datac => Horas1Sig(1),
	datad => Horas1Sig(2),
	combout => \DECODIF|Horas1[0]~0_combout\);

-- Location: LCCOMB_X27_Y14_N22
\DECODIF|JK1|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|JK1|temp~0_combout\ = !\DECODIF|JK1|temp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|JK1|temp~regout\,
	combout => \DECODIF|JK1|temp~0_combout\);

-- Location: LCCOMB_X27_Y14_N12
\PiscaHR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PiscaHR~0_combout\ = (!SignalMode(0) & (!\RELOGIO1|LOGICADOCONFIG|signalcont~regout\ & \RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SignalMode(0),
	datac => \RELOGIO1|LOGICADOCONFIG|signalcont~regout\,
	datad => \RELOGIO1|LOGICADOCONFIG|FFJK|temp~regout\,
	combout => \PiscaHR~0_combout\);

-- Location: LCCOMB_X27_Y14_N0
\PiscaHR~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PiscaHR~1_combout\ = (\PiscaHR~0_combout\) # ((!\ALARME1|LOGICADOALARME|signalcont~regout\ & (SignalMode(0) & \ALARME1|LOGICADOALARME|FFJK|temp~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|LOGICADOALARME|signalcont~regout\,
	datab => SignalMode(0),
	datac => \PiscaHR~0_combout\,
	datad => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	combout => \PiscaHR~1_combout\);

-- Location: LCFF_X27_Y14_N1
PiscaHR : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \PiscaHR~1_combout\,
	sclr => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PiscaHR~regout\);

-- Location: LCFF_X27_Y14_N23
\DECODIF|JK1|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DECODIF|DivFreq|estado~regout\,
	datain => \DECODIF|JK1|temp~0_combout\,
	aclr => \ALT_INV_PiscaHR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DECODIF|JK1|temp~regout\);

-- Location: LCCOMB_X1_Y23_N26
\DECODIF|Horas1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[0]~1_combout\ = (\DECODIF|Horas1[0]~0_combout\) # (\DECODIF|JK1|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECODIF|Horas1[0]~0_combout\,
	datad => \DECODIF|JK1|temp~regout\,
	combout => \DECODIF|Horas1[0]~1_combout\);

-- Location: LCCOMB_X1_Y23_N28
\DECODIF|Horas1[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[1]~2_combout\ = (Horas1Sig(2) & ((Horas1Sig(0) & (Horas1Sig(3) $ (!Horas1Sig(1)))) # (!Horas1Sig(0) & (!Horas1Sig(3) & Horas1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Horas1Sig(0),
	datab => Horas1Sig(3),
	datac => Horas1Sig(1),
	datad => Horas1Sig(2),
	combout => \DECODIF|Horas1[1]~2_combout\);

-- Location: LCCOMB_X1_Y23_N22
\DECODIF|Horas1[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1\(1) = (\DECODIF|Horas1[1]~2_combout\) # (\DECODIF|JK1|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECODIF|Horas1[1]~2_combout\,
	datad => \DECODIF|JK1|temp~regout\,
	combout => \DECODIF|Horas1\(1));

-- Location: LCCOMB_X1_Y23_N8
\DECODIF|Horas1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1~3_combout\ = (Horas1Sig(0)) # ((Horas1Sig(3) & ((Horas1Sig(1)) # (!Horas1Sig(2)))) # (!Horas1Sig(3) & ((Horas1Sig(2)) # (!Horas1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Horas1Sig(0),
	datab => Horas1Sig(3),
	datac => Horas1Sig(1),
	datad => Horas1Sig(2),
	combout => \DECODIF|Horas1~3_combout\);

-- Location: LCCOMB_X1_Y23_N10
\DECODIF|Horas1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1\(2) = (\DECODIF|JK1|temp~regout\) # (!\DECODIF|Horas1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|Horas1~3_combout\,
	datad => \DECODIF|JK1|temp~regout\,
	combout => \DECODIF|Horas1\(2));

-- Location: LCCOMB_X1_Y23_N16
\DECODIF|Horas1[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[3]~4_combout\ = (Horas1Sig(0) & (Horas1Sig(2) $ (((Horas1Sig(3)) # (!Horas1Sig(1)))))) # (!Horas1Sig(0) & (Horas1Sig(2) & (Horas1Sig(3) $ (!Horas1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Horas1Sig(0),
	datab => Horas1Sig(3),
	datac => Horas1Sig(1),
	datad => Horas1Sig(2),
	combout => \DECODIF|Horas1[3]~4_combout\);

-- Location: LCCOMB_X1_Y23_N14
\DECODIF|Horas1[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[3]~5_combout\ = (\DECODIF|Horas1[3]~4_combout\) # (\DECODIF|JK1|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|Horas1[3]~4_combout\,
	datad => \DECODIF|JK1|temp~regout\,
	combout => \DECODIF|Horas1[3]~5_combout\);

-- Location: LCCOMB_X1_Y23_N4
\DECODIF|Horas1[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[4]~6_combout\ = (\DECODIF|JK1|temp~regout\) # ((Horas1Sig(2) & (Horas1Sig(1) $ (!Horas1Sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Horas1Sig(1),
	datab => Horas1Sig(3),
	datac => Horas1Sig(2),
	datad => \DECODIF|JK1|temp~regout\,
	combout => \DECODIF|Horas1[4]~6_combout\);

-- Location: LCCOMB_X31_Y16_N26
\Horas1Sig~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Horas1Sig~3_combout\ = (SignalMode(0) & (\ALARME1|HR0A9|contagem\(0))) # (!SignalMode(0) & ((\RELOGIO1|HR0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|HR0A9|contagem\(0),
	datab => \RELOGIO1|HR0A9|contagem\(0),
	datad => SignalMode(0),
	combout => \Horas1Sig~3_combout\);

-- Location: LCFF_X31_Y16_N27
\Horas1Sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Horas1Sig~3_combout\,
	sdata => \CRONOMETRO1|CONT0A9_4|contagem\(0),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Horas1Sig(0));

-- Location: LCCOMB_X1_Y23_N2
\DECODIF|Horas1[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[4]~7_combout\ = (\DECODIF|Horas1[4]~6_combout\) # (Horas1Sig(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|Horas1[4]~6_combout\,
	datad => Horas1Sig(0),
	combout => \DECODIF|Horas1[4]~7_combout\);

-- Location: LCCOMB_X1_Y23_N24
\DECODIF|Horas1[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[5]~8_combout\ = (Horas1Sig(3) & ((Horas1Sig(1) & (Horas1Sig(0) & !Horas1Sig(2))) # (!Horas1Sig(1) & ((Horas1Sig(2)))))) # (!Horas1Sig(3) & ((Horas1Sig(0) & ((Horas1Sig(1)) # (!Horas1Sig(2)))) # (!Horas1Sig(0) & (Horas1Sig(1) & 
-- !Horas1Sig(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Horas1Sig(0),
	datab => Horas1Sig(3),
	datac => Horas1Sig(1),
	datad => Horas1Sig(2),
	combout => \DECODIF|Horas1[5]~8_combout\);

-- Location: LCCOMB_X1_Y23_N30
\DECODIF|Horas1[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[5]~9_combout\ = (\DECODIF|Horas1[5]~8_combout\) # (\DECODIF|JK1|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|Horas1[5]~8_combout\,
	datad => \DECODIF|JK1|temp~regout\,
	combout => \DECODIF|Horas1[5]~9_combout\);

-- Location: LCCOMB_X1_Y23_N20
\DECODIF|Horas1[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[6]~10_combout\ = (Horas1Sig(2) & (Horas1Sig(0) & (!Horas1Sig(3) & Horas1Sig(1)))) # (!Horas1Sig(2) & ((Horas1Sig(3) $ (!Horas1Sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Horas1Sig(0),
	datab => Horas1Sig(3),
	datac => Horas1Sig(1),
	datad => Horas1Sig(2),
	combout => \DECODIF|Horas1[6]~10_combout\);

-- Location: LCCOMB_X1_Y23_N18
\DECODIF|Horas1[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas1[6]~11_combout\ = (\DECODIF|Horas1[6]~10_combout\) # (\DECODIF|JK1|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|Horas1[6]~10_combout\,
	datad => \DECODIF|JK1|temp~regout\,
	combout => \DECODIF|Horas1[6]~11_combout\);

-- Location: LCCOMB_X32_Y14_N28
\CRONOMETRO1|CONT0A5_2|contagem[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A5_2|contagem[0]~2_combout\ = !\CRONOMETRO1|CONT0A5_2|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CRONOMETRO1|CONT0A5_2|contagem\(0),
	combout => \CRONOMETRO1|CONT0A5_2|contagem[0]~2_combout\);

-- Location: LCFF_X32_Y14_N29
\CRONOMETRO1|CONT0A5_2|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_4|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A5_2|contagem[0]~2_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A5_2|contagem\(0));

-- Location: LCCOMB_X32_Y14_N14
\CRONOMETRO1|CONT0A5_2|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A5_2|contagem~1_combout\ = (\CRONOMETRO1|CONT0A5_2|contagem\(0) & (!\CRONOMETRO1|CONT0A5_2|contagem\(1) & !\CRONOMETRO1|CONT0A5_2|contagem\(2))) # (!\CRONOMETRO1|CONT0A5_2|contagem\(0) & (\CRONOMETRO1|CONT0A5_2|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|CONT0A5_2|contagem\(0),
	datac => \CRONOMETRO1|CONT0A5_2|contagem\(1),
	datad => \CRONOMETRO1|CONT0A5_2|contagem\(2),
	combout => \CRONOMETRO1|CONT0A5_2|contagem~1_combout\);

-- Location: LCFF_X32_Y14_N15
\CRONOMETRO1|CONT0A5_2|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_4|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A5_2|contagem~1_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A5_2|contagem\(1));

-- Location: LCCOMB_X32_Y14_N0
\CRONOMETRO1|CONT0A5_2|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CRONOMETRO1|CONT0A5_2|contagem~0_combout\ = (\CRONOMETRO1|CONT0A5_2|contagem\(2) & ((!\CRONOMETRO1|CONT0A5_2|contagem\(0)))) # (!\CRONOMETRO1|CONT0A5_2|contagem\(2) & (\CRONOMETRO1|CONT0A5_2|contagem\(1) & \CRONOMETRO1|CONT0A5_2|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRONOMETRO1|CONT0A5_2|contagem\(1),
	datac => \CRONOMETRO1|CONT0A5_2|contagem\(2),
	datad => \CRONOMETRO1|CONT0A5_2|contagem\(0),
	combout => \CRONOMETRO1|CONT0A5_2|contagem~0_combout\);

-- Location: LCFF_X32_Y14_N1
\CRONOMETRO1|CONT0A5_2|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CRONOMETRO1|CONT0A9_4|tc~clkctrl_outclk\,
	datain => \CRONOMETRO1|CONT0A5_2|contagem~0_combout\,
	aclr => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CRONOMETRO1|CONT0A5_2|contagem\(2));

-- Location: LCCOMB_X32_Y14_N20
\Horas2Sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Horas2Sig~0_combout\ = (SignalMode(1) & \CRONOMETRO1|CONT0A5_2|contagem\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SignalMode(1),
	datad => \CRONOMETRO1|CONT0A5_2|contagem\(2),
	combout => \Horas2Sig~0_combout\);

-- Location: LCFF_X32_Y14_N21
\Horas2Sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Horas2Sig~0_combout\,
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Horas2Sig(2));

-- Location: LCCOMB_X32_Y14_N12
\Horas2Sig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Horas2Sig~1_combout\ = (SignalMode(0) & (\ALARME1|HR0A2|contagem\(1))) # (!SignalMode(0) & ((\RELOGIO1|HR0A2|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SignalMode(0),
	datab => \ALARME1|HR0A2|contagem\(1),
	datad => \RELOGIO1|HR0A2|contagem\(1),
	combout => \Horas2Sig~1_combout\);

-- Location: LCFF_X32_Y14_N13
\Horas2Sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Horas2Sig~1_combout\,
	sdata => \CRONOMETRO1|CONT0A5_2|contagem\(1),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Horas2Sig(1));

-- Location: LCCOMB_X32_Y14_N26
\Horas2Sig~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Horas2Sig~2_combout\ = (SignalMode(0) & ((\ALARME1|HR0A2|contagem\(0)))) # (!SignalMode(0) & (\RELOGIO1|HR0A2|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|HR0A2|contagem\(0),
	datab => SignalMode(0),
	datad => \ALARME1|HR0A2|contagem\(0),
	combout => \Horas2Sig~2_combout\);

-- Location: LCFF_X32_Y14_N27
\Horas2Sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Horas2Sig~2_combout\,
	sdata => \CRONOMETRO1|CONT0A5_2|contagem\(0),
	sload => SignalMode(1),
	ena => \Segundos2Sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Horas2Sig(0));

-- Location: LCCOMB_X32_Y14_N22
\DECODIF|Horas2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas2[0]~0_combout\ = (\DECODIF|JK1|temp~regout\) # ((Horas2Sig(2) & ((!Horas2Sig(0)))) # (!Horas2Sig(2) & (!Horas2Sig(1) & Horas2Sig(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIF|JK1|temp~regout\,
	datab => Horas2Sig(2),
	datac => Horas2Sig(1),
	datad => Horas2Sig(0),
	combout => \DECODIF|Horas2[0]~0_combout\);

-- Location: LCCOMB_X32_Y14_N24
\DECODIF|Horas2[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas2\(1) = (\DECODIF|JK1|temp~regout\) # ((Horas2Sig(2) & (Horas2Sig(1) $ (Horas2Sig(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIF|JK1|temp~regout\,
	datab => Horas2Sig(2),
	datac => Horas2Sig(1),
	datad => Horas2Sig(0),
	combout => \DECODIF|Horas2\(1));

-- Location: LCCOMB_X32_Y14_N30
\DECODIF|Horas2[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas2\(2) = (\DECODIF|JK1|temp~regout\) # ((!Horas2Sig(2) & (Horas2Sig(1) & !Horas2Sig(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIF|JK1|temp~regout\,
	datab => Horas2Sig(2),
	datac => Horas2Sig(1),
	datad => Horas2Sig(0),
	combout => \DECODIF|Horas2\(2));

-- Location: LCCOMB_X32_Y14_N16
\DECODIF|Horas2[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas2\(3) = (\DECODIF|JK1|temp~regout\) # ((Horas2Sig(2) & (Horas2Sig(1) $ (!Horas2Sig(0)))) # (!Horas2Sig(2) & (!Horas2Sig(1) & Horas2Sig(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIF|JK1|temp~regout\,
	datab => Horas2Sig(2),
	datac => Horas2Sig(1),
	datad => Horas2Sig(0),
	combout => \DECODIF|Horas2\(3));

-- Location: LCCOMB_X32_Y14_N10
\DECODIF|Horas2[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas2[4]~1_combout\ = (\DECODIF|JK1|temp~regout\) # ((Horas2Sig(0)) # ((Horas2Sig(2) & !Horas2Sig(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIF|JK1|temp~regout\,
	datab => Horas2Sig(2),
	datac => Horas2Sig(1),
	datad => Horas2Sig(0),
	combout => \DECODIF|Horas2[4]~1_combout\);

-- Location: LCCOMB_X32_Y14_N4
\DECODIF|Horas2[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas2[5]~2_combout\ = (\DECODIF|JK1|temp~regout\) # ((Horas2Sig(2) & (Horas2Sig(1) & Horas2Sig(0))) # (!Horas2Sig(2) & ((Horas2Sig(1)) # (Horas2Sig(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIF|JK1|temp~regout\,
	datab => Horas2Sig(2),
	datac => Horas2Sig(1),
	datad => Horas2Sig(0),
	combout => \DECODIF|Horas2[5]~2_combout\);

-- Location: LCCOMB_X32_Y14_N18
\DECODIF|Horas2[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|Horas2\(6) = (\DECODIF|JK1|temp~regout\) # ((Horas2Sig(2) & (Horas2Sig(1) & Horas2Sig(0))) # (!Horas2Sig(2) & (!Horas2Sig(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIF|JK1|temp~regout\,
	datab => Horas2Sig(2),
	datac => Horas2Sig(1),
	datad => Horas2Sig(0),
	combout => \DECODIF|Horas2\(6));

-- Location: LCCOMB_X19_Y30_N16
\DIVFREQ|estado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|estado~0_combout\ = !\DIVFREQ|estado~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIVFREQ|estado~regout\,
	combout => \DIVFREQ|estado~0_combout\);

-- Location: LCCOMB_X20_Y30_N10
\DIVFREQ|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~2_combout\ = (\DIVFREQ|contagem\(1) & (!\DIVFREQ|Add0~1\)) # (!\DIVFREQ|contagem\(1) & ((\DIVFREQ|Add0~1\) # (GND)))
-- \DIVFREQ|Add0~3\ = CARRY((!\DIVFREQ|Add0~1\) # (!\DIVFREQ|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(1),
	datad => VCC,
	cin => \DIVFREQ|Add0~1\,
	combout => \DIVFREQ|Add0~2_combout\,
	cout => \DIVFREQ|Add0~3\);

-- Location: LCCOMB_X20_Y30_N12
\DIVFREQ|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~4_combout\ = (\DIVFREQ|contagem\(2) & (\DIVFREQ|Add0~3\ $ (GND))) # (!\DIVFREQ|contagem\(2) & (!\DIVFREQ|Add0~3\ & VCC))
-- \DIVFREQ|Add0~5\ = CARRY((\DIVFREQ|contagem\(2) & !\DIVFREQ|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(2),
	datad => VCC,
	cin => \DIVFREQ|Add0~3\,
	combout => \DIVFREQ|Add0~4_combout\,
	cout => \DIVFREQ|Add0~5\);

-- Location: LCCOMB_X20_Y30_N14
\DIVFREQ|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~6_combout\ = (\DIVFREQ|contagem\(3) & (!\DIVFREQ|Add0~5\)) # (!\DIVFREQ|contagem\(3) & ((\DIVFREQ|Add0~5\) # (GND)))
-- \DIVFREQ|Add0~7\ = CARRY((!\DIVFREQ|Add0~5\) # (!\DIVFREQ|contagem\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(3),
	datad => VCC,
	cin => \DIVFREQ|Add0~5\,
	combout => \DIVFREQ|Add0~6_combout\,
	cout => \DIVFREQ|Add0~7\);

-- Location: LCFF_X20_Y30_N15
\DIVFREQ|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(3));

-- Location: LCCOMB_X20_Y30_N20
\DIVFREQ|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~12_combout\ = (\DIVFREQ|contagem\(6) & (\DIVFREQ|Add0~11\ $ (GND))) # (!\DIVFREQ|contagem\(6) & (!\DIVFREQ|Add0~11\ & VCC))
-- \DIVFREQ|Add0~13\ = CARRY((\DIVFREQ|contagem\(6) & !\DIVFREQ|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(6),
	datad => VCC,
	cin => \DIVFREQ|Add0~11\,
	combout => \DIVFREQ|Add0~12_combout\,
	cout => \DIVFREQ|Add0~13\);

-- Location: LCCOMB_X20_Y30_N4
\DIVFREQ|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem~1_combout\ = (\DIVFREQ|Add0~12_combout\ & !\DECODIF|DivFreq|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIVFREQ|Add0~12_combout\,
	datad => \DECODIF|DivFreq|Equal0~7_combout\,
	combout => \DIVFREQ|contagem~1_combout\);

-- Location: LCFF_X20_Y30_N5
\DIVFREQ|contagem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(6));

-- Location: LCCOMB_X20_Y30_N22
\DIVFREQ|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~14_combout\ = (\DIVFREQ|contagem\(7) & (!\DIVFREQ|Add0~13\)) # (!\DIVFREQ|contagem\(7) & ((\DIVFREQ|Add0~13\) # (GND)))
-- \DIVFREQ|Add0~15\ = CARRY((!\DIVFREQ|Add0~13\) # (!\DIVFREQ|contagem\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(7),
	datad => VCC,
	cin => \DIVFREQ|Add0~13\,
	combout => \DIVFREQ|Add0~14_combout\,
	cout => \DIVFREQ|Add0~15\);

-- Location: LCFF_X20_Y30_N23
\DIVFREQ|contagem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(7));

-- Location: LCCOMB_X20_Y30_N24
\DIVFREQ|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~16_combout\ = (\DIVFREQ|contagem\(8) & (\DIVFREQ|Add0~15\ $ (GND))) # (!\DIVFREQ|contagem\(8) & (!\DIVFREQ|Add0~15\ & VCC))
-- \DIVFREQ|Add0~17\ = CARRY((\DIVFREQ|contagem\(8) & !\DIVFREQ|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(8),
	datad => VCC,
	cin => \DIVFREQ|Add0~15\,
	combout => \DIVFREQ|Add0~16_combout\,
	cout => \DIVFREQ|Add0~17\);

-- Location: LCCOMB_X20_Y30_N26
\DIVFREQ|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~18_combout\ = (\DIVFREQ|contagem\(9) & (!\DIVFREQ|Add0~17\)) # (!\DIVFREQ|contagem\(9) & ((\DIVFREQ|Add0~17\) # (GND)))
-- \DIVFREQ|Add0~19\ = CARRY((!\DIVFREQ|Add0~17\) # (!\DIVFREQ|contagem\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(9),
	datad => VCC,
	cin => \DIVFREQ|Add0~17\,
	combout => \DIVFREQ|Add0~18_combout\,
	cout => \DIVFREQ|Add0~19\);

-- Location: LCFF_X20_Y30_N27
\DIVFREQ|contagem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(9));

-- Location: LCCOMB_X20_Y30_N28
\DIVFREQ|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~20_combout\ = (\DIVFREQ|contagem\(10) & (\DIVFREQ|Add0~19\ $ (GND))) # (!\DIVFREQ|contagem\(10) & (!\DIVFREQ|Add0~19\ & VCC))
-- \DIVFREQ|Add0~21\ = CARRY((\DIVFREQ|contagem\(10) & !\DIVFREQ|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(10),
	datad => VCC,
	cin => \DIVFREQ|Add0~19\,
	combout => \DIVFREQ|Add0~20_combout\,
	cout => \DIVFREQ|Add0~21\);

-- Location: LCCOMB_X20_Y30_N30
\DIVFREQ|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~22_combout\ = (\DIVFREQ|contagem\(11) & (!\DIVFREQ|Add0~21\)) # (!\DIVFREQ|contagem\(11) & ((\DIVFREQ|Add0~21\) # (GND)))
-- \DIVFREQ|Add0~23\ = CARRY((!\DIVFREQ|Add0~21\) # (!\DIVFREQ|contagem\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(11),
	datad => VCC,
	cin => \DIVFREQ|Add0~21\,
	combout => \DIVFREQ|Add0~22_combout\,
	cout => \DIVFREQ|Add0~23\);

-- Location: LCFF_X20_Y30_N31
\DIVFREQ|contagem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(11));

-- Location: LCCOMB_X20_Y29_N0
\DIVFREQ|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~24_combout\ = (\DIVFREQ|contagem\(12) & (\DIVFREQ|Add0~23\ $ (GND))) # (!\DIVFREQ|contagem\(12) & (!\DIVFREQ|Add0~23\ & VCC))
-- \DIVFREQ|Add0~25\ = CARRY((\DIVFREQ|contagem\(12) & !\DIVFREQ|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(12),
	datad => VCC,
	cin => \DIVFREQ|Add0~23\,
	combout => \DIVFREQ|Add0~24_combout\,
	cout => \DIVFREQ|Add0~25\);

-- Location: LCCOMB_X19_Y30_N8
\DIVFREQ|contagem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem~4_combout\ = (!\DECODIF|DivFreq|Equal0~7_combout\ & \DIVFREQ|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECODIF|DivFreq|Equal0~7_combout\,
	datac => \DIVFREQ|Add0~24_combout\,
	combout => \DIVFREQ|contagem~4_combout\);

-- Location: LCFF_X19_Y30_N9
\DIVFREQ|contagem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(12));

-- Location: LCCOMB_X20_Y29_N2
\DIVFREQ|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~26_combout\ = (\DIVFREQ|contagem\(13) & (!\DIVFREQ|Add0~25\)) # (!\DIVFREQ|contagem\(13) & ((\DIVFREQ|Add0~25\) # (GND)))
-- \DIVFREQ|Add0~27\ = CARRY((!\DIVFREQ|Add0~25\) # (!\DIVFREQ|contagem\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(13),
	datad => VCC,
	cin => \DIVFREQ|Add0~25\,
	combout => \DIVFREQ|Add0~26_combout\,
	cout => \DIVFREQ|Add0~27\);

-- Location: LCCOMB_X19_Y30_N6
\DIVFREQ|contagem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem~5_combout\ = (!\DECODIF|DivFreq|Equal0~7_combout\ & \DIVFREQ|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|DivFreq|Equal0~7_combout\,
	datad => \DIVFREQ|Add0~26_combout\,
	combout => \DIVFREQ|contagem~5_combout\);

-- Location: LCFF_X19_Y30_N7
\DIVFREQ|contagem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(13));

-- Location: LCCOMB_X20_Y29_N4
\DIVFREQ|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~28_combout\ = (\DIVFREQ|contagem\(14) & (\DIVFREQ|Add0~27\ $ (GND))) # (!\DIVFREQ|contagem\(14) & (!\DIVFREQ|Add0~27\ & VCC))
-- \DIVFREQ|Add0~29\ = CARRY((\DIVFREQ|contagem\(14) & !\DIVFREQ|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(14),
	datad => VCC,
	cin => \DIVFREQ|Add0~27\,
	combout => \DIVFREQ|Add0~28_combout\,
	cout => \DIVFREQ|Add0~29\);

-- Location: LCCOMB_X19_Y30_N22
\DIVFREQ|contagem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem~6_combout\ = (!\DECODIF|DivFreq|Equal0~7_combout\ & \DIVFREQ|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|DivFreq|Equal0~7_combout\,
	datad => \DIVFREQ|Add0~28_combout\,
	combout => \DIVFREQ|contagem~6_combout\);

-- Location: LCFF_X19_Y30_N23
\DIVFREQ|contagem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(14));

-- Location: LCCOMB_X20_Y29_N6
\DIVFREQ|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~30_combout\ = (\DIVFREQ|contagem\(15) & (!\DIVFREQ|Add0~29\)) # (!\DIVFREQ|contagem\(15) & ((\DIVFREQ|Add0~29\) # (GND)))
-- \DIVFREQ|Add0~31\ = CARRY((!\DIVFREQ|Add0~29\) # (!\DIVFREQ|contagem\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(15),
	datad => VCC,
	cin => \DIVFREQ|Add0~29\,
	combout => \DIVFREQ|Add0~30_combout\,
	cout => \DIVFREQ|Add0~31\);

-- Location: LCCOMB_X19_Y30_N24
\DIVFREQ|contagem~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem~7_combout\ = (!\DECODIF|DivFreq|Equal0~7_combout\ & \DIVFREQ|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|DivFreq|Equal0~7_combout\,
	datad => \DIVFREQ|Add0~30_combout\,
	combout => \DIVFREQ|contagem~7_combout\);

-- Location: LCFF_X19_Y30_N25
\DIVFREQ|contagem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(15));

-- Location: LCCOMB_X20_Y29_N8
\DIVFREQ|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~32_combout\ = (\DIVFREQ|contagem\(16) & (\DIVFREQ|Add0~31\ $ (GND))) # (!\DIVFREQ|contagem\(16) & (!\DIVFREQ|Add0~31\ & VCC))
-- \DIVFREQ|Add0~33\ = CARRY((\DIVFREQ|contagem\(16) & !\DIVFREQ|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(16),
	datad => VCC,
	cin => \DIVFREQ|Add0~31\,
	combout => \DIVFREQ|Add0~32_combout\,
	cout => \DIVFREQ|Add0~33\);

-- Location: LCFF_X20_Y29_N9
\DIVFREQ|contagem[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(16));

-- Location: LCCOMB_X20_Y29_N10
\DIVFREQ|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~34_combout\ = (\DIVFREQ|contagem\(17) & (!\DIVFREQ|Add0~33\)) # (!\DIVFREQ|contagem\(17) & ((\DIVFREQ|Add0~33\) # (GND)))
-- \DIVFREQ|Add0~35\ = CARRY((!\DIVFREQ|Add0~33\) # (!\DIVFREQ|contagem\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(17),
	datad => VCC,
	cin => \DIVFREQ|Add0~33\,
	combout => \DIVFREQ|Add0~34_combout\,
	cout => \DIVFREQ|Add0~35\);

-- Location: LCCOMB_X20_Y29_N14
\DIVFREQ|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~38_combout\ = (\DIVFREQ|contagem\(19) & (!\DIVFREQ|Add0~37\)) # (!\DIVFREQ|contagem\(19) & ((\DIVFREQ|Add0~37\) # (GND)))
-- \DIVFREQ|Add0~39\ = CARRY((!\DIVFREQ|Add0~37\) # (!\DIVFREQ|contagem\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(19),
	datad => VCC,
	cin => \DIVFREQ|Add0~37\,
	combout => \DIVFREQ|Add0~38_combout\,
	cout => \DIVFREQ|Add0~39\);

-- Location: LCFF_X20_Y29_N15
\DIVFREQ|contagem[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(19));

-- Location: LCCOMB_X20_Y29_N16
\DIVFREQ|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~40_combout\ = (\DIVFREQ|contagem\(20) & (\DIVFREQ|Add0~39\ $ (GND))) # (!\DIVFREQ|contagem\(20) & (!\DIVFREQ|Add0~39\ & VCC))
-- \DIVFREQ|Add0~41\ = CARRY((\DIVFREQ|contagem\(20) & !\DIVFREQ|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(20),
	datad => VCC,
	cin => \DIVFREQ|Add0~39\,
	combout => \DIVFREQ|Add0~40_combout\,
	cout => \DIVFREQ|Add0~41\);

-- Location: LCCOMB_X20_Y29_N18
\DIVFREQ|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~42_combout\ = (\DIVFREQ|contagem\(21) & (!\DIVFREQ|Add0~41\)) # (!\DIVFREQ|contagem\(21) & ((\DIVFREQ|Add0~41\) # (GND)))
-- \DIVFREQ|Add0~43\ = CARRY((!\DIVFREQ|Add0~41\) # (!\DIVFREQ|contagem\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(21),
	datad => VCC,
	cin => \DIVFREQ|Add0~41\,
	combout => \DIVFREQ|Add0~42_combout\,
	cout => \DIVFREQ|Add0~43\);

-- Location: LCFF_X20_Y29_N19
\DIVFREQ|contagem[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(21));

-- Location: LCCOMB_X20_Y29_N20
\DIVFREQ|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~44_combout\ = (\DIVFREQ|contagem\(22) & (\DIVFREQ|Add0~43\ $ (GND))) # (!\DIVFREQ|contagem\(22) & (!\DIVFREQ|Add0~43\ & VCC))
-- \DIVFREQ|Add0~45\ = CARRY((\DIVFREQ|contagem\(22) & !\DIVFREQ|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(22),
	datad => VCC,
	cin => \DIVFREQ|Add0~43\,
	combout => \DIVFREQ|Add0~44_combout\,
	cout => \DIVFREQ|Add0~45\);

-- Location: LCCOMB_X20_Y29_N22
\DIVFREQ|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|Add0~46_combout\ = \DIVFREQ|Add0~45\ $ (\DIVFREQ|contagem\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DIVFREQ|contagem\(23),
	cin => \DIVFREQ|Add0~45\,
	combout => \DIVFREQ|Add0~46_combout\);

-- Location: LCCOMB_X20_Y29_N28
\DIVFREQ|contagem~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem~9_combout\ = (!\DECODIF|DivFreq|Equal0~7_combout\ & \DIVFREQ|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|DivFreq|Equal0~7_combout\,
	datad => \DIVFREQ|Add0~46_combout\,
	combout => \DIVFREQ|contagem~9_combout\);

-- Location: LCFF_X20_Y29_N29
\DIVFREQ|contagem[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(23));

-- Location: LCFF_X20_Y29_N21
\DIVFREQ|contagem[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(22));

-- Location: LCCOMB_X20_Y29_N26
\DECODIF|DivFreq|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|DivFreq|Equal0~6_combout\ = (\DIVFREQ|contagem\(23) & (!\DIVFREQ|contagem\(22) & !\DIVFREQ|contagem\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIVFREQ|contagem\(23),
	datac => \DIVFREQ|contagem\(22),
	datad => \DIVFREQ|contagem\(21),
	combout => \DECODIF|DivFreq|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y29_N24
\DIVFREQ|contagem~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem~8_combout\ = (\DIVFREQ|Add0~40_combout\ & !\DECODIF|DivFreq|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIVFREQ|Add0~40_combout\,
	datad => \DECODIF|DivFreq|Equal0~7_combout\,
	combout => \DIVFREQ|contagem~8_combout\);

-- Location: LCFF_X20_Y29_N25
\DIVFREQ|contagem[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(20));

-- Location: LCFF_X20_Y29_N11
\DIVFREQ|contagem[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(17));

-- Location: LCCOMB_X20_Y29_N30
\DECODIF|DivFreq|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|DivFreq|Equal0~5_combout\ = (!\DIVFREQ|contagem\(18) & (!\DIVFREQ|contagem\(19) & (\DIVFREQ|contagem\(20) & !\DIVFREQ|contagem\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(18),
	datab => \DIVFREQ|contagem\(19),
	datac => \DIVFREQ|contagem\(20),
	datad => \DIVFREQ|contagem\(17),
	combout => \DECODIF|DivFreq|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y30_N30
\DIVFREQ|contagem~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem~3_combout\ = (!\DECODIF|DivFreq|Equal0~7_combout\ & \DIVFREQ|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|DivFreq|Equal0~7_combout\,
	datad => \DIVFREQ|Add0~20_combout\,
	combout => \DIVFREQ|contagem~3_combout\);

-- Location: LCFF_X19_Y30_N31
\DIVFREQ|contagem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(10));

-- Location: LCCOMB_X19_Y30_N4
\DECODIF|DivFreq|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|DivFreq|Equal0~2_combout\ = (\DIVFREQ|contagem\(5) & (\DIVFREQ|contagem\(10) & (\DIVFREQ|contagem\(12) & !\DIVFREQ|contagem\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(5),
	datab => \DIVFREQ|contagem\(10),
	datac => \DIVFREQ|contagem\(12),
	datad => \DIVFREQ|contagem\(11),
	combout => \DECODIF|DivFreq|Equal0~2_combout\);

-- Location: LCFF_X20_Y30_N11
\DIVFREQ|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(1));

-- Location: LCFF_X20_Y30_N13
\DIVFREQ|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(2));

-- Location: LCCOMB_X20_Y30_N2
\DECODIF|DivFreq|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|DivFreq|Equal0~0_combout\ = (\DIVFREQ|contagem\(0) & (!\DIVFREQ|contagem\(3) & (!\DIVFREQ|contagem\(1) & !\DIVFREQ|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(0),
	datab => \DIVFREQ|contagem\(3),
	datac => \DIVFREQ|contagem\(1),
	datad => \DIVFREQ|contagem\(2),
	combout => \DECODIF|DivFreq|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y30_N10
\DIVFREQ|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVFREQ|contagem~0_combout\ = (!\DECODIF|DivFreq|Equal0~7_combout\ & \DIVFREQ|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DECODIF|DivFreq|Equal0~7_combout\,
	datad => \DIVFREQ|Add0~16_combout\,
	combout => \DIVFREQ|contagem~0_combout\);

-- Location: LCFF_X19_Y30_N11
\DIVFREQ|contagem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|contagem\(8));

-- Location: LCCOMB_X19_Y30_N26
\DECODIF|DivFreq|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|DivFreq|Equal0~1_combout\ = (\DIVFREQ|contagem\(6) & (\DIVFREQ|contagem\(8) & (!\DIVFREQ|contagem\(9) & !\DIVFREQ|contagem\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(6),
	datab => \DIVFREQ|contagem\(8),
	datac => \DIVFREQ|contagem\(9),
	datad => \DIVFREQ|contagem\(7),
	combout => \DECODIF|DivFreq|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y30_N28
\DECODIF|DivFreq|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|DivFreq|Equal0~3_combout\ = (!\DIVFREQ|contagem\(4) & (\DECODIF|DivFreq|Equal0~2_combout\ & (\DECODIF|DivFreq|Equal0~0_combout\ & \DECODIF|DivFreq|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVFREQ|contagem\(4),
	datab => \DECODIF|DivFreq|Equal0~2_combout\,
	datac => \DECODIF|DivFreq|Equal0~0_combout\,
	datad => \DECODIF|DivFreq|Equal0~1_combout\,
	combout => \DECODIF|DivFreq|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y30_N14
\DECODIF|DivFreq|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODIF|DivFreq|Equal0~7_combout\ = (\DECODIF|DivFreq|Equal0~4_combout\ & (\DECODIF|DivFreq|Equal0~6_combout\ & (\DECODIF|DivFreq|Equal0~5_combout\ & \DECODIF|DivFreq|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIF|DivFreq|Equal0~4_combout\,
	datab => \DECODIF|DivFreq|Equal0~6_combout\,
	datac => \DECODIF|DivFreq|Equal0~5_combout\,
	datad => \DECODIF|DivFreq|Equal0~3_combout\,
	combout => \DECODIF|DivFreq|Equal0~7_combout\);

-- Location: LCFF_X19_Y30_N17
\DIVFREQ|estado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIVFREQ|estado~0_combout\,
	ena => \DECODIF|DivFreq|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIVFREQ|estado~regout\);

-- Location: LCCOMB_X31_Y15_N16
\ALARME1|MIN0A9|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|MIN0A9|contagem[0]~3_combout\ = !\ALARME1|MIN0A9|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALARME1|MIN0A9|contagem\(0),
	combout => \ALARME1|MIN0A9|contagem[0]~3_combout\);

-- Location: LCFF_X31_Y15_N17
\ALARME1|MIN0A9|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALARME1|comb~clkctrl_outclk\,
	datain => \ALARME1|MIN0A9|contagem[0]~3_combout\,
	aclr => \ALARME1|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|MIN0A9|contagem\(0));

-- Location: LCCOMB_X31_Y16_N10
\process_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (\RELOGIO1|HR0A9|contagem\(3) & (\ALARME1|HR0A9|contagem\(3) & (\ALARME1|MIN0A9|contagem\(0) $ (!\RELOGIO1|MIN0A9|contagem\(0))))) # (!\RELOGIO1|HR0A9|contagem\(3) & (!\ALARME1|HR0A9|contagem\(3) & (\ALARME1|MIN0A9|contagem\(0) $ 
-- (!\RELOGIO1|MIN0A9|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|HR0A9|contagem\(3),
	datab => \ALARME1|MIN0A9|contagem\(0),
	datac => \ALARME1|HR0A9|contagem\(3),
	datad => \RELOGIO1|MIN0A9|contagem\(0),
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X30_Y16_N28
\RELOGIO1|MIN0A9|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RELOGIO1|MIN0A9|contagem~1_combout\ = (\RELOGIO1|MIN0A9|contagem\(1) & (\RELOGIO1|MIN0A9|contagem\(3) $ (((\RELOGIO1|MIN0A9|contagem\(2) & \RELOGIO1|MIN0A9|contagem\(0)))))) # (!\RELOGIO1|MIN0A9|contagem\(1) & (\RELOGIO1|MIN0A9|contagem\(3) & 
-- ((\RELOGIO1|MIN0A9|contagem\(2)) # (!\RELOGIO1|MIN0A9|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|MIN0A9|contagem\(1),
	datab => \RELOGIO1|MIN0A9|contagem\(2),
	datac => \RELOGIO1|MIN0A9|contagem\(3),
	datad => \RELOGIO1|MIN0A9|contagem\(0),
	combout => \RELOGIO1|MIN0A9|contagem~1_combout\);

-- Location: LCFF_X30_Y16_N29
\RELOGIO1|MIN0A9|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RELOGIO1|comb~clkctrl_outclk\,
	datain => \RELOGIO1|MIN0A9|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RELOGIO1|MIN0A9|contagem\(3));

-- Location: LCCOMB_X31_Y15_N0
\ALARME1|LOGICADOALARME|signalativado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALARME1|LOGICADOALARME|signalativado~0_combout\ = \ALARME1|LOGICADOALARME|signalativado~regout\ $ (!\ALARME1|LOGICADOALARME|FFJK|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALARME1|LOGICADOALARME|signalativado~regout\,
	datad => \ALARME1|LOGICADOALARME|FFJK|temp~regout\,
	combout => \ALARME1|LOGICADOALARME|signalativado~0_combout\);

-- Location: LCFF_X31_Y15_N1
\ALARME1|LOGICADOALARME|signalativado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~13\,
	datain => \ALARME1|LOGICADOALARME|signalativado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALARME1|LOGICADOALARME|signalativado~regout\);

-- Location: LCCOMB_X30_Y16_N20
\process_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (\ALARME1|LOGICADOALARME|signalativado~regout\ & (\RELOGIO1|MIN0A9|contagem\(3) $ (!\ALARME1|MIN0A9|contagem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RELOGIO1|MIN0A9|contagem\(3),
	datac => \ALARME1|MIN0A9|contagem\(3),
	datad => \ALARME1|LOGICADOALARME|signalativado~regout\,
	combout => \process_1~7_combout\);

-- Location: LCCOMB_X31_Y16_N22
\process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\RELOGIO1|HR0A2|contagem\(0) & (\ALARME1|HR0A2|contagem\(0) & (\RELOGIO1|HR0A2|contagem\(1) $ (!\ALARME1|HR0A2|contagem\(1))))) # (!\RELOGIO1|HR0A2|contagem\(0) & (!\ALARME1|HR0A2|contagem\(0) & (\RELOGIO1|HR0A2|contagem\(1) $ 
-- (!\ALARME1|HR0A2|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|HR0A2|contagem\(0),
	datab => \RELOGIO1|HR0A2|contagem\(1),
	datac => \ALARME1|HR0A2|contagem\(0),
	datad => \ALARME1|HR0A2|contagem\(1),
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X31_Y16_N16
\process_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\RELOGIO1|HR0A9|contagem\(0) & (\ALARME1|HR0A9|contagem\(0) & (\RELOGIO1|MIN0A5|contagem\(2) $ (!\ALARME1|MIN0A5|contagem\(2))))) # (!\RELOGIO1|HR0A9|contagem\(0) & (!\ALARME1|HR0A9|contagem\(0) & (\RELOGIO1|MIN0A5|contagem\(2) $ 
-- (!\ALARME1|MIN0A5|contagem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RELOGIO1|HR0A9|contagem\(0),
	datab => \RELOGIO1|MIN0A5|contagem\(2),
	datac => \ALARME1|MIN0A5|contagem\(2),
	datad => \ALARME1|HR0A9|contagem\(0),
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X31_Y16_N12
\process_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\ALARME1|HR0A9|contagem\(2) & (\RELOGIO1|HR0A9|contagem\(2) & (\ALARME1|HR0A9|contagem\(1) $ (!\RELOGIO1|HR0A9|contagem\(1))))) # (!\ALARME1|HR0A9|contagem\(2) & (!\RELOGIO1|HR0A9|contagem\(2) & (\ALARME1|HR0A9|contagem\(1) $ 
-- (!\RELOGIO1|HR0A9|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALARME1|HR0A9|contagem\(2),
	datab => \RELOGIO1|HR0A9|contagem\(2),
	datac => \ALARME1|HR0A9|contagem\(1),
	datad => \RELOGIO1|HR0A9|contagem\(1),
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X31_Y16_N18
\process_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\process_1~1_combout\ & (\process_1~0_combout\ & (\process_1~2_combout\ & \process_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~1_combout\,
	datab => \process_1~0_combout\,
	datac => \process_1~2_combout\,
	datad => \process_1~3_combout\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X30_Y16_N18
\process_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (\process_1~6_combout\ & (\process_1~5_combout\ & (\process_1~7_combout\ & \process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datab => \process_1~5_combout\,
	datac => \process_1~7_combout\,
	datad => \process_1~4_combout\,
	combout => \process_1~8_combout\);

-- Location: LCFF_X30_Y16_N19
AlarmeJK : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \AlarmeJK~regout\);

-- Location: LCCOMB_X27_Y16_N24
\FFJKALARME|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FFJKALARME|temp~0_combout\ = (!\FFJKALARME|temp~regout\ & \AlarmeJK~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FFJKALARME|temp~regout\,
	datad => \AlarmeJK~regout\,
	combout => \FFJKALARME|temp~0_combout\);

-- Location: LCFF_X27_Y16_N25
\FFJKALARME|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIVFREQ|estado~regout\,
	datain => \FFJKALARME|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFJKALARME|temp~regout\);

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
	datain => \DECODIF|ALT_INV_Segundos2[2]~2_combout\,
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
	datain => \DECODIF|Segundos2[3]~3_combout\,
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
	datain => \DECODIF|Segundos2[4]~4_combout\,
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
	datain => \DECODIF|Segundos2[6]~6_combout\,
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
	datain => \DECODIF|Minutos1[0]~1_combout\,
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
	datain => \DECODIF|Minutos1\(1),
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
	datain => \DECODIF|Minutos1\(2),
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
	datain => \DECODIF|Minutos1[3]~5_combout\,
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
	datain => \DECODIF|Minutos1[4]~7_combout\,
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
	datain => \DECODIF|Minutos1[5]~9_combout\,
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
	datain => \DECODIF|Minutos1[6]~11_combout\,
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
	datain => \DECODIF|Minutos2[0]~0_combout\,
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
	datain => \DECODIF|Minutos2\(1),
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
	datain => \DECODIF|Minutos2\(2),
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
	datain => \DECODIF|Minutos2\(3),
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
	datain => \DECODIF|Minutos2[4]~1_combout\,
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
	datain => \DECODIF|Minutos2[5]~2_combout\,
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
	datain => \DECODIF|Minutos2\(6),
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
	datain => \DECODIF|Horas1[0]~1_combout\,
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
	datain => \DECODIF|Horas1\(1),
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
	datain => \DECODIF|Horas1\(2),
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
	datain => \DECODIF|Horas1[3]~5_combout\,
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
	datain => \DECODIF|Horas1[4]~7_combout\,
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
	datain => \DECODIF|Horas1[5]~9_combout\,
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
	datain => \DECODIF|Horas1[6]~11_combout\,
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
	datain => \DECODIF|Horas2[0]~0_combout\,
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
	datain => \DECODIF|Horas2\(1),
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
	datain => \DECODIF|Horas2\(2),
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
	datain => \DECODIF|Horas2\(3),
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
	datain => \DECODIF|Horas2[4]~1_combout\,
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
	datain => \DECODIF|Horas2[5]~2_combout\,
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
	datain => \DECODIF|Horas2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(6));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Modo[0]~I\ : cycloneii_io
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
	datain => SignalMode(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Modo(0));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Modo[1]~I\ : cycloneii_io
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
	datain => SignalMode(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Modo(1));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LedAlarme~I\ : cycloneii_io
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
	datain => \FFJKALARME|temp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LedAlarme);

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AlarmeAtivado~I\ : cycloneii_io
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
	datain => \ALARME1|LOGICADOALARME|signalativado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AlarmeAtivado);
END structure;


