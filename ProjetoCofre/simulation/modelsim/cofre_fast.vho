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

-- DATE "04/26/2018 16:05:46"

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

ENTITY 	cofre IS
    PORT (
	entrada : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	cs : IN std_logic;
	clk : IN std_logic;
	bloq : OUT std_logic;
	abre : OUT std_logic;
	modo : OUT std_logic
	);
END cofre;

-- Design Ports Information
-- bloq	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- abre	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- modo	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cs	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cofre IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_bloq : std_logic;
SIGNAL ww_abre : std_logic;
SIGNAL ww_modo : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \cs~combout\ : std_logic;
SIGNAL \FFD3|QSignal~regout\ : std_logic;
SIGNAL \FFD2|QSignal~feeder_combout\ : std_logic;
SIGNAL \FFD2|QSignal~regout\ : std_logic;
SIGNAL \QXNOResult~1_combout\ : std_logic;
SIGNAL \FFD1|QSignal~regout\ : std_logic;
SIGNAL \FFD0|QSignal~feeder_combout\ : std_logic;
SIGNAL \FFD0|QSignal~regout\ : std_logic;
SIGNAL \QXNOResult~0_combout\ : std_logic;
SIGNAL \FFD6|QSignal~feeder_combout\ : std_logic;
SIGNAL \FFD6|QSignal~regout\ : std_logic;
SIGNAL \FFD7|QSignal~regout\ : std_logic;
SIGNAL \FFD5|QSignal~regout\ : std_logic;
SIGNAL \FFD4|QSignal~feeder_combout\ : std_logic;
SIGNAL \FFD4|QSignal~regout\ : std_logic;
SIGNAL \QXNOResult~2_combout\ : std_logic;
SIGNAL \QXNOResult~3_combout\ : std_logic;
SIGNAL \QXNOResult~combout\ : std_logic;
SIGNAL \FFDM0|QSignal~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \FFDM0|QSignal~regout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \FFD8|QSignal~regout\ : std_logic;
SIGNAL QXNOR : std_logic_vector(7 DOWNTO 0);
SIGNAL \entrada~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \ALT_INV_cs~combout\ : std_logic;
SIGNAL \FFD8|ALT_INV_QSignal~regout\ : std_logic;

BEGIN

ww_entrada <= entrada;
ww_reset <= reset;
ww_cs <= cs;
ww_clk <= clk;
bloq <= ww_bloq;
abre <= ww_abre;
modo <= ww_modo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~clk_delay_ctrl_clkout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\ALT_INV_cs~combout\ <= NOT \cs~combout\;
\FFD8|ALT_INV_QSignal~regout\ <= NOT \FFD8|QSignal~regout\;

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKDELAYCTRL_G7
\clk~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \clk~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[2]~I\ : cycloneii_io
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
	padio => ww_entrada(2),
	combout => \entrada~combout\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[3]~I\ : cycloneii_io
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
	padio => ww_entrada(3),
	combout => \entrada~combout\(3));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cs~I\ : cycloneii_io
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
	padio => ww_cs,
	combout => \cs~combout\);

-- Location: LCFF_X57_Y5_N23
\FFD3|QSignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entrada~combout\(3),
	aclr => \FFDM0|QSignal~regout\,
	sload => VCC,
	ena => \ALT_INV_cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFD3|QSignal~regout\);

-- Location: LCCOMB_X57_Y5_N12
\FFD2|QSignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FFD2|QSignal~feeder_combout\ = \entrada~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entrada~combout\(2),
	combout => \FFD2|QSignal~feeder_combout\);

-- Location: LCFF_X57_Y5_N13
\FFD2|QSignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FFD2|QSignal~feeder_combout\,
	aclr => \FFDM0|QSignal~regout\,
	ena => \ALT_INV_cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFD2|QSignal~regout\);

-- Location: LCCOMB_X57_Y5_N22
\QXNOResult~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \QXNOResult~1_combout\ = (\entrada~combout\(3) & (\FFD3|QSignal~regout\ & (\entrada~combout\(2) $ (!\FFD2|QSignal~regout\)))) # (!\entrada~combout\(3) & (!\FFD3|QSignal~regout\ & (\entrada~combout\(2) $ (!\FFD2|QSignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(3),
	datab => \entrada~combout\(2),
	datac => \FFD3|QSignal~regout\,
	datad => \FFD2|QSignal~regout\,
	combout => \QXNOResult~1_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[1]~I\ : cycloneii_io
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
	padio => ww_entrada(1),
	combout => \entrada~combout\(1));

-- Location: LCFF_X57_Y5_N15
\FFD1|QSignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entrada~combout\(1),
	aclr => \FFDM0|QSignal~regout\,
	sload => VCC,
	ena => \ALT_INV_cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFD1|QSignal~regout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[0]~I\ : cycloneii_io
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
	padio => ww_entrada(0),
	combout => \entrada~combout\(0));

-- Location: LCCOMB_X57_Y5_N16
\FFD0|QSignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FFD0|QSignal~feeder_combout\ = \entrada~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entrada~combout\(0),
	combout => \FFD0|QSignal~feeder_combout\);

-- Location: LCFF_X57_Y5_N17
\FFD0|QSignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FFD0|QSignal~feeder_combout\,
	aclr => \FFDM0|QSignal~regout\,
	ena => \ALT_INV_cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFD0|QSignal~regout\);

-- Location: LCCOMB_X57_Y5_N14
\QXNOResult~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \QXNOResult~0_combout\ = (\entrada~combout\(0) & (\FFD0|QSignal~regout\ & (\entrada~combout\(1) $ (!\FFD1|QSignal~regout\)))) # (!\entrada~combout\(0) & (!\FFD0|QSignal~regout\ & (\entrada~combout\(1) $ (!\FFD1|QSignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(0),
	datab => \entrada~combout\(1),
	datac => \FFD1|QSignal~regout\,
	datad => \FFD0|QSignal~regout\,
	combout => \QXNOResult~0_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[6]~I\ : cycloneii_io
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
	padio => ww_entrada(6),
	combout => \entrada~combout\(6));

-- Location: LCCOMB_X57_Y5_N18
\FFD6|QSignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FFD6|QSignal~feeder_combout\ = \entrada~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entrada~combout\(6),
	combout => \FFD6|QSignal~feeder_combout\);

-- Location: LCFF_X57_Y5_N19
\FFD6|QSignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FFD6|QSignal~feeder_combout\,
	aclr => \FFDM0|QSignal~regout\,
	ena => \ALT_INV_cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFD6|QSignal~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[7]~I\ : cycloneii_io
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
	padio => ww_entrada(7),
	combout => \entrada~combout\(7));

-- Location: LCFF_X57_Y5_N25
\FFD7|QSignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entrada~combout\(7),
	aclr => \FFDM0|QSignal~regout\,
	sload => VCC,
	ena => \ALT_INV_cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFD7|QSignal~regout\);

-- Location: LCCOMB_X57_Y5_N24
\QXNOR[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- QXNOR(7) = \entrada~combout\(7) $ (\FFD7|QSignal~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(7),
	datac => \FFD7|QSignal~regout\,
	combout => QXNOR(7));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[4]~I\ : cycloneii_io
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
	padio => ww_entrada(4),
	combout => \entrada~combout\(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[5]~I\ : cycloneii_io
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
	padio => ww_entrada(5),
	combout => \entrada~combout\(5));

-- Location: LCFF_X57_Y5_N11
\FFD5|QSignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entrada~combout\(5),
	aclr => \FFDM0|QSignal~regout\,
	sload => VCC,
	ena => \ALT_INV_cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFD5|QSignal~regout\);

-- Location: LCCOMB_X57_Y5_N28
\FFD4|QSignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FFD4|QSignal~feeder_combout\ = \entrada~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entrada~combout\(4),
	combout => \FFD4|QSignal~feeder_combout\);

-- Location: LCFF_X57_Y5_N29
\FFD4|QSignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FFD4|QSignal~feeder_combout\,
	aclr => \FFDM0|QSignal~regout\,
	ena => \ALT_INV_cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFD4|QSignal~regout\);

-- Location: LCCOMB_X57_Y5_N10
\QXNOResult~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \QXNOResult~2_combout\ = (\entrada~combout\(5) & (\FFD5|QSignal~regout\ & (\entrada~combout\(4) $ (!\FFD4|QSignal~regout\)))) # (!\entrada~combout\(5) & (!\FFD5|QSignal~regout\ & (\entrada~combout\(4) $ (!\FFD4|QSignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(5),
	datab => \entrada~combout\(4),
	datac => \FFD5|QSignal~regout\,
	datad => \FFD4|QSignal~regout\,
	combout => \QXNOResult~2_combout\);

-- Location: LCCOMB_X57_Y5_N26
\QXNOResult~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \QXNOResult~3_combout\ = (!QXNOR(7) & (\QXNOResult~2_combout\ & (\entrada~combout\(6) $ (!\FFD6|QSignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(6),
	datab => \FFD6|QSignal~regout\,
	datac => QXNOR(7),
	datad => \QXNOResult~2_combout\,
	combout => \QXNOResult~3_combout\);

-- Location: LCCOMB_X57_Y5_N20
QXNOResult : cycloneii_lcell_comb
-- Equation(s):
-- \QXNOResult~combout\ = (!\FFDM0|QSignal~regout\ & (\QXNOResult~1_combout\ & (\QXNOResult~0_combout\ & \QXNOResult~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FFDM0|QSignal~regout\,
	datab => \QXNOResult~1_combout\,
	datac => \QXNOResult~0_combout\,
	datad => \QXNOResult~3_combout\,
	combout => \QXNOResult~combout\);

-- Location: LCCOMB_X57_Y5_N0
\FFDM0|QSignal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FFDM0|QSignal~0_combout\ = !\QXNOResult~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \QXNOResult~combout\,
	combout => \FFDM0|QSignal~0_combout\);

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

-- Location: LCFF_X57_Y5_N1
\FFDM0|QSignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FFDM0|QSignal~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFDM0|QSignal~regout\);

-- Location: LCCOMB_X58_Y5_N16
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\FFD8|QSignal~regout\ & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FFD8|QSignal~regout\,
	datad => \reset~combout\,
	combout => \comb~0_combout\);

-- Location: LCFF_X58_Y5_N17
\FFD8|QSignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \QXNOResult~combout\,
	aclr => \comb~0_combout\,
	sload => VCC,
	ena => \cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FFD8|QSignal~regout\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bloq~I\ : cycloneii_io
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
	datain => \FFDM0|QSignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bloq);

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\abre~I\ : cycloneii_io
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
	datain => \FFD8|ALT_INV_QSignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_abre);

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\modo~I\ : cycloneii_io
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
	datain => \cs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_modo);
END structure;


