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

-- DATE "06/08/2018 12:59:56"

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

ENTITY 	cronometro IS
    PORT (
	start : IN std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	Mili1 : OUT std_logic_vector(3 DOWNTO 0);
	Mili2 : OUT std_logic_vector(3 DOWNTO 0);
	Segundos1 : OUT std_logic_vector(3 DOWNTO 0);
	Segundos2 : OUT std_logic_vector(3 DOWNTO 0);
	Minutos1 : OUT std_logic_vector(3 DOWNTO 0);
	Minutos2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END cronometro;

-- Design Ports Information
-- start	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Mili1[0]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mili1[1]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mili1[2]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mili1[3]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mili2[0]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mili2[1]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mili2[2]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mili2[3]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos1[0]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos1[1]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos1[2]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos1[3]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[0]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[1]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[2]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Segundos2[3]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[1]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[1]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[2]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[3]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cronometro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Mili1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Mili2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Segundos1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Segundos2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Minutos1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Minutos2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT0A9_1|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT0A5_1|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT0A9_2|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV0|estado~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT0A9_4|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT0A9_3|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV0|Add0~2_combout\ : std_logic;
SIGNAL \DIV0|Add0~8_combout\ : std_logic;
SIGNAL \DIV0|Add0~32_combout\ : std_logic;
SIGNAL \DIV0|Add0~34_combout\ : std_logic;
SIGNAL \DIV0|Add0~38_combout\ : std_logic;
SIGNAL \DIV0|Equal0~1_combout\ : std_logic;
SIGNAL \DIV0|Equal0~5_combout\ : std_logic;
SIGNAL \DIV0|contagem~5_combout\ : std_logic;
SIGNAL \DIV0|contagem~7_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \DIV0|Add0~0_combout\ : std_logic;
SIGNAL \DIV0|contagem[0]~12_combout\ : std_logic;
SIGNAL \DIV0|Add0~1\ : std_logic;
SIGNAL \DIV0|Add0~3\ : std_logic;
SIGNAL \DIV0|Add0~5\ : std_logic;
SIGNAL \DIV0|Add0~6_combout\ : std_logic;
SIGNAL \DIV0|Add0~7\ : std_logic;
SIGNAL \DIV0|Add0~9\ : std_logic;
SIGNAL \DIV0|Add0~10_combout\ : std_logic;
SIGNAL \DIV0|Add0~11\ : std_logic;
SIGNAL \DIV0|Add0~12_combout\ : std_logic;
SIGNAL \DIV0|contagem~1_combout\ : std_logic;
SIGNAL \DIV0|Add0~13\ : std_logic;
SIGNAL \DIV0|Add0~14_combout\ : std_logic;
SIGNAL \DIV0|Add0~15\ : std_logic;
SIGNAL \DIV0|Add0~17\ : std_logic;
SIGNAL \DIV0|Add0~18_combout\ : std_logic;
SIGNAL \DIV0|Add0~19\ : std_logic;
SIGNAL \DIV0|Add0~20_combout\ : std_logic;
SIGNAL \DIV0|Add0~21\ : std_logic;
SIGNAL \DIV0|Add0~22_combout\ : std_logic;
SIGNAL \DIV0|contagem~0_combout\ : std_logic;
SIGNAL \DIV0|Add0~23\ : std_logic;
SIGNAL \DIV0|Add0~24_combout\ : std_logic;
SIGNAL \DIV0|contagem~2_combout\ : std_logic;
SIGNAL \DIV0|Add0~25\ : std_logic;
SIGNAL \DIV0|Add0~27\ : std_logic;
SIGNAL \DIV0|Add0~28_combout\ : std_logic;
SIGNAL \DIV0|contagem~4_combout\ : std_logic;
SIGNAL \DIV0|Add0~29\ : std_logic;
SIGNAL \DIV0|Add0~31\ : std_logic;
SIGNAL \DIV0|Add0~33\ : std_logic;
SIGNAL \DIV0|Add0~35\ : std_logic;
SIGNAL \DIV0|Add0~36_combout\ : std_logic;
SIGNAL \DIV0|contagem~6_combout\ : std_logic;
SIGNAL \DIV0|Add0~37\ : std_logic;
SIGNAL \DIV0|Add0~39\ : std_logic;
SIGNAL \DIV0|Add0~40_combout\ : std_logic;
SIGNAL \DIV0|contagem~9_combout\ : std_logic;
SIGNAL \DIV0|Add0~41\ : std_logic;
SIGNAL \DIV0|Add0~42_combout\ : std_logic;
SIGNAL \DIV0|contagem~10_combout\ : std_logic;
SIGNAL \DIV0|Add0~43\ : std_logic;
SIGNAL \DIV0|Add0~44_combout\ : std_logic;
SIGNAL \DIV0|contagem~11_combout\ : std_logic;
SIGNAL \DIV0|Add0~45\ : std_logic;
SIGNAL \DIV0|Add0~46_combout\ : std_logic;
SIGNAL \DIV0|Add0~47\ : std_logic;
SIGNAL \DIV0|Add0~48_combout\ : std_logic;
SIGNAL \DIV0|contagem~8_combout\ : std_logic;
SIGNAL \DIV0|Add0~26_combout\ : std_logic;
SIGNAL \DIV0|contagem~3_combout\ : std_logic;
SIGNAL \DIV0|Add0~30_combout\ : std_logic;
SIGNAL \DIV0|Equal0~3_combout\ : std_logic;
SIGNAL \DIV0|Add0~16_combout\ : std_logic;
SIGNAL \DIV0|Equal0~0_combout\ : std_logic;
SIGNAL \DIV0|Add0~4_combout\ : std_logic;
SIGNAL \DIV0|Equal0~2_combout\ : std_logic;
SIGNAL \DIV0|Equal0~4_combout\ : std_logic;
SIGNAL \DIV0|Equal0~6_combout\ : std_logic;
SIGNAL \DIV0|Equal0~7_combout\ : std_logic;
SIGNAL \DIV0|estado~0_combout\ : std_logic;
SIGNAL \DIV0|estado~regout\ : std_logic;
SIGNAL \DIV0|estado~clkctrl_outclk\ : std_logic;
SIGNAL \CONT0A9_1|contagem[0]~3_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \CONT0A9_1|contagem[2]~1_combout\ : std_logic;
SIGNAL \CONT0A9_1|contagem~2_combout\ : std_logic;
SIGNAL \CONT0A9_1|contagem~0_combout\ : std_logic;
SIGNAL \CONT0A9_1|Equal0~0_combout\ : std_logic;
SIGNAL \CONT0A9_1|tc~regout\ : std_logic;
SIGNAL \CONT0A9_1|tc~clkctrl_outclk\ : std_logic;
SIGNAL \CONT0A9_2|contagem[0]~3_combout\ : std_logic;
SIGNAL \CONT0A9_2|contagem[2]~1_combout\ : std_logic;
SIGNAL \CONT0A9_2|contagem~0_combout\ : std_logic;
SIGNAL \CONT0A9_2|contagem~2_combout\ : std_logic;
SIGNAL \CONT0A9_2|Equal0~0_combout\ : std_logic;
SIGNAL \CONT0A9_2|tc~regout\ : std_logic;
SIGNAL \CONT0A9_2|tc~clkctrl_outclk\ : std_logic;
SIGNAL \CONT0A9_3|contagem[0]~3_combout\ : std_logic;
SIGNAL \CONT0A9_3|contagem[2]~1_combout\ : std_logic;
SIGNAL \CONT0A9_3|contagem~0_combout\ : std_logic;
SIGNAL \CONT0A9_3|contagem~2_combout\ : std_logic;
SIGNAL \CONT0A9_3|Equal0~0_combout\ : std_logic;
SIGNAL \CONT0A9_3|tc~regout\ : std_logic;
SIGNAL \CONT0A9_3|tc~clkctrl_outclk\ : std_logic;
SIGNAL \CONT0A5_1|contagem[0]~2_combout\ : std_logic;
SIGNAL \CONT0A5_1|contagem~1_combout\ : std_logic;
SIGNAL \CONT0A5_1|contagem~0_combout\ : std_logic;
SIGNAL \CONT0A5_1|Equal0~0_combout\ : std_logic;
SIGNAL \CONT0A5_1|tc~regout\ : std_logic;
SIGNAL \CONT0A5_1|tc~clkctrl_outclk\ : std_logic;
SIGNAL \CONT0A9_4|contagem[0]~3_combout\ : std_logic;
SIGNAL \CONT0A9_4|contagem[2]~1_combout\ : std_logic;
SIGNAL \CONT0A9_4|contagem~0_combout\ : std_logic;
SIGNAL \CONT0A9_4|contagem~2_combout\ : std_logic;
SIGNAL \CONT0A9_4|Equal0~0_combout\ : std_logic;
SIGNAL \CONT0A9_4|tc~regout\ : std_logic;
SIGNAL \CONT0A9_4|tc~clkctrl_outclk\ : std_logic;
SIGNAL \CONT0A5_2|contagem[0]~2_combout\ : std_logic;
SIGNAL \CONT0A5_2|contagem~1_combout\ : std_logic;
SIGNAL \CONT0A5_2|contagem~0_combout\ : std_logic;
SIGNAL \CONT0A9_2|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT0A9_3|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT0A9_4|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT0A5_2|contagem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DIV0|contagem\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \CONT0A9_1|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT0A5_1|contagem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

ww_start <= start;
ww_clock <= clock;
ww_reset <= reset;
Mili1 <= ww_Mili1;
Mili2 <= ww_Mili2;
Segundos1 <= ww_Segundos1;
Segundos2 <= ww_Segundos2;
Minutos1 <= ww_Minutos1;
Minutos2 <= ww_Minutos2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\CONT0A9_1|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONT0A9_1|tc~regout\);

\CONT0A5_1|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONT0A5_1|tc~regout\);

\CONT0A9_2|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONT0A9_2|tc~regout\);

\DIV0|estado~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \DIV0|estado~regout\);

\CONT0A9_4|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONT0A9_4|tc~regout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\CONT0A9_3|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONT0A9_3|tc~regout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: LCCOMB_X2_Y17_N10
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

-- Location: LCCOMB_X2_Y17_N16
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

-- Location: LCCOMB_X2_Y16_N8
\DIV0|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~32_combout\ = (\DIV0|contagem\(16) & (\DIV0|Add0~31\ $ (GND))) # (!\DIV0|contagem\(16) & (!\DIV0|Add0~31\ & VCC))
-- \DIV0|Add0~33\ = CARRY((\DIV0|contagem\(16) & !\DIV0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(16),
	datad => VCC,
	cin => \DIV0|Add0~31\,
	combout => \DIV0|Add0~32_combout\,
	cout => \DIV0|Add0~33\);

-- Location: LCCOMB_X2_Y16_N10
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

-- Location: LCCOMB_X2_Y16_N14
\DIV0|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~38_combout\ = (\DIV0|contagem\(19) & (!\DIV0|Add0~37\)) # (!\DIV0|contagem\(19) & ((\DIV0|Add0~37\) # (GND)))
-- \DIV0|Add0~39\ = CARRY((!\DIV0|Add0~37\) # (!\DIV0|contagem\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(19),
	datad => VCC,
	cin => \DIV0|Add0~37\,
	combout => \DIV0|Add0~38_combout\,
	cout => \DIV0|Add0~39\);

-- Location: LCFF_X2_Y17_N17
\DIV0|contagem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(4));

-- Location: LCCOMB_X1_Y16_N10
\DIV0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~1_combout\ = (!\DIV0|contagem\(4) & (\DIV0|contagem\(6) & (!\DIV0|contagem\(7) & !\DIV0|contagem\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(4),
	datab => \DIV0|contagem\(6),
	datac => \DIV0|contagem\(7),
	datad => \DIV0|contagem\(5),
	combout => \DIV0|Equal0~1_combout\);

-- Location: LCFF_X2_Y17_N11
\DIV0|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(1));

-- Location: LCFF_X1_Y16_N13
\DIV0|contagem[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(16));

-- Location: LCFF_X1_Y16_N15
\DIV0|contagem[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(19));

-- Location: LCFF_X2_Y16_N11
\DIV0|contagem[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(17));

-- Location: LCCOMB_X1_Y16_N20
\DIV0|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~5_combout\ = (\DIV0|contagem\(19) & (\DIV0|contagem\(18) & (!\DIV0|contagem\(17) & \DIV0|contagem\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(19),
	datab => \DIV0|contagem\(18),
	datac => \DIV0|contagem\(17),
	datad => \DIV0|contagem\(16),
	combout => \DIV0|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y16_N12
\DIV0|contagem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~5_combout\ = (\DIV0|Add0~32_combout\ & !\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Add0~32_combout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|contagem~5_combout\);

-- Location: LCCOMB_X1_Y16_N14
\DIV0|contagem~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~7_combout\ = (\DIV0|Add0~38_combout\ & !\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Add0~38_combout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|contagem~7_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X2_Y17_N8
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

-- Location: LCCOMB_X2_Y17_N4
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

-- Location: LCFF_X2_Y17_N5
\DIV0|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(0));

-- Location: LCCOMB_X2_Y17_N12
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

-- Location: LCCOMB_X2_Y17_N14
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

-- Location: LCFF_X2_Y17_N15
\DIV0|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(3));

-- Location: LCCOMB_X2_Y17_N18
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

-- Location: LCFF_X2_Y17_N19
\DIV0|contagem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(5));

-- Location: LCCOMB_X2_Y17_N20
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

-- Location: LCCOMB_X1_Y16_N0
\DIV0|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~1_combout\ = (\DIV0|Add0~12_combout\ & !\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Add0~12_combout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|contagem~1_combout\);

-- Location: LCFF_X1_Y16_N1
\DIV0|contagem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(6));

-- Location: LCCOMB_X2_Y17_N22
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

-- Location: LCFF_X2_Y17_N23
\DIV0|contagem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(7));

-- Location: LCCOMB_X2_Y17_N24
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

-- Location: LCCOMB_X2_Y17_N26
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

-- Location: LCFF_X2_Y17_N27
\DIV0|contagem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(9));

-- Location: LCCOMB_X2_Y17_N28
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

-- Location: LCFF_X2_Y17_N29
\DIV0|contagem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(10));

-- Location: LCCOMB_X2_Y17_N30
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

-- Location: LCCOMB_X1_Y16_N28
\DIV0|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~0_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|Equal0~7_combout\,
	datad => \DIV0|Add0~22_combout\,
	combout => \DIV0|contagem~0_combout\);

-- Location: LCFF_X1_Y16_N29
\DIV0|contagem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(11));

-- Location: LCCOMB_X2_Y16_N0
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

-- Location: LCCOMB_X1_Y16_N16
\DIV0|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~2_combout\ = (\DIV0|Add0~24_combout\ & !\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Add0~24_combout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|contagem~2_combout\);

-- Location: LCFF_X1_Y16_N17
\DIV0|contagem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(12));

-- Location: LCCOMB_X2_Y16_N2
\DIV0|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~26_combout\ = (\DIV0|contagem\(13) & (!\DIV0|Add0~25\)) # (!\DIV0|contagem\(13) & ((\DIV0|Add0~25\) # (GND)))
-- \DIV0|Add0~27\ = CARRY((!\DIV0|Add0~25\) # (!\DIV0|contagem\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(13),
	datad => VCC,
	cin => \DIV0|Add0~25\,
	combout => \DIV0|Add0~26_combout\,
	cout => \DIV0|Add0~27\);

-- Location: LCCOMB_X2_Y16_N4
\DIV0|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Add0~28_combout\ = (\DIV0|contagem\(14) & (\DIV0|Add0~27\ $ (GND))) # (!\DIV0|contagem\(14) & (!\DIV0|Add0~27\ & VCC))
-- \DIV0|Add0~29\ = CARRY((\DIV0|contagem\(14) & !\DIV0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|contagem\(14),
	datad => VCC,
	cin => \DIV0|Add0~27\,
	combout => \DIV0|Add0~28_combout\,
	cout => \DIV0|Add0~29\);

-- Location: LCCOMB_X1_Y16_N6
\DIV0|contagem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~4_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|Equal0~7_combout\,
	datad => \DIV0|Add0~28_combout\,
	combout => \DIV0|contagem~4_combout\);

-- Location: LCFF_X1_Y16_N7
\DIV0|contagem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(14));

-- Location: LCCOMB_X2_Y16_N6
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

-- Location: LCCOMB_X2_Y16_N12
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

-- Location: LCCOMB_X1_Y16_N26
\DIV0|contagem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~6_combout\ = (\DIV0|Add0~36_combout\ & !\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Add0~36_combout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|contagem~6_combout\);

-- Location: LCFF_X1_Y16_N27
\DIV0|contagem[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(18));

-- Location: LCCOMB_X2_Y16_N16
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

-- Location: LCCOMB_X2_Y16_N28
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

-- Location: LCFF_X2_Y16_N29
\DIV0|contagem[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(20));

-- Location: LCCOMB_X2_Y16_N18
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

-- Location: LCCOMB_X1_Y16_N22
\DIV0|contagem~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~10_combout\ = (!\DIV0|Equal0~7_combout\ & \DIV0|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV0|Equal0~7_combout\,
	datad => \DIV0|Add0~42_combout\,
	combout => \DIV0|contagem~10_combout\);

-- Location: LCFF_X1_Y16_N23
\DIV0|contagem[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(21));

-- Location: LCCOMB_X2_Y16_N20
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

-- Location: LCCOMB_X2_Y16_N26
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

-- Location: LCFF_X2_Y16_N27
\DIV0|contagem[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(22));

-- Location: LCCOMB_X2_Y16_N22
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

-- Location: LCFF_X2_Y16_N23
\DIV0|contagem[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(23));

-- Location: LCCOMB_X2_Y16_N24
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

-- Location: LCCOMB_X2_Y16_N30
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

-- Location: LCFF_X2_Y16_N31
\DIV0|contagem[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(24));

-- Location: LCCOMB_X1_Y16_N30
\DIV0|contagem~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|contagem~3_combout\ = (\DIV0|Add0~26_combout\ & !\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|Add0~26_combout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|contagem~3_combout\);

-- Location: LCFF_X1_Y16_N31
\DIV0|contagem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|contagem~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(13));

-- Location: LCFF_X2_Y16_N7
\DIV0|contagem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(15));

-- Location: LCCOMB_X1_Y16_N18
\DIV0|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~3_combout\ = (\DIV0|contagem\(14) & (\DIV0|contagem\(13) & (\DIV0|contagem\(12) & !\DIV0|contagem\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(14),
	datab => \DIV0|contagem\(13),
	datac => \DIV0|contagem\(12),
	datad => \DIV0|contagem\(15),
	combout => \DIV0|Equal0~3_combout\);

-- Location: LCFF_X2_Y17_N25
\DIV0|contagem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(8));

-- Location: LCCOMB_X1_Y16_N24
\DIV0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~0_combout\ = (!\DIV0|contagem\(10) & (\DIV0|contagem\(11) & (!\DIV0|contagem\(9) & !\DIV0|contagem\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(10),
	datab => \DIV0|contagem\(11),
	datac => \DIV0|contagem\(9),
	datad => \DIV0|contagem\(8),
	combout => \DIV0|Equal0~0_combout\);

-- Location: LCFF_X2_Y17_N13
\DIV0|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|contagem\(2));

-- Location: LCCOMB_X2_Y17_N6
\DIV0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~2_combout\ = (!\DIV0|contagem\(1) & (!\DIV0|contagem\(3) & (\DIV0|contagem\(0) & !\DIV0|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(1),
	datab => \DIV0|contagem\(3),
	datac => \DIV0|contagem\(0),
	datad => \DIV0|contagem\(2),
	combout => \DIV0|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y16_N4
\DIV0|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~4_combout\ = (\DIV0|Equal0~1_combout\ & (\DIV0|Equal0~3_combout\ & (\DIV0|Equal0~0_combout\ & \DIV0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|Equal0~1_combout\,
	datab => \DIV0|Equal0~3_combout\,
	datac => \DIV0|Equal0~0_combout\,
	datad => \DIV0|Equal0~2_combout\,
	combout => \DIV0|Equal0~4_combout\);

-- Location: LCCOMB_X3_Y16_N28
\DIV0|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~6_combout\ = (\DIV0|contagem\(21) & (\DIV0|contagem\(22) & (\DIV0|contagem\(20) & !\DIV0|contagem\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|contagem\(21),
	datab => \DIV0|contagem\(22),
	datac => \DIV0|contagem\(20),
	datad => \DIV0|contagem\(23),
	combout => \DIV0|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y16_N2
\DIV0|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|Equal0~7_combout\ = (\DIV0|Equal0~5_combout\ & (\DIV0|contagem\(24) & (\DIV0|Equal0~4_combout\ & \DIV0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV0|Equal0~5_combout\,
	datab => \DIV0|contagem\(24),
	datac => \DIV0|Equal0~4_combout\,
	datad => \DIV0|Equal0~6_combout\,
	combout => \DIV0|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y16_N8
\DIV0|estado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIV0|estado~0_combout\ = \DIV0|estado~regout\ $ (\DIV0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV0|estado~regout\,
	datad => \DIV0|Equal0~7_combout\,
	combout => \DIV0|estado~0_combout\);

-- Location: LCFF_X1_Y16_N9
\DIV0|estado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DIV0|estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DIV0|estado~regout\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X64_Y19_N26
\CONT0A9_1|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_1|contagem[0]~3_combout\ = !\CONT0A9_1|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONT0A9_1|contagem\(0),
	combout => \CONT0A9_1|contagem[0]~3_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G8
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X64_Y19_N27
\CONT0A9_1|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIV0|estado~clkctrl_outclk\,
	datain => \CONT0A9_1|contagem[0]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_1|contagem\(0));

-- Location: LCCOMB_X64_Y19_N30
\CONT0A9_1|contagem[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_1|contagem[2]~1_combout\ = \CONT0A9_1|contagem\(2) $ (((\CONT0A9_1|contagem\(1) & \CONT0A9_1|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONT0A9_1|contagem\(1),
	datac => \CONT0A9_1|contagem\(2),
	datad => \CONT0A9_1|contagem\(0),
	combout => \CONT0A9_1|contagem[2]~1_combout\);

-- Location: LCFF_X64_Y19_N31
\CONT0A9_1|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIV0|estado~clkctrl_outclk\,
	datain => \CONT0A9_1|contagem[2]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_1|contagem\(2));

-- Location: LCCOMB_X64_Y19_N8
\CONT0A9_1|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_1|contagem~2_combout\ = (\CONT0A9_1|contagem\(1) & (\CONT0A9_1|contagem\(3) $ (((\CONT0A9_1|contagem\(2) & \CONT0A9_1|contagem\(0)))))) # (!\CONT0A9_1|contagem\(1) & (\CONT0A9_1|contagem\(3) & ((\CONT0A9_1|contagem\(2)) # 
-- (!\CONT0A9_1|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_1|contagem\(1),
	datab => \CONT0A9_1|contagem\(2),
	datac => \CONT0A9_1|contagem\(3),
	datad => \CONT0A9_1|contagem\(0),
	combout => \CONT0A9_1|contagem~2_combout\);

-- Location: LCFF_X64_Y19_N9
\CONT0A9_1|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIV0|estado~clkctrl_outclk\,
	datain => \CONT0A9_1|contagem~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_1|contagem\(3));

-- Location: LCCOMB_X64_Y19_N28
\CONT0A9_1|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_1|contagem~0_combout\ = (\CONT0A9_1|contagem\(1) & (((!\CONT0A9_1|contagem\(0))))) # (!\CONT0A9_1|contagem\(1) & (\CONT0A9_1|contagem\(0) & ((\CONT0A9_1|contagem\(2)) # (!\CONT0A9_1|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_1|contagem\(2),
	datab => \CONT0A9_1|contagem\(3),
	datac => \CONT0A9_1|contagem\(1),
	datad => \CONT0A9_1|contagem\(0),
	combout => \CONT0A9_1|contagem~0_combout\);

-- Location: LCFF_X64_Y19_N29
\CONT0A9_1|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIV0|estado~clkctrl_outclk\,
	datain => \CONT0A9_1|contagem~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_1|contagem\(1));

-- Location: LCCOMB_X64_Y19_N22
\CONT0A9_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_1|Equal0~0_combout\ = (!\CONT0A9_1|contagem\(2) & (\CONT0A9_1|contagem\(0) & (\CONT0A9_1|contagem\(3) & !\CONT0A9_1|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_1|contagem\(2),
	datab => \CONT0A9_1|contagem\(0),
	datac => \CONT0A9_1|contagem\(3),
	datad => \CONT0A9_1|contagem\(1),
	combout => \CONT0A9_1|Equal0~0_combout\);

-- Location: LCFF_X64_Y19_N23
\CONT0A9_1|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DIV0|estado~clkctrl_outclk\,
	datain => \CONT0A9_1|Equal0~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_1|tc~regout\);

-- Location: CLKCTRL_G5
\CONT0A9_1|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONT0A9_1|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONT0A9_1|tc~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y1_N28
\CONT0A9_2|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_2|contagem[0]~3_combout\ = !\CONT0A9_2|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONT0A9_2|contagem\(0),
	combout => \CONT0A9_2|contagem[0]~3_combout\);

-- Location: LCFF_X34_Y1_N29
\CONT0A9_2|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_1|tc~clkctrl_outclk\,
	datain => \CONT0A9_2|contagem[0]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_2|contagem\(0));

-- Location: LCCOMB_X34_Y1_N22
\CONT0A9_2|contagem[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_2|contagem[2]~1_combout\ = \CONT0A9_2|contagem\(2) $ (((\CONT0A9_2|contagem\(0) & \CONT0A9_2|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONT0A9_2|contagem\(0),
	datac => \CONT0A9_2|contagem\(2),
	datad => \CONT0A9_2|contagem\(1),
	combout => \CONT0A9_2|contagem[2]~1_combout\);

-- Location: LCFF_X34_Y1_N23
\CONT0A9_2|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_1|tc~clkctrl_outclk\,
	datain => \CONT0A9_2|contagem[2]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_2|contagem\(2));

-- Location: LCCOMB_X34_Y1_N30
\CONT0A9_2|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_2|contagem~0_combout\ = (\CONT0A9_2|contagem\(1) & (((!\CONT0A9_2|contagem\(0))))) # (!\CONT0A9_2|contagem\(1) & (\CONT0A9_2|contagem\(0) & ((\CONT0A9_2|contagem\(2)) # (!\CONT0A9_2|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_2|contagem\(3),
	datab => \CONT0A9_2|contagem\(2),
	datac => \CONT0A9_2|contagem\(1),
	datad => \CONT0A9_2|contagem\(0),
	combout => \CONT0A9_2|contagem~0_combout\);

-- Location: LCFF_X34_Y1_N31
\CONT0A9_2|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_1|tc~clkctrl_outclk\,
	datain => \CONT0A9_2|contagem~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_2|contagem\(1));

-- Location: LCCOMB_X34_Y1_N24
\CONT0A9_2|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_2|contagem~2_combout\ = (\CONT0A9_2|contagem\(2) & (\CONT0A9_2|contagem\(3) $ (((\CONT0A9_2|contagem\(1) & \CONT0A9_2|contagem\(0)))))) # (!\CONT0A9_2|contagem\(2) & (\CONT0A9_2|contagem\(3) & ((\CONT0A9_2|contagem\(1)) # 
-- (!\CONT0A9_2|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_2|contagem\(2),
	datab => \CONT0A9_2|contagem\(1),
	datac => \CONT0A9_2|contagem\(3),
	datad => \CONT0A9_2|contagem\(0),
	combout => \CONT0A9_2|contagem~2_combout\);

-- Location: LCFF_X34_Y1_N25
\CONT0A9_2|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_1|tc~clkctrl_outclk\,
	datain => \CONT0A9_2|contagem~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_2|contagem\(3));

-- Location: LCCOMB_X34_Y1_N26
\CONT0A9_2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_2|Equal0~0_combout\ = (\CONT0A9_2|contagem\(0) & (!\CONT0A9_2|contagem\(1) & (\CONT0A9_2|contagem\(3) & !\CONT0A9_2|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_2|contagem\(0),
	datab => \CONT0A9_2|contagem\(1),
	datac => \CONT0A9_2|contagem\(3),
	datad => \CONT0A9_2|contagem\(2),
	combout => \CONT0A9_2|Equal0~0_combout\);

-- Location: LCFF_X34_Y1_N27
\CONT0A9_2|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_1|tc~clkctrl_outclk\,
	datain => \CONT0A9_2|Equal0~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_2|tc~regout\);

-- Location: CLKCTRL_G15
\CONT0A9_2|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONT0A9_2|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONT0A9_2|tc~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y1_N18
\CONT0A9_3|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_3|contagem[0]~3_combout\ = !\CONT0A9_3|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONT0A9_3|contagem\(0),
	combout => \CONT0A9_3|contagem[0]~3_combout\);

-- Location: LCFF_X33_Y1_N19
\CONT0A9_3|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_2|tc~clkctrl_outclk\,
	datain => \CONT0A9_3|contagem[0]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_3|contagem\(0));

-- Location: LCCOMB_X33_Y1_N28
\CONT0A9_3|contagem[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_3|contagem[2]~1_combout\ = \CONT0A9_3|contagem\(2) $ (((\CONT0A9_3|contagem\(0) & \CONT0A9_3|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONT0A9_3|contagem\(0),
	datac => \CONT0A9_3|contagem\(2),
	datad => \CONT0A9_3|contagem\(1),
	combout => \CONT0A9_3|contagem[2]~1_combout\);

-- Location: LCFF_X33_Y1_N29
\CONT0A9_3|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_2|tc~clkctrl_outclk\,
	datain => \CONT0A9_3|contagem[2]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_3|contagem\(2));

-- Location: LCCOMB_X33_Y1_N30
\CONT0A9_3|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_3|contagem~0_combout\ = (\CONT0A9_3|contagem\(1) & (((!\CONT0A9_3|contagem\(0))))) # (!\CONT0A9_3|contagem\(1) & (\CONT0A9_3|contagem\(0) & ((\CONT0A9_3|contagem\(2)) # (!\CONT0A9_3|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_3|contagem\(3),
	datab => \CONT0A9_3|contagem\(2),
	datac => \CONT0A9_3|contagem\(1),
	datad => \CONT0A9_3|contagem\(0),
	combout => \CONT0A9_3|contagem~0_combout\);

-- Location: LCFF_X33_Y1_N31
\CONT0A9_3|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_2|tc~clkctrl_outclk\,
	datain => \CONT0A9_3|contagem~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_3|contagem\(1));

-- Location: LCCOMB_X33_Y1_N20
\CONT0A9_3|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_3|contagem~2_combout\ = (\CONT0A9_3|contagem\(0) & ((\CONT0A9_3|contagem\(1) & (\CONT0A9_3|contagem\(3) $ (\CONT0A9_3|contagem\(2)))) # (!\CONT0A9_3|contagem\(1) & (\CONT0A9_3|contagem\(3) & \CONT0A9_3|contagem\(2))))) # (!\CONT0A9_3|contagem\(0) 
-- & (((\CONT0A9_3|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_3|contagem\(0),
	datab => \CONT0A9_3|contagem\(1),
	datac => \CONT0A9_3|contagem\(3),
	datad => \CONT0A9_3|contagem\(2),
	combout => \CONT0A9_3|contagem~2_combout\);

-- Location: LCFF_X33_Y1_N21
\CONT0A9_3|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_2|tc~clkctrl_outclk\,
	datain => \CONT0A9_3|contagem~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_3|contagem\(3));

-- Location: LCCOMB_X33_Y1_N22
\CONT0A9_3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_3|Equal0~0_combout\ = (!\CONT0A9_3|contagem\(2) & (!\CONT0A9_3|contagem\(1) & (\CONT0A9_3|contagem\(3) & \CONT0A9_3|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_3|contagem\(2),
	datab => \CONT0A9_3|contagem\(1),
	datac => \CONT0A9_3|contagem\(3),
	datad => \CONT0A9_3|contagem\(0),
	combout => \CONT0A9_3|Equal0~0_combout\);

-- Location: LCFF_X33_Y1_N23
\CONT0A9_3|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_2|tc~clkctrl_outclk\,
	datain => \CONT0A9_3|Equal0~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_3|tc~regout\);

-- Location: CLKCTRL_G14
\CONT0A9_3|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONT0A9_3|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONT0A9_3|tc~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y1_N30
\CONT0A5_1|contagem[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A5_1|contagem[0]~2_combout\ = !\CONT0A5_1|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONT0A5_1|contagem\(0),
	combout => \CONT0A5_1|contagem[0]~2_combout\);

-- Location: LCFF_X32_Y1_N31
\CONT0A5_1|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_3|tc~clkctrl_outclk\,
	datain => \CONT0A5_1|contagem[0]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A5_1|contagem\(0));

-- Location: LCCOMB_X32_Y1_N22
\CONT0A5_1|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A5_1|contagem~1_combout\ = (\CONT0A5_1|contagem\(2) & ((!\CONT0A5_1|contagem\(0)))) # (!\CONT0A5_1|contagem\(2) & (\CONT0A5_1|contagem\(1) & \CONT0A5_1|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A5_1|contagem\(1),
	datac => \CONT0A5_1|contagem\(2),
	datad => \CONT0A5_1|contagem\(0),
	combout => \CONT0A5_1|contagem~1_combout\);

-- Location: LCFF_X32_Y1_N23
\CONT0A5_1|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_3|tc~clkctrl_outclk\,
	datain => \CONT0A5_1|contagem~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A5_1|contagem\(2));

-- Location: LCCOMB_X32_Y1_N16
\CONT0A5_1|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A5_1|contagem~0_combout\ = (\CONT0A5_1|contagem\(1) & ((!\CONT0A5_1|contagem\(0)))) # (!\CONT0A5_1|contagem\(1) & (!\CONT0A5_1|contagem\(2) & \CONT0A5_1|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONT0A5_1|contagem\(2),
	datac => \CONT0A5_1|contagem\(1),
	datad => \CONT0A5_1|contagem\(0),
	combout => \CONT0A5_1|contagem~0_combout\);

-- Location: LCFF_X32_Y1_N17
\CONT0A5_1|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_3|tc~clkctrl_outclk\,
	datain => \CONT0A5_1|contagem~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A5_1|contagem\(1));

-- Location: LCCOMB_X32_Y1_N28
\CONT0A5_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A5_1|Equal0~0_combout\ = (\CONT0A5_1|contagem\(0) & (!\CONT0A5_1|contagem\(1) & \CONT0A5_1|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONT0A5_1|contagem\(0),
	datac => \CONT0A5_1|contagem\(1),
	datad => \CONT0A5_1|contagem\(2),
	combout => \CONT0A5_1|Equal0~0_combout\);

-- Location: LCFF_X32_Y1_N29
\CONT0A5_1|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_3|tc~clkctrl_outclk\,
	datain => \CONT0A5_1|Equal0~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A5_1|tc~regout\);

-- Location: CLKCTRL_G13
\CONT0A5_1|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONT0A5_1|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONT0A5_1|tc~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y35_N30
\CONT0A9_4|contagem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_4|contagem[0]~3_combout\ = !\CONT0A9_4|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONT0A9_4|contagem\(0),
	combout => \CONT0A9_4|contagem[0]~3_combout\);

-- Location: LCFF_X30_Y35_N31
\CONT0A9_4|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A5_1|tc~clkctrl_outclk\,
	datain => \CONT0A9_4|contagem[0]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_4|contagem\(0));

-- Location: LCCOMB_X30_Y35_N26
\CONT0A9_4|contagem[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_4|contagem[2]~1_combout\ = \CONT0A9_4|contagem\(2) $ (((\CONT0A9_4|contagem\(1) & \CONT0A9_4|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_4|contagem\(1),
	datab => \CONT0A9_4|contagem\(0),
	datac => \CONT0A9_4|contagem\(2),
	combout => \CONT0A9_4|contagem[2]~1_combout\);

-- Location: LCFF_X30_Y35_N27
\CONT0A9_4|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A5_1|tc~clkctrl_outclk\,
	datain => \CONT0A9_4|contagem[2]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_4|contagem\(2));

-- Location: LCCOMB_X30_Y35_N20
\CONT0A9_4|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_4|contagem~0_combout\ = (\CONT0A9_4|contagem\(0) & (!\CONT0A9_4|contagem\(1) & ((\CONT0A9_4|contagem\(2)) # (!\CONT0A9_4|contagem\(3))))) # (!\CONT0A9_4|contagem\(0) & (((\CONT0A9_4|contagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_4|contagem\(3),
	datab => \CONT0A9_4|contagem\(0),
	datac => \CONT0A9_4|contagem\(1),
	datad => \CONT0A9_4|contagem\(2),
	combout => \CONT0A9_4|contagem~0_combout\);

-- Location: LCFF_X30_Y35_N21
\CONT0A9_4|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A5_1|tc~clkctrl_outclk\,
	datain => \CONT0A9_4|contagem~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_4|contagem\(1));

-- Location: LCCOMB_X30_Y35_N24
\CONT0A9_4|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_4|contagem~2_combout\ = (\CONT0A9_4|contagem\(1) & (\CONT0A9_4|contagem\(3) $ (((\CONT0A9_4|contagem\(0) & \CONT0A9_4|contagem\(2)))))) # (!\CONT0A9_4|contagem\(1) & (\CONT0A9_4|contagem\(3) & ((\CONT0A9_4|contagem\(2)) # 
-- (!\CONT0A9_4|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_4|contagem\(1),
	datab => \CONT0A9_4|contagem\(0),
	datac => \CONT0A9_4|contagem\(3),
	datad => \CONT0A9_4|contagem\(2),
	combout => \CONT0A9_4|contagem~2_combout\);

-- Location: LCFF_X30_Y35_N25
\CONT0A9_4|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A5_1|tc~clkctrl_outclk\,
	datain => \CONT0A9_4|contagem~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_4|contagem\(3));

-- Location: LCCOMB_X30_Y35_N22
\CONT0A9_4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A9_4|Equal0~0_combout\ = (\CONT0A9_4|contagem\(3) & (\CONT0A9_4|contagem\(0) & (!\CONT0A9_4|contagem\(1) & !\CONT0A9_4|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A9_4|contagem\(3),
	datab => \CONT0A9_4|contagem\(0),
	datac => \CONT0A9_4|contagem\(1),
	datad => \CONT0A9_4|contagem\(2),
	combout => \CONT0A9_4|Equal0~0_combout\);

-- Location: LCFF_X30_Y35_N23
\CONT0A9_4|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A5_1|tc~clkctrl_outclk\,
	datain => \CONT0A9_4|Equal0~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A9_4|tc~regout\);

-- Location: CLKCTRL_G11
\CONT0A9_4|tc~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONT0A9_4|tc~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONT0A9_4|tc~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y26_N12
\CONT0A5_2|contagem[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A5_2|contagem[0]~2_combout\ = !\CONT0A5_2|contagem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONT0A5_2|contagem\(0),
	combout => \CONT0A5_2|contagem[0]~2_combout\);

-- Location: LCFF_X1_Y26_N13
\CONT0A5_2|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_4|tc~clkctrl_outclk\,
	datain => \CONT0A5_2|contagem[0]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A5_2|contagem\(0));

-- Location: LCCOMB_X1_Y26_N28
\CONT0A5_2|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A5_2|contagem~1_combout\ = (\CONT0A5_2|contagem\(0) & (!\CONT0A5_2|contagem\(2) & \CONT0A5_2|contagem\(1))) # (!\CONT0A5_2|contagem\(0) & (\CONT0A5_2|contagem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A5_2|contagem\(0),
	datac => \CONT0A5_2|contagem\(2),
	datad => \CONT0A5_2|contagem\(1),
	combout => \CONT0A5_2|contagem~1_combout\);

-- Location: LCFF_X1_Y26_N29
\CONT0A5_2|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_4|tc~clkctrl_outclk\,
	datain => \CONT0A5_2|contagem~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A5_2|contagem\(2));

-- Location: LCCOMB_X1_Y26_N18
\CONT0A5_2|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT0A5_2|contagem~0_combout\ = (\CONT0A5_2|contagem\(0) & (!\CONT0A5_2|contagem\(1) & !\CONT0A5_2|contagem\(2))) # (!\CONT0A5_2|contagem\(0) & (\CONT0A5_2|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT0A5_2|contagem\(0),
	datac => \CONT0A5_2|contagem\(1),
	datad => \CONT0A5_2|contagem\(2),
	combout => \CONT0A5_2|contagem~0_combout\);

-- Location: LCFF_X1_Y26_N19
\CONT0A5_2|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CONT0A9_4|tc~clkctrl_outclk\,
	datain => \CONT0A5_2|contagem~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONT0A5_2|contagem\(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_start);

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mili1[0]~I\ : cycloneii_io
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
	datain => \CONT0A9_1|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mili1(0));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mili1[1]~I\ : cycloneii_io
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
	datain => \CONT0A9_1|contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mili1(1));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mili1[2]~I\ : cycloneii_io
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
	datain => \CONT0A9_1|contagem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mili1(2));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mili1[3]~I\ : cycloneii_io
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
	datain => \CONT0A9_1|contagem\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mili1(3));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mili2[0]~I\ : cycloneii_io
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
	datain => \CONT0A9_2|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mili2(0));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mili2[1]~I\ : cycloneii_io
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
	datain => \CONT0A9_2|contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mili2(1));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mili2[2]~I\ : cycloneii_io
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
	datain => \CONT0A9_2|contagem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mili2(2));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mili2[3]~I\ : cycloneii_io
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
	datain => \CONT0A9_2|contagem\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mili2(3));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A9_3|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(0));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A9_3|contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(1));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A9_3|contagem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(2));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A9_3|contagem\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos1(3));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A5_1|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(0));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A5_1|contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(1));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A5_1|contagem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(2));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Segundos2(3));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A9_4|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(0));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A9_4|contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A9_4|contagem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A9_4|contagem\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(3));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A5_2|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(0));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A5_2|contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(1));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \CONT0A5_2|contagem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(2));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(3));
END structure;


