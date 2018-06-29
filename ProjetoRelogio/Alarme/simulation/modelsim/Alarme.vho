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

-- DATE "06/08/2018 14:23:01"

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

ENTITY 	alarme IS
    PORT (
	reset : IN std_logic;
	set : IN std_logic;
	start : IN std_logic;
	config : IN std_logic;
	Minutos1 : OUT std_logic_vector(3 DOWNTO 0);
	Minutos2 : OUT std_logic_vector(3 DOWNTO 0);
	Horas1 : OUT std_logic_vector(3 DOWNTO 0);
	Horas2 : OUT std_logic_vector(3 DOWNTO 0);
	Ativado : OUT std_logic
	);
END alarme;

-- Design Ports Information
-- Minutos1[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos1[3]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Minutos2[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[2]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas1[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[0]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[1]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[2]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Horas2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Ativado	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- set	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- config	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alarme IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_config : std_logic;
SIGNAL ww_Minutos1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Minutos2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Horas1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Horas2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Ativado : std_logic;
SIGNAL \HR0A9|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MIN0A9|tc~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HR0A9|tc~regout\ : std_logic;
SIGNAL \HR0A9|tc~0_combout\ : std_logic;
SIGNAL \HR0A9|tc~1_combout\ : std_logic;
SIGNAL \HR0A9|tc~2_combout\ : std_logic;
SIGNAL \set~combout\ : std_logic;
SIGNAL \config~combout\ : std_logic;
SIGNAL \HR0A9|tc~clkctrl_outclk\ : std_logic;
SIGNAL \LOGICADOALARME|FFJK|temp~0_combout\ : std_logic;
SIGNAL \LOGICADOALARME|signalcont~0_combout\ : std_logic;
SIGNAL \LOGICADOALARME|signalcont~regout\ : std_logic;
SIGNAL \LOGICADOALARME|signalreset~0_combout\ : std_logic;
SIGNAL \LOGICADOALARME|signalreset~regout\ : std_logic;
SIGNAL \LOGICADOALARME|FFJK|temp~regout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \comb~4\ : std_logic;
SIGNAL \comb~4clkctrl_outclk\ : std_logic;
SIGNAL \MIN0A9|contagem[0]~3_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \MIN0A9|contagem[2]~1_combout\ : std_logic;
SIGNAL \MIN0A9|contagem~0_combout\ : std_logic;
SIGNAL \MIN0A9|contagem~2_combout\ : std_logic;
SIGNAL \MIN0A9|Equal0~0_combout\ : std_logic;
SIGNAL \MIN0A9|tc~0_combout\ : std_logic;
SIGNAL \MIN0A9|tc~regout\ : std_logic;
SIGNAL \MIN0A9|tc~clkctrl_outclk\ : std_logic;
SIGNAL \MIN0A5|contagem[0]~2_combout\ : std_logic;
SIGNAL \MIN0A5|contagem~0_combout\ : std_logic;
SIGNAL \MIN0A5|contagem~1_combout\ : std_logic;
SIGNAL \comb~combout\ : std_logic;
SIGNAL \comb~clkctrl_outclk\ : std_logic;
SIGNAL \HR0A9|contagem[0]~3_combout\ : std_logic;
SIGNAL \HR0A2|contagem~0_combout\ : std_logic;
SIGNAL \HR0A2|contagem~1_combout\ : std_logic;
SIGNAL \HR0A9|contagem[2]~1_combout\ : std_logic;
SIGNAL \HR0A9|contagem~0_combout\ : std_logic;
SIGNAL \HR0A9|contagem~2_combout\ : std_logic;
SIGNAL \SignalResetHora~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \Ativado~1_combout\ : std_logic;
SIGNAL \Ativado~0_combout\ : std_logic;
SIGNAL \Ativado~2_combout\ : std_logic;
SIGNAL \HR0A9|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MIN0A9|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MIN0A5|contagem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \HR0A2|contagem\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_set~combout\ : std_logic;
SIGNAL \ALT_INV_Ativado~2_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_set <= set;
ww_start <= start;
ww_config <= config;
Minutos1 <= ww_Minutos1;
Minutos2 <= ww_Minutos2;
Horas1 <= ww_Horas1;
Horas2 <= ww_Horas2;
Ativado <= ww_Ativado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\HR0A9|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \HR0A9|tc~regout\);

\comb~4clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \comb~4\);

\comb~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \comb~combout\);

\MIN0A9|tc~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \MIN0A9|tc~regout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_reset~clkctrl_outclk\ <= NOT \reset~clkctrl_outclk\;
\ALT_INV_set~combout\ <= NOT \set~combout\;
\ALT_INV_Ativado~2_combout\ <= NOT \Ativado~2_combout\;

-- Location: LCFF_X30_Y35_N31
\HR0A9|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~clkctrl_outclk\,
	datain => \HR0A9|tc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A9|tc~regout\);

-- Location: LCCOMB_X30_Y35_N20
\HR0A9|tc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|tc~0_combout\ = (\HR0A9|contagem\(0) & (\HR0A9|contagem\(3) & !\HR0A9|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HR0A9|contagem\(0),
	datac => \HR0A9|contagem\(3),
	datad => \HR0A9|contagem\(1),
	combout => \HR0A9|tc~0_combout\);

-- Location: LCCOMB_X30_Y35_N2
\HR0A9|tc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|tc~1_combout\ = (\HR0A9|contagem\(2) & (\HR0A2|contagem\(1) & ((\SignalResetHora~0_combout\)))) # (!\HR0A9|contagem\(2) & (((\HR0A9|tc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A2|contagem\(1),
	datab => \HR0A9|contagem\(2),
	datac => \HR0A9|tc~0_combout\,
	datad => \SignalResetHora~0_combout\,
	combout => \HR0A9|tc~1_combout\);

-- Location: LCCOMB_X30_Y35_N30
\HR0A9|tc~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|tc~2_combout\ = (\reset~combout\ & (\HR0A9|tc~1_combout\ & ((\HR0A9|tc~regout\) # (!\HR0A9|contagem\(2))))) # (!\reset~combout\ & (((\HR0A9|tc~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(2),
	datab => \reset~combout\,
	datac => \HR0A9|tc~regout\,
	datad => \HR0A9|tc~1_combout\,
	combout => \HR0A9|tc~2_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X27_Y35_N0
\LOGICADOALARME|FFJK|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LOGICADOALARME|FFJK|temp~0_combout\ = !\LOGICADOALARME|FFJK|temp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LOGICADOALARME|FFJK|temp~regout\,
	combout => \LOGICADOALARME|FFJK|temp~0_combout\);

-- Location: LCCOMB_X27_Y35_N4
\LOGICADOALARME|signalcont~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LOGICADOALARME|signalcont~0_combout\ = \LOGICADOALARME|signalcont~regout\ $ (((!\LOGICADOALARME|signalreset~regout\ & \LOGICADOALARME|FFJK|temp~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADOALARME|signalreset~regout\,
	datac => \LOGICADOALARME|signalcont~regout\,
	datad => \LOGICADOALARME|FFJK|temp~regout\,
	combout => \LOGICADOALARME|signalcont~0_combout\);

-- Location: LCFF_X27_Y35_N5
\LOGICADOALARME|signalcont\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_set~combout\,
	datain => \LOGICADOALARME|signalcont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LOGICADOALARME|signalcont~regout\);

-- Location: LCCOMB_X27_Y35_N30
\LOGICADOALARME|signalreset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LOGICADOALARME|signalreset~0_combout\ = (\LOGICADOALARME|signalcont~regout\ & \LOGICADOALARME|FFJK|temp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LOGICADOALARME|signalcont~regout\,
	datad => \LOGICADOALARME|FFJK|temp~regout\,
	combout => \LOGICADOALARME|signalreset~0_combout\);

-- Location: LCFF_X27_Y35_N31
\LOGICADOALARME|signalreset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_set~combout\,
	datain => \LOGICADOALARME|signalreset~0_combout\,
	aclr => \LOGICADOALARME|signalreset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LOGICADOALARME|signalreset~regout\);

-- Location: LCFF_X27_Y35_N1
\LOGICADOALARME|FFJK|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \config~combout\,
	datain => \LOGICADOALARME|FFJK|temp~0_combout\,
	aclr => \LOGICADOALARME|signalreset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LOGICADOALARME|FFJK|temp~regout\);

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
	padio => ww_start,
	combout => \start~combout\);

-- Location: LCCOMB_X27_Y35_N16
\comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~4\ = LCELL((\LOGICADOALARME|FFJK|temp~regout\ & (!\start~combout\ & \LOGICADOALARME|signalcont~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADOALARME|FFJK|temp~regout\,
	datac => \start~combout\,
	datad => \LOGICADOALARME|signalcont~regout\,
	combout => \comb~4\);

-- Location: CLKCTRL_G0
\comb~4clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~4clkctrl_outclk\);

-- Location: LCCOMB_X31_Y35_N24
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

-- Location: CLKCTRL_G11
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

-- Location: LCFF_X31_Y35_N25
\MIN0A9|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~4clkctrl_outclk\,
	datain => \MIN0A9|contagem[0]~3_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A9|contagem\(0));

-- Location: LCCOMB_X31_Y35_N16
\MIN0A9|contagem[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A9|contagem[2]~1_combout\ = \MIN0A9|contagem\(2) $ (((\MIN0A9|contagem\(1) & \MIN0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MIN0A9|contagem\(1),
	datac => \MIN0A9|contagem\(2),
	datad => \MIN0A9|contagem\(0),
	combout => \MIN0A9|contagem[2]~1_combout\);

-- Location: LCFF_X31_Y35_N17
\MIN0A9|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~4clkctrl_outclk\,
	datain => \MIN0A9|contagem[2]~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A9|contagem\(2));

-- Location: LCCOMB_X31_Y35_N10
\MIN0A9|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A9|contagem~0_combout\ = (\MIN0A9|contagem\(1) & (((!\MIN0A9|contagem\(0))))) # (!\MIN0A9|contagem\(1) & (\MIN0A9|contagem\(0) & ((\MIN0A9|contagem\(2)) # (!\MIN0A9|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(3),
	datab => \MIN0A9|contagem\(2),
	datac => \MIN0A9|contagem\(1),
	datad => \MIN0A9|contagem\(0),
	combout => \MIN0A9|contagem~0_combout\);

-- Location: LCFF_X31_Y35_N11
\MIN0A9|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~4clkctrl_outclk\,
	datain => \MIN0A9|contagem~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A9|contagem\(1));

-- Location: LCCOMB_X31_Y35_N22
\MIN0A9|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A9|contagem~2_combout\ = (\MIN0A9|contagem\(2) & (\MIN0A9|contagem\(3) $ (((\MIN0A9|contagem\(1) & \MIN0A9|contagem\(0)))))) # (!\MIN0A9|contagem\(2) & (\MIN0A9|contagem\(3) & ((\MIN0A9|contagem\(1)) # (!\MIN0A9|contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(2),
	datab => \MIN0A9|contagem\(1),
	datac => \MIN0A9|contagem\(3),
	datad => \MIN0A9|contagem\(0),
	combout => \MIN0A9|contagem~2_combout\);

-- Location: LCFF_X31_Y35_N23
\MIN0A9|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~4clkctrl_outclk\,
	datain => \MIN0A9|contagem~2_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A9|contagem\(3));

-- Location: LCCOMB_X31_Y35_N30
\MIN0A9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A9|Equal0~0_combout\ = (!\MIN0A9|contagem\(2) & (\MIN0A9|contagem\(3) & (\MIN0A9|contagem\(0) & !\MIN0A9|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(2),
	datab => \MIN0A9|contagem\(3),
	datac => \MIN0A9|contagem\(0),
	datad => \MIN0A9|contagem\(1),
	combout => \MIN0A9|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y35_N20
\MIN0A9|tc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A9|tc~0_combout\ = (\reset~combout\ & ((\MIN0A9|Equal0~0_combout\))) # (!\reset~combout\ & (\MIN0A9|tc~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \MIN0A9|tc~regout\,
	datad => \MIN0A9|Equal0~0_combout\,
	combout => \MIN0A9|tc~0_combout\);

-- Location: LCFF_X31_Y35_N21
\MIN0A9|tc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~4clkctrl_outclk\,
	datain => \MIN0A9|tc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A9|tc~regout\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X23_Y35_N0
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

-- Location: LCFF_X23_Y35_N1
\MIN0A5|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \MIN0A9|tc~clkctrl_outclk\,
	datain => \MIN0A5|contagem[0]~2_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A5|contagem\(0));

-- Location: LCCOMB_X23_Y35_N26
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

-- Location: LCFF_X23_Y35_N27
\MIN0A5|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \MIN0A9|tc~clkctrl_outclk\,
	datain => \MIN0A5|contagem~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A5|contagem\(1));

-- Location: LCCOMB_X23_Y35_N12
\MIN0A5|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MIN0A5|contagem~1_combout\ = (\MIN0A5|contagem\(2) & ((!\MIN0A5|contagem\(0)))) # (!\MIN0A5|contagem\(2) & (\MIN0A5|contagem\(1) & \MIN0A5|contagem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(2),
	datad => \MIN0A5|contagem\(0),
	combout => \MIN0A5|contagem~1_combout\);

-- Location: LCFF_X23_Y35_N13
\MIN0A5|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \MIN0A9|tc~clkctrl_outclk\,
	datain => \MIN0A5|contagem~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MIN0A5|contagem\(2));

-- Location: LCCOMB_X27_Y35_N26
comb : cycloneii_lcell_comb
-- Equation(s):
-- \comb~combout\ = LCELL((\LOGICADOALARME|FFJK|temp~regout\ & (!\start~combout\ & !\LOGICADOALARME|signalcont~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADOALARME|FFJK|temp~regout\,
	datac => \start~combout\,
	datad => \LOGICADOALARME|signalcont~regout\,
	combout => \comb~combout\);

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X30_Y35_N14
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

-- Location: LCCOMB_X30_Y35_N6
\HR0A2|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A2|contagem~0_combout\ = (!\HR0A2|contagem\(0) & !\HR0A2|contagem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HR0A2|contagem\(0),
	datad => \HR0A2|contagem\(1),
	combout => \HR0A2|contagem~0_combout\);

-- Location: LCFF_X30_Y35_N7
\HR0A2|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \HR0A9|tc~clkctrl_outclk\,
	datain => \HR0A2|contagem~0_combout\,
	aclr => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A2|contagem\(0));

-- Location: LCCOMB_X30_Y35_N22
\HR0A2|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A2|contagem~1_combout\ = (!\HR0A2|contagem\(1) & \HR0A2|contagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HR0A2|contagem\(1),
	datad => \HR0A2|contagem\(0),
	combout => \HR0A2|contagem~1_combout\);

-- Location: LCFF_X30_Y35_N23
\HR0A2|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \HR0A9|tc~clkctrl_outclk\,
	datain => \HR0A2|contagem~1_combout\,
	aclr => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A2|contagem\(1));

-- Location: LCCOMB_X30_Y35_N16
\HR0A9|contagem[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|contagem[2]~1_combout\ = \HR0A9|contagem\(2) $ (((\HR0A9|contagem\(1) & \HR0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(1),
	datac => \HR0A9|contagem\(2),
	datad => \HR0A9|contagem\(0),
	combout => \HR0A9|contagem[2]~1_combout\);

-- Location: LCFF_X30_Y35_N17
\HR0A9|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~clkctrl_outclk\,
	datain => \HR0A9|contagem[2]~1_combout\,
	aclr => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A9|contagem\(2));

-- Location: LCCOMB_X30_Y35_N26
\HR0A9|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|contagem~0_combout\ = (\HR0A9|contagem\(1) & (((!\HR0A9|contagem\(0))))) # (!\HR0A9|contagem\(1) & (\HR0A9|contagem\(0) & ((\HR0A9|contagem\(2)) # (!\HR0A9|contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A9|contagem\(2),
	datab => \HR0A9|contagem\(3),
	datac => \HR0A9|contagem\(1),
	datad => \HR0A9|contagem\(0),
	combout => \HR0A9|contagem~0_combout\);

-- Location: LCFF_X30_Y35_N27
\HR0A9|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~clkctrl_outclk\,
	datain => \HR0A9|contagem~0_combout\,
	aclr => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A9|contagem\(1));

-- Location: LCCOMB_X30_Y35_N24
\HR0A9|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \HR0A9|contagem~2_combout\ = (\HR0A9|contagem\(2) & (\HR0A9|contagem\(3) $ (((\HR0A9|contagem\(1) & \HR0A9|contagem\(0)))))) # (!\HR0A9|contagem\(2) & (\HR0A9|contagem\(3) & ((\HR0A9|contagem\(1)) # (!\HR0A9|contagem\(0)))))

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
	combout => \HR0A9|contagem~2_combout\);

-- Location: LCFF_X30_Y35_N25
\HR0A9|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~clkctrl_outclk\,
	datain => \HR0A9|contagem~2_combout\,
	aclr => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A9|contagem\(3));

-- Location: LCCOMB_X30_Y35_N18
\SignalResetHora~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SignalResetHora~0_combout\ = (!\HR0A2|contagem\(0) & (!\HR0A9|contagem\(0) & (!\HR0A9|contagem\(3) & !\HR0A9|contagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A2|contagem\(0),
	datab => \HR0A9|contagem\(0),
	datac => \HR0A9|contagem\(3),
	datad => \HR0A9|contagem\(1),
	combout => \SignalResetHora~0_combout\);

-- Location: LCCOMB_X30_Y35_N8
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ((\HR0A2|contagem\(1) & (\HR0A9|contagem\(2) & \SignalResetHora~0_combout\))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \HR0A2|contagem\(1),
	datac => \HR0A9|contagem\(2),
	datad => \SignalResetHora~0_combout\,
	combout => \comb~0_combout\);

-- Location: LCFF_X30_Y35_N15
\HR0A9|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \comb~clkctrl_outclk\,
	datain => \HR0A9|contagem[0]~3_combout\,
	aclr => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HR0A9|contagem\(0));

-- Location: LCCOMB_X23_Y35_N2
\Ativado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ativado~1_combout\ = (\MIN0A5|contagem\(2)) # ((\MIN0A5|contagem\(1)) # ((\MIN0A5|contagem\(0)) # (\HR0A9|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A5|contagem\(2),
	datab => \MIN0A5|contagem\(1),
	datac => \MIN0A5|contagem\(0),
	datad => \HR0A9|contagem\(2),
	combout => \Ativado~1_combout\);

-- Location: LCCOMB_X31_Y35_N18
\Ativado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ativado~0_combout\ = (\MIN0A9|contagem\(1)) # ((\MIN0A9|contagem\(2)) # ((\MIN0A9|contagem\(3)) # (\MIN0A9|contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MIN0A9|contagem\(1),
	datab => \MIN0A9|contagem\(2),
	datac => \MIN0A9|contagem\(3),
	datad => \MIN0A9|contagem\(0),
	combout => \Ativado~0_combout\);

-- Location: LCCOMB_X30_Y35_N28
\Ativado~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ativado~2_combout\ = (\HR0A2|contagem\(1)) # ((\Ativado~1_combout\) # ((\Ativado~0_combout\) # (!\SignalResetHora~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HR0A2|contagem\(1),
	datab => \Ativado~1_combout\,
	datac => \SignalResetHora~0_combout\,
	datad => \Ativado~0_combout\,
	combout => \Ativado~2_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MIN0A9|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(0));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MIN0A9|contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MIN0A9|contagem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MIN0A9|contagem\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos1(3));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MIN0A5|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MIN0A5|contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \MIN0A5|contagem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Minutos2(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \HR0A9|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(0));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \HR0A9|contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(1));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \HR0A9|contagem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(2));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \HR0A9|contagem\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas1(3));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \HR0A2|contagem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(0));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \HR0A2|contagem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(1));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(2));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Horas2(3));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Ativado~I\ : cycloneii_io
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
	datain => \ALT_INV_Ativado~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Ativado);
END structure;


