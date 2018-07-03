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

-- DATE "07/03/2018 10:25:05"

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

ENTITY 	cpu IS
    PORT (
	rst : IN std_logic;
	start : IN std_logic;
	clock : IN std_logic;
	output : OUT std_logic_vector(3 DOWNTO 0);
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	op0 : OUT std_logic_vector(6 DOWNTO 0);
	op1 : OUT std_logic_vector(6 DOWNTO 0);
	op2 : OUT std_logic_vector(6 DOWNTO 0);
	op3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- output[0]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led1[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led1[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led1[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led1[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led1[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led1[5]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led1[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2[4]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2[5]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op0[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op0[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op0[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op0[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op0[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op0[6]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op1[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op1[1]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op1[2]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op1[4]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op1[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op1[6]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op2[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op2[1]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op2[2]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op2[4]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op2[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op2[6]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op3[0]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op3[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op3[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op3[4]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op3[5]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op3[6]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rst	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_op0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_op1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_op2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_op3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \datapath|alu1|Mux8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Divfreq|estado~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Divfreq|Add0~2_combout\ : std_logic;
SIGNAL \Divfreq|Add0~8_combout\ : std_logic;
SIGNAL \Divfreq|Add0~12_combout\ : std_logic;
SIGNAL \Divfreq|Add0~16_combout\ : std_logic;
SIGNAL \Divfreq|Add0~30_combout\ : std_logic;
SIGNAL \Divfreq|Add0~36_combout\ : std_logic;
SIGNAL \Divfreq|Add0~40_combout\ : std_logic;
SIGNAL \Divfreq|Equal0~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~0_combout\ : std_logic;
SIGNAL \datapath|BR|Mux39~0_combout\ : std_logic;
SIGNAL \datapath|BR|Mux39~1_combout\ : std_logic;
SIGNAL \controller|Selector34~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|BR|out2[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|BR|out3[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|BR|out1[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|BR|out2[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|BR|out3[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|BR|out2[3]~feeder_combout\ : std_logic;
SIGNAL \Divfreq|Equal0~2_combout\ : std_logic;
SIGNAL \Divfreq|Equal0~3_combout\ : std_logic;
SIGNAL \Divfreq|Add0~4_combout\ : std_logic;
SIGNAL \Divfreq|Equal0~0_combout\ : std_logic;
SIGNAL \Divfreq|Equal0~4_combout\ : std_logic;
SIGNAL \Divfreq|Add0~34_combout\ : std_logic;
SIGNAL \Divfreq|Equal0~5_combout\ : std_logic;
SIGNAL \Divfreq|contagem~0_combout\ : std_logic;
SIGNAL \Divfreq|Add0~0_combout\ : std_logic;
SIGNAL \Divfreq|contagem[0]~1_combout\ : std_logic;
SIGNAL \Divfreq|Add0~1\ : std_logic;
SIGNAL \Divfreq|Add0~3\ : std_logic;
SIGNAL \Divfreq|Add0~5\ : std_logic;
SIGNAL \Divfreq|Add0~6_combout\ : std_logic;
SIGNAL \Divfreq|Add0~7\ : std_logic;
SIGNAL \Divfreq|Add0~9\ : std_logic;
SIGNAL \Divfreq|Add0~10_combout\ : std_logic;
SIGNAL \Divfreq|Add0~11\ : std_logic;
SIGNAL \Divfreq|Add0~13\ : std_logic;
SIGNAL \Divfreq|Add0~14_combout\ : std_logic;
SIGNAL \Divfreq|Add0~15\ : std_logic;
SIGNAL \Divfreq|Add0~17\ : std_logic;
SIGNAL \Divfreq|Add0~18_combout\ : std_logic;
SIGNAL \Divfreq|Add0~19\ : std_logic;
SIGNAL \Divfreq|Add0~20_combout\ : std_logic;
SIGNAL \Divfreq|Add0~21\ : std_logic;
SIGNAL \Divfreq|Add0~22_combout\ : std_logic;
SIGNAL \Divfreq|Add0~23\ : std_logic;
SIGNAL \Divfreq|Add0~24_combout\ : std_logic;
SIGNAL \Divfreq|Add0~25\ : std_logic;
SIGNAL \Divfreq|Add0~26_combout\ : std_logic;
SIGNAL \Divfreq|Add0~27\ : std_logic;
SIGNAL \Divfreq|Add0~28_combout\ : std_logic;
SIGNAL \Divfreq|Add0~29\ : std_logic;
SIGNAL \Divfreq|Add0~31\ : std_logic;
SIGNAL \Divfreq|Add0~32_combout\ : std_logic;
SIGNAL \Divfreq|Add0~33\ : std_logic;
SIGNAL \Divfreq|Add0~35\ : std_logic;
SIGNAL \Divfreq|Add0~37\ : std_logic;
SIGNAL \Divfreq|Add0~38_combout\ : std_logic;
SIGNAL \Divfreq|Add0~39\ : std_logic;
SIGNAL \Divfreq|Add0~41\ : std_logic;
SIGNAL \Divfreq|Add0~42_combout\ : std_logic;
SIGNAL \Divfreq|Add0~43\ : std_logic;
SIGNAL \Divfreq|Add0~44_combout\ : std_logic;
SIGNAL \Divfreq|Add0~45\ : std_logic;
SIGNAL \Divfreq|Add0~46_combout\ : std_logic;
SIGNAL \Divfreq|Equal0~6_combout\ : std_logic;
SIGNAL \Divfreq|estado~0_combout\ : std_logic;
SIGNAL \Divfreq|estado~regout\ : std_logic;
SIGNAL \Divfreq|estado~clkctrl_outclk\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \controller|state.s0~0_combout\ : std_logic;
SIGNAL \controller|state.s0~regout\ : std_logic;
SIGNAL \controller|Add0~3\ : std_logic;
SIGNAL \controller|Add0~5_combout\ : std_logic;
SIGNAL \controller|Add0~7_combout\ : std_logic;
SIGNAL \controller|Mux5~0_combout\ : std_logic;
SIGNAL \controller|state.s3~regout\ : std_logic;
SIGNAL \controller|Add0~6\ : std_logic;
SIGNAL \controller|Add0~8_combout\ : std_logic;
SIGNAL \controller|Add0~10_combout\ : std_logic;
SIGNAL \controller|Mux4~0_combout\ : std_logic;
SIGNAL \controller|Mux0~0_combout\ : std_logic;
SIGNAL \controller|Mux1~0_combout\ : std_logic;
SIGNAL \controller|Selector37~1_combout\ : std_logic;
SIGNAL \controller|Selector40~0_combout\ : std_logic;
SIGNAL \controller|state.s1~regout\ : std_logic;
SIGNAL \controller|state.s2~regout\ : std_logic;
SIGNAL \controller|Mux3~0_combout\ : std_logic;
SIGNAL \controller|Mux50~0_combout\ : std_logic;
SIGNAL \controller|PC[2]~0_combout\ : std_logic;
SIGNAL \controller|Add0~0_combout\ : std_logic;
SIGNAL \controller|Mux7~0_combout\ : std_logic;
SIGNAL \controller|Selector35~0_combout\ : std_logic;
SIGNAL \controller|Selector31~0_combout\ : std_logic;
SIGNAL \controller|Selector31~1_combout\ : std_logic;
SIGNAL \controller|Add0~1\ : std_logic;
SIGNAL \controller|Add0~2_combout\ : std_logic;
SIGNAL \controller|Add0~4_combout\ : std_logic;
SIGNAL \controller|Mux6~0_combout\ : std_logic;
SIGNAL \controller|Mux2~0_combout\ : std_logic;
SIGNAL \controller|Mux12~0_combout\ : std_logic;
SIGNAL \controller|enb_acc~0_combout\ : std_logic;
SIGNAL \controller|enb_acc~1_combout\ : std_logic;
SIGNAL \controller|enb_acc~regout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \controller|Selector38~0_combout\ : std_logic;
SIGNAL \controller|Mux19~0_combout\ : std_logic;
SIGNAL \controller|state.s4~regout\ : std_logic;
SIGNAL \controller|state.s5~regout\ : std_logic;
SIGNAL \controller|state.s6~regout\ : std_logic;
SIGNAL \controller|Selector39~0_combout\ : std_logic;
SIGNAL \controller|Selector39~1_combout\ : std_logic;
SIGNAL \controller|Selector41~0_combout\ : std_logic;
SIGNAL \controller|state.done~0_combout\ : std_logic;
SIGNAL \controller|state.done~regout\ : std_logic;
SIGNAL \controller|Selector38~1_combout\ : std_logic;
SIGNAL \controller|Selector38~2_combout\ : std_logic;
SIGNAL \datapath|ACU|temp[0]~0_combout\ : std_logic;
SIGNAL \controller|Selector37~0_combout\ : std_logic;
SIGNAL \controller|Selector37~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux8~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux8~0clkctrl_outclk\ : std_logic;
SIGNAL \controller|out_op[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux5~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux5~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux5~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~2_cout\ : std_logic;
SIGNAL \datapath|alu1|Add0~3_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~3_combout\ : std_logic;
SIGNAL \datapath|ACU|output~0_combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|ACU|Mux3~0_combout\ : std_logic;
SIGNAL \output[0]~reg0feeder_combout\ : std_logic;
SIGNAL \output[0]~reg0_regout\ : std_logic;
SIGNAL \datapath|BR|out1[1]~feeder_combout\ : std_logic;
SIGNAL \controller|Selector32~0_combout\ : std_logic;
SIGNAL \controller|Selector35~1_combout\ : std_logic;
SIGNAL \controller|Selector33~0_combout\ : std_logic;
SIGNAL \controller|Mux13~0_combout\ : std_logic;
SIGNAL \controller|enb_br~regout\ : std_logic;
SIGNAL \datapath|BR|out1[0]~0_combout\ : std_logic;
SIGNAL \datapath|BR|out0[3]~1_combout\ : std_logic;
SIGNAL \datapath|BR|out0[3]~0_combout\ : std_logic;
SIGNAL \datapath|BR|out2[2]~0_combout\ : std_logic;
SIGNAL \datapath|BR|Mux38~0_combout\ : std_logic;
SIGNAL \datapath|BR|Mux38~1_combout\ : std_logic;
SIGNAL \datapath|BR|output[0]~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux7~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~5_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~4\ : std_logic;
SIGNAL \datapath|alu1|Add0~6_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux7~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux7~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux7~3_combout\ : std_logic;
SIGNAL \datapath|ACU|output~1_combout\ : std_logic;
SIGNAL \output[1]~reg0feeder_combout\ : std_logic;
SIGNAL \output[1]~reg0_regout\ : std_logic;
SIGNAL \datapath|alu1|Mux6~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux6~1_combout\ : std_logic;
SIGNAL \datapath|BR|out3[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|BR|out3[0]~0_combout\ : std_logic;
SIGNAL \datapath|BR|out1[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|BR|Mux37~0_combout\ : std_logic;
SIGNAL \datapath|BR|Mux37~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~8_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~7\ : std_logic;
SIGNAL \datapath|alu1|Add0~9_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux6~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux6~3_combout\ : std_logic;
SIGNAL \datapath|ACU|output~2_combout\ : std_logic;
SIGNAL \output[2]~reg0feeder_combout\ : std_logic;
SIGNAL \output[2]~reg0_regout\ : std_logic;
SIGNAL \datapath|BR|Mux36~0_combout\ : std_logic;
SIGNAL \datapath|BR|out1[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|BR|Mux36~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux5~3_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~11_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~10\ : std_logic;
SIGNAL \datapath|alu1|Add0~12_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux5~4_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux5~5_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux5~6_combout\ : std_logic;
SIGNAL \datapath|ACU|output~3_combout\ : std_logic;
SIGNAL \output[3]~reg0feeder_combout\ : std_logic;
SIGNAL \output[3]~reg0_regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \led1[0]~reg0_regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \led1[1]~reg0_regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \led1[2]~reg0_regout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \led1[3]~reg0_regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \led1[4]~reg0_regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \led1[5]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \led1[6]~reg0_regout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \led2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \led2[1]~reg0_regout\ : std_logic;
SIGNAL \led2[2]~reg0feeder_combout\ : std_logic;
SIGNAL \led2[2]~reg0_regout\ : std_logic;
SIGNAL \led2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \led2[3]~reg0_regout\ : std_logic;
SIGNAL \led2[6]~reg0_regout\ : std_logic;
SIGNAL \op0[1]~reg0feeder_combout\ : std_logic;
SIGNAL \op0[1]~reg0_regout\ : std_logic;
SIGNAL \op0[2]~reg0feeder_combout\ : std_logic;
SIGNAL \op0[2]~reg0_regout\ : std_logic;
SIGNAL \op0[3]~reg0feeder_combout\ : std_logic;
SIGNAL \op0[3]~reg0_regout\ : std_logic;
SIGNAL \op0[6]~reg0feeder_combout\ : std_logic;
SIGNAL \op0[6]~reg0_regout\ : std_logic;
SIGNAL \op1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \op1[1]~reg0_regout\ : std_logic;
SIGNAL \op1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \op1[2]~reg0_regout\ : std_logic;
SIGNAL \op1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \op1[3]~reg0_regout\ : std_logic;
SIGNAL \op1[6]~reg0feeder_combout\ : std_logic;
SIGNAL \op1[6]~reg0_regout\ : std_logic;
SIGNAL \op2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \op2[1]~reg0_regout\ : std_logic;
SIGNAL \op2[2]~reg0feeder_combout\ : std_logic;
SIGNAL \op2[2]~reg0_regout\ : std_logic;
SIGNAL \op2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \op2[3]~reg0_regout\ : std_logic;
SIGNAL \op2[6]~reg0feeder_combout\ : std_logic;
SIGNAL \op2[6]~reg0_regout\ : std_logic;
SIGNAL \op3[1]~reg0feeder_combout\ : std_logic;
SIGNAL \op3[1]~reg0_regout\ : std_logic;
SIGNAL \op3[2]~reg0feeder_combout\ : std_logic;
SIGNAL \op3[2]~reg0_regout\ : std_logic;
SIGNAL \op3[3]~reg0feeder_combout\ : std_logic;
SIGNAL \op3[3]~reg0_regout\ : std_logic;
SIGNAL \op3[6]~reg0feeder_combout\ : std_logic;
SIGNAL \op3[6]~reg0_regout\ : std_logic;
SIGNAL \controller|out_op\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|imm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|atv\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \controller|OPCODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|ADDRESS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|BR|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|BR|out3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|BR|out2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|BR|out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|BR|out0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|alu1|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|ACU|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|ACU|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Divfreq|contagem\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \controller|ALT_INV_state.s3~regout\ : std_logic;
SIGNAL \ALT_INV_clock~clkctrl_outclk\ : std_logic;

BEGIN

ww_rst <= rst;
ww_start <= start;
ww_clock <= clock;
output <= ww_output;
led1 <= ww_led1;
led2 <= ww_led2;
op0 <= ww_op0;
op1 <= ww_op1;
op2 <= ww_op2;
op3 <= ww_op3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\datapath|alu1|Mux8~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \datapath|alu1|Mux8~0_combout\);

\Divfreq|estado~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Divfreq|estado~regout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\controller|ALT_INV_state.s3~regout\ <= NOT \controller|state.s3~regout\;
\ALT_INV_clock~clkctrl_outclk\ <= NOT \clock~clkctrl_outclk\;

-- Location: LCCOMB_X41_Y7_N10
\Divfreq|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~2_combout\ = (\Divfreq|contagem\(1) & (!\Divfreq|Add0~1\)) # (!\Divfreq|contagem\(1) & ((\Divfreq|Add0~1\) # (GND)))
-- \Divfreq|Add0~3\ = CARRY((!\Divfreq|Add0~1\) # (!\Divfreq|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(1),
	datad => VCC,
	cin => \Divfreq|Add0~1\,
	combout => \Divfreq|Add0~2_combout\,
	cout => \Divfreq|Add0~3\);

-- Location: LCCOMB_X41_Y7_N16
\Divfreq|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~8_combout\ = (\Divfreq|contagem\(4) & (\Divfreq|Add0~7\ $ (GND))) # (!\Divfreq|contagem\(4) & (!\Divfreq|Add0~7\ & VCC))
-- \Divfreq|Add0~9\ = CARRY((\Divfreq|contagem\(4) & !\Divfreq|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(4),
	datad => VCC,
	cin => \Divfreq|Add0~7\,
	combout => \Divfreq|Add0~8_combout\,
	cout => \Divfreq|Add0~9\);

-- Location: LCCOMB_X41_Y7_N20
\Divfreq|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~12_combout\ = (\Divfreq|contagem\(6) & (\Divfreq|Add0~11\ $ (GND))) # (!\Divfreq|contagem\(6) & (!\Divfreq|Add0~11\ & VCC))
-- \Divfreq|Add0~13\ = CARRY((\Divfreq|contagem\(6) & !\Divfreq|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(6),
	datad => VCC,
	cin => \Divfreq|Add0~11\,
	combout => \Divfreq|Add0~12_combout\,
	cout => \Divfreq|Add0~13\);

-- Location: LCCOMB_X41_Y7_N24
\Divfreq|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~16_combout\ = (\Divfreq|contagem\(8) & (\Divfreq|Add0~15\ $ (GND))) # (!\Divfreq|contagem\(8) & (!\Divfreq|Add0~15\ & VCC))
-- \Divfreq|Add0~17\ = CARRY((\Divfreq|contagem\(8) & !\Divfreq|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(8),
	datad => VCC,
	cin => \Divfreq|Add0~15\,
	combout => \Divfreq|Add0~16_combout\,
	cout => \Divfreq|Add0~17\);

-- Location: LCCOMB_X41_Y6_N6
\Divfreq|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~30_combout\ = (\Divfreq|contagem\(15) & (!\Divfreq|Add0~29\)) # (!\Divfreq|contagem\(15) & ((\Divfreq|Add0~29\) # (GND)))
-- \Divfreq|Add0~31\ = CARRY((!\Divfreq|Add0~29\) # (!\Divfreq|contagem\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(15),
	datad => VCC,
	cin => \Divfreq|Add0~29\,
	combout => \Divfreq|Add0~30_combout\,
	cout => \Divfreq|Add0~31\);

-- Location: LCCOMB_X41_Y6_N12
\Divfreq|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~36_combout\ = (\Divfreq|contagem\(18) & (\Divfreq|Add0~35\ $ (GND))) # (!\Divfreq|contagem\(18) & (!\Divfreq|Add0~35\ & VCC))
-- \Divfreq|Add0~37\ = CARRY((\Divfreq|contagem\(18) & !\Divfreq|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(18),
	datad => VCC,
	cin => \Divfreq|Add0~35\,
	combout => \Divfreq|Add0~36_combout\,
	cout => \Divfreq|Add0~37\);

-- Location: LCCOMB_X41_Y6_N16
\Divfreq|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~40_combout\ = (\Divfreq|contagem\(20) & (\Divfreq|Add0~39\ $ (GND))) # (!\Divfreq|contagem\(20) & (!\Divfreq|Add0~39\ & VCC))
-- \Divfreq|Add0~41\ = CARRY((\Divfreq|contagem\(20) & !\Divfreq|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(20),
	datad => VCC,
	cin => \Divfreq|Add0~39\,
	combout => \Divfreq|Add0~40_combout\,
	cout => \Divfreq|Add0~41\);

-- Location: LCFF_X41_Y7_N17
\Divfreq|contagem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(4));

-- Location: LCFF_X41_Y7_N21
\Divfreq|contagem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(6));

-- Location: LCCOMB_X40_Y7_N20
\Divfreq|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Equal0~1_combout\ = (!\Divfreq|contagem\(4) & (!\Divfreq|contagem\(7) & (!\Divfreq|contagem\(6) & !\Divfreq|contagem\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(4),
	datab => \Divfreq|contagem\(7),
	datac => \Divfreq|contagem\(6),
	datad => \Divfreq|contagem\(5),
	combout => \Divfreq|Equal0~1_combout\);

-- Location: LCFF_X41_Y7_N25
\Divfreq|contagem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(8));

-- Location: LCFF_X41_Y6_N7
\Divfreq|contagem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(15));

-- Location: LCFF_X41_Y6_N13
\Divfreq|contagem[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(18));

-- Location: LCFF_X41_Y6_N17
\Divfreq|contagem[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(20));

-- Location: LCFF_X44_Y8_N13
\datapath|BR|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|Mux39~1_combout\,
	ena => \datapath|BR|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|output\(0));

-- Location: LCFF_X41_Y8_N21
\controller|imm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \controller|Selector35~0_combout\,
	sload => VCC,
	ena => \controller|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(0));

-- Location: LCCOMB_X45_Y8_N24
\datapath|alu1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~0_combout\ = \controller|out_op\(2) $ (\datapath|BR|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|out_op\(2),
	datad => \datapath|BR|output\(0),
	combout => \datapath|alu1|Add0~0_combout\);

-- Location: LCFF_X41_Y8_N29
\controller|imm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Selector34~0_combout\,
	ena => \controller|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(1));

-- Location: LCFF_X44_Y9_N17
\datapath|BR|out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|out2[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|BR|out2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out2\(0));

-- Location: LCFF_X44_Y7_N3
\datapath|BR|out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|out1[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|BR|out1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out1\(0));

-- Location: LCFF_X44_Y8_N9
\datapath|BR|out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \datapath|ACU|output\(0),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|BR|out0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out0\(0));

-- Location: LCCOMB_X44_Y8_N8
\datapath|BR|Mux39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|Mux39~0_combout\ = (\controller|imm\(2) & ((\datapath|BR|out1\(0)) # ((\controller|imm\(3))))) # (!\controller|imm\(2) & (((\datapath|BR|out0\(0) & !\controller|imm\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|out1\(0),
	datab => \controller|imm\(2),
	datac => \datapath|BR|out0\(0),
	datad => \controller|imm\(3),
	combout => \datapath|BR|Mux39~0_combout\);

-- Location: LCFF_X44_Y9_N19
\datapath|BR|out3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|out3[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|BR|out3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out3\(0));

-- Location: LCCOMB_X44_Y8_N12
\datapath|BR|Mux39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|Mux39~1_combout\ = (\controller|imm\(3) & ((\datapath|BR|Mux39~0_combout\ & ((\datapath|BR|out3\(0)))) # (!\datapath|BR|Mux39~0_combout\ & (\datapath|BR|out2\(0))))) # (!\controller|imm\(3) & (((\datapath|BR|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|out2\(0),
	datab => \controller|imm\(3),
	datac => \datapath|BR|out3\(0),
	datad => \datapath|BR|Mux39~0_combout\,
	combout => \datapath|BR|Mux39~1_combout\);

-- Location: LCFF_X44_Y9_N27
\datapath|BR|out3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \datapath|ACU|output\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|BR|out3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out3\(1));

-- Location: LCCOMB_X41_Y8_N28
\controller|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector34~0_combout\ = (\controller|ADDRESS\(1) & \controller|state.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS\(1),
	datac => \controller|state.s3~regout\,
	combout => \controller|Selector34~0_combout\);

-- Location: LCFF_X44_Y9_N25
\datapath|BR|out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|out2[2]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|BR|out2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out2\(2));

-- Location: LCFF_X44_Y9_N1
\datapath|BR|out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|out2[3]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|BR|out2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out2\(3));

-- Location: LCFF_X44_Y9_N11
\datapath|BR|out3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|out3[3]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|BR|out3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out3\(3));

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

-- Location: LCCOMB_X44_Y9_N16
\datapath|BR|out2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out2[0]~feeder_combout\ = \datapath|ACU|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(0),
	combout => \datapath|BR|out2[0]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N18
\datapath|BR|out3[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out3[0]~feeder_combout\ = \datapath|ACU|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(0),
	combout => \datapath|BR|out3[0]~feeder_combout\);

-- Location: LCCOMB_X44_Y7_N2
\datapath|BR|out1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out1[0]~feeder_combout\ = \datapath|ACU|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(0),
	combout => \datapath|BR|out1[0]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N24
\datapath|BR|out2[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out2[2]~feeder_combout\ = \datapath|ACU|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(2),
	combout => \datapath|BR|out2[2]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N10
\datapath|BR|out3[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out3[3]~feeder_combout\ = \datapath|ACU|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(3),
	combout => \datapath|BR|out3[3]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N0
\datapath|BR|out2[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out2[3]~feeder_combout\ = \datapath|ACU|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(3),
	combout => \datapath|BR|out2[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N2
\Divfreq|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Equal0~2_combout\ = (!\Divfreq|contagem\(8) & (!\Divfreq|contagem\(11) & (!\Divfreq|contagem\(9) & !\Divfreq|contagem\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(8),
	datab => \Divfreq|contagem\(11),
	datac => \Divfreq|contagem\(9),
	datad => \Divfreq|contagem\(10),
	combout => \Divfreq|Equal0~2_combout\);

-- Location: LCCOMB_X41_Y6_N24
\Divfreq|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Equal0~3_combout\ = (!\Divfreq|contagem\(15) & (!\Divfreq|contagem\(13) & (!\Divfreq|contagem\(14) & !\Divfreq|contagem\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(15),
	datab => \Divfreq|contagem\(13),
	datac => \Divfreq|contagem\(14),
	datad => \Divfreq|contagem\(12),
	combout => \Divfreq|Equal0~3_combout\);

-- Location: LCCOMB_X41_Y7_N12
\Divfreq|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~4_combout\ = (\Divfreq|contagem\(2) & (\Divfreq|Add0~3\ $ (GND))) # (!\Divfreq|contagem\(2) & (!\Divfreq|Add0~3\ & VCC))
-- \Divfreq|Add0~5\ = CARRY((\Divfreq|contagem\(2) & !\Divfreq|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(2),
	datad => VCC,
	cin => \Divfreq|Add0~3\,
	combout => \Divfreq|Add0~4_combout\,
	cout => \Divfreq|Add0~5\);

-- Location: LCFF_X41_Y7_N13
\Divfreq|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(2));

-- Location: LCCOMB_X41_Y7_N6
\Divfreq|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Equal0~0_combout\ = (\Divfreq|contagem\(0) & (\Divfreq|contagem\(1) & (!\Divfreq|contagem\(3) & !\Divfreq|contagem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(0),
	datab => \Divfreq|contagem\(1),
	datac => \Divfreq|contagem\(3),
	datad => \Divfreq|contagem\(2),
	combout => \Divfreq|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y7_N0
\Divfreq|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Equal0~4_combout\ = (\Divfreq|Equal0~1_combout\ & (\Divfreq|Equal0~2_combout\ & (\Divfreq|Equal0~3_combout\ & \Divfreq|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|Equal0~1_combout\,
	datab => \Divfreq|Equal0~2_combout\,
	datac => \Divfreq|Equal0~3_combout\,
	datad => \Divfreq|Equal0~0_combout\,
	combout => \Divfreq|Equal0~4_combout\);

-- Location: LCCOMB_X41_Y6_N10
\Divfreq|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~34_combout\ = (\Divfreq|contagem\(17) & (!\Divfreq|Add0~33\)) # (!\Divfreq|contagem\(17) & ((\Divfreq|Add0~33\) # (GND)))
-- \Divfreq|Add0~35\ = CARRY((!\Divfreq|Add0~33\) # (!\Divfreq|contagem\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(17),
	datad => VCC,
	cin => \Divfreq|Add0~33\,
	combout => \Divfreq|Add0~34_combout\,
	cout => \Divfreq|Add0~35\);

-- Location: LCFF_X41_Y6_N11
\Divfreq|contagem[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(17));

-- Location: LCCOMB_X41_Y6_N26
\Divfreq|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Equal0~5_combout\ = (!\Divfreq|contagem\(18) & (!\Divfreq|contagem\(19) & (!\Divfreq|contagem\(16) & !\Divfreq|contagem\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(18),
	datab => \Divfreq|contagem\(19),
	datac => \Divfreq|contagem\(16),
	datad => \Divfreq|contagem\(17),
	combout => \Divfreq|Equal0~5_combout\);

-- Location: LCCOMB_X41_Y7_N2
\Divfreq|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|contagem~0_combout\ = (\Divfreq|Add0~2_combout\ & (((!\Divfreq|Equal0~5_combout\) # (!\Divfreq|Equal0~4_combout\)) # (!\Divfreq|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|Add0~2_combout\,
	datab => \Divfreq|Equal0~6_combout\,
	datac => \Divfreq|Equal0~4_combout\,
	datad => \Divfreq|Equal0~5_combout\,
	combout => \Divfreq|contagem~0_combout\);

-- Location: LCFF_X41_Y7_N3
\Divfreq|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(1));

-- Location: LCCOMB_X41_Y7_N8
\Divfreq|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~0_combout\ = \Divfreq|contagem\(0) $ (GND)
-- \Divfreq|Add0~1\ = CARRY(!\Divfreq|contagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(0),
	datad => VCC,
	combout => \Divfreq|Add0~0_combout\,
	cout => \Divfreq|Add0~1\);

-- Location: LCCOMB_X41_Y7_N4
\Divfreq|contagem[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|contagem[0]~1_combout\ = !\Divfreq|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divfreq|Add0~0_combout\,
	combout => \Divfreq|contagem[0]~1_combout\);

-- Location: LCFF_X41_Y7_N5
\Divfreq|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|contagem[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(0));

-- Location: LCCOMB_X41_Y7_N14
\Divfreq|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~6_combout\ = (\Divfreq|contagem\(3) & (!\Divfreq|Add0~5\)) # (!\Divfreq|contagem\(3) & ((\Divfreq|Add0~5\) # (GND)))
-- \Divfreq|Add0~7\ = CARRY((!\Divfreq|Add0~5\) # (!\Divfreq|contagem\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(3),
	datad => VCC,
	cin => \Divfreq|Add0~5\,
	combout => \Divfreq|Add0~6_combout\,
	cout => \Divfreq|Add0~7\);

-- Location: LCFF_X41_Y7_N15
\Divfreq|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(3));

-- Location: LCCOMB_X41_Y7_N18
\Divfreq|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~10_combout\ = (\Divfreq|contagem\(5) & (!\Divfreq|Add0~9\)) # (!\Divfreq|contagem\(5) & ((\Divfreq|Add0~9\) # (GND)))
-- \Divfreq|Add0~11\ = CARRY((!\Divfreq|Add0~9\) # (!\Divfreq|contagem\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(5),
	datad => VCC,
	cin => \Divfreq|Add0~9\,
	combout => \Divfreq|Add0~10_combout\,
	cout => \Divfreq|Add0~11\);

-- Location: LCFF_X41_Y7_N19
\Divfreq|contagem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(5));

-- Location: LCCOMB_X41_Y7_N22
\Divfreq|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~14_combout\ = (\Divfreq|contagem\(7) & (!\Divfreq|Add0~13\)) # (!\Divfreq|contagem\(7) & ((\Divfreq|Add0~13\) # (GND)))
-- \Divfreq|Add0~15\ = CARRY((!\Divfreq|Add0~13\) # (!\Divfreq|contagem\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(7),
	datad => VCC,
	cin => \Divfreq|Add0~13\,
	combout => \Divfreq|Add0~14_combout\,
	cout => \Divfreq|Add0~15\);

-- Location: LCFF_X41_Y7_N23
\Divfreq|contagem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(7));

-- Location: LCCOMB_X41_Y7_N26
\Divfreq|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~18_combout\ = (\Divfreq|contagem\(9) & (!\Divfreq|Add0~17\)) # (!\Divfreq|contagem\(9) & ((\Divfreq|Add0~17\) # (GND)))
-- \Divfreq|Add0~19\ = CARRY((!\Divfreq|Add0~17\) # (!\Divfreq|contagem\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(9),
	datad => VCC,
	cin => \Divfreq|Add0~17\,
	combout => \Divfreq|Add0~18_combout\,
	cout => \Divfreq|Add0~19\);

-- Location: LCFF_X41_Y7_N27
\Divfreq|contagem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(9));

-- Location: LCCOMB_X41_Y7_N28
\Divfreq|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~20_combout\ = (\Divfreq|contagem\(10) & (\Divfreq|Add0~19\ $ (GND))) # (!\Divfreq|contagem\(10) & (!\Divfreq|Add0~19\ & VCC))
-- \Divfreq|Add0~21\ = CARRY((\Divfreq|contagem\(10) & !\Divfreq|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(10),
	datad => VCC,
	cin => \Divfreq|Add0~19\,
	combout => \Divfreq|Add0~20_combout\,
	cout => \Divfreq|Add0~21\);

-- Location: LCFF_X41_Y7_N29
\Divfreq|contagem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(10));

-- Location: LCCOMB_X41_Y7_N30
\Divfreq|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~22_combout\ = (\Divfreq|contagem\(11) & (!\Divfreq|Add0~21\)) # (!\Divfreq|contagem\(11) & ((\Divfreq|Add0~21\) # (GND)))
-- \Divfreq|Add0~23\ = CARRY((!\Divfreq|Add0~21\) # (!\Divfreq|contagem\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(11),
	datad => VCC,
	cin => \Divfreq|Add0~21\,
	combout => \Divfreq|Add0~22_combout\,
	cout => \Divfreq|Add0~23\);

-- Location: LCFF_X41_Y7_N31
\Divfreq|contagem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(11));

-- Location: LCCOMB_X41_Y6_N0
\Divfreq|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~24_combout\ = (\Divfreq|contagem\(12) & (\Divfreq|Add0~23\ $ (GND))) # (!\Divfreq|contagem\(12) & (!\Divfreq|Add0~23\ & VCC))
-- \Divfreq|Add0~25\ = CARRY((\Divfreq|contagem\(12) & !\Divfreq|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(12),
	datad => VCC,
	cin => \Divfreq|Add0~23\,
	combout => \Divfreq|Add0~24_combout\,
	cout => \Divfreq|Add0~25\);

-- Location: LCFF_X41_Y6_N1
\Divfreq|contagem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(12));

-- Location: LCCOMB_X41_Y6_N2
\Divfreq|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~26_combout\ = (\Divfreq|contagem\(13) & (!\Divfreq|Add0~25\)) # (!\Divfreq|contagem\(13) & ((\Divfreq|Add0~25\) # (GND)))
-- \Divfreq|Add0~27\ = CARRY((!\Divfreq|Add0~25\) # (!\Divfreq|contagem\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(13),
	datad => VCC,
	cin => \Divfreq|Add0~25\,
	combout => \Divfreq|Add0~26_combout\,
	cout => \Divfreq|Add0~27\);

-- Location: LCFF_X41_Y6_N3
\Divfreq|contagem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(13));

-- Location: LCCOMB_X41_Y6_N4
\Divfreq|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~28_combout\ = (\Divfreq|contagem\(14) & (\Divfreq|Add0~27\ $ (GND))) # (!\Divfreq|contagem\(14) & (!\Divfreq|Add0~27\ & VCC))
-- \Divfreq|Add0~29\ = CARRY((\Divfreq|contagem\(14) & !\Divfreq|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(14),
	datad => VCC,
	cin => \Divfreq|Add0~27\,
	combout => \Divfreq|Add0~28_combout\,
	cout => \Divfreq|Add0~29\);

-- Location: LCFF_X41_Y6_N5
\Divfreq|contagem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(14));

-- Location: LCCOMB_X41_Y6_N8
\Divfreq|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~32_combout\ = (\Divfreq|contagem\(16) & (\Divfreq|Add0~31\ $ (GND))) # (!\Divfreq|contagem\(16) & (!\Divfreq|Add0~31\ & VCC))
-- \Divfreq|Add0~33\ = CARRY((\Divfreq|contagem\(16) & !\Divfreq|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(16),
	datad => VCC,
	cin => \Divfreq|Add0~31\,
	combout => \Divfreq|Add0~32_combout\,
	cout => \Divfreq|Add0~33\);

-- Location: LCFF_X41_Y6_N9
\Divfreq|contagem[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(16));

-- Location: LCCOMB_X41_Y6_N14
\Divfreq|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~38_combout\ = (\Divfreq|contagem\(19) & (!\Divfreq|Add0~37\)) # (!\Divfreq|contagem\(19) & ((\Divfreq|Add0~37\) # (GND)))
-- \Divfreq|Add0~39\ = CARRY((!\Divfreq|Add0~37\) # (!\Divfreq|contagem\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(19),
	datad => VCC,
	cin => \Divfreq|Add0~37\,
	combout => \Divfreq|Add0~38_combout\,
	cout => \Divfreq|Add0~39\);

-- Location: LCFF_X41_Y6_N15
\Divfreq|contagem[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(19));

-- Location: LCCOMB_X41_Y6_N18
\Divfreq|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~42_combout\ = (\Divfreq|contagem\(21) & (!\Divfreq|Add0~41\)) # (!\Divfreq|contagem\(21) & ((\Divfreq|Add0~41\) # (GND)))
-- \Divfreq|Add0~43\ = CARRY((!\Divfreq|Add0~41\) # (!\Divfreq|contagem\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divfreq|contagem\(21),
	datad => VCC,
	cin => \Divfreq|Add0~41\,
	combout => \Divfreq|Add0~42_combout\,
	cout => \Divfreq|Add0~43\);

-- Location: LCFF_X41_Y6_N19
\Divfreq|contagem[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(21));

-- Location: LCCOMB_X41_Y6_N20
\Divfreq|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~44_combout\ = (\Divfreq|contagem\(22) & (\Divfreq|Add0~43\ $ (GND))) # (!\Divfreq|contagem\(22) & (!\Divfreq|Add0~43\ & VCC))
-- \Divfreq|Add0~45\ = CARRY((\Divfreq|contagem\(22) & !\Divfreq|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(22),
	datad => VCC,
	cin => \Divfreq|Add0~43\,
	combout => \Divfreq|Add0~44_combout\,
	cout => \Divfreq|Add0~45\);

-- Location: LCFF_X41_Y6_N21
\Divfreq|contagem[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(22));

-- Location: LCCOMB_X41_Y6_N22
\Divfreq|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Add0~46_combout\ = \Divfreq|Add0~45\ $ (\Divfreq|contagem\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Divfreq|contagem\(23),
	cin => \Divfreq|Add0~45\,
	combout => \Divfreq|Add0~46_combout\);

-- Location: LCFF_X41_Y6_N23
\Divfreq|contagem[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|contagem\(23));

-- Location: LCCOMB_X41_Y6_N28
\Divfreq|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|Equal0~6_combout\ = (!\Divfreq|contagem\(20) & (!\Divfreq|contagem\(21) & (!\Divfreq|contagem\(22) & !\Divfreq|contagem\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|contagem\(20),
	datab => \Divfreq|contagem\(21),
	datac => \Divfreq|contagem\(22),
	datad => \Divfreq|contagem\(23),
	combout => \Divfreq|Equal0~6_combout\);

-- Location: LCCOMB_X41_Y7_N0
\Divfreq|estado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Divfreq|estado~0_combout\ = \Divfreq|estado~regout\ $ (((\Divfreq|Equal0~4_combout\ & (\Divfreq|Equal0~6_combout\ & \Divfreq|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divfreq|Equal0~4_combout\,
	datab => \Divfreq|Equal0~6_combout\,
	datac => \Divfreq|estado~regout\,
	datad => \Divfreq|Equal0~5_combout\,
	combout => \Divfreq|estado~0_combout\);

-- Location: LCFF_X41_Y7_N1
\Divfreq|estado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \Divfreq|estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Divfreq|estado~regout\);

-- Location: CLKCTRL_G13
\Divfreq|estado~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Divfreq|estado~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Divfreq|estado~clkctrl_outclk\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y8_N12
\controller|state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s0~0_combout\ = (\start~combout\) # (\controller|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~combout\,
	datac => \controller|state.s0~regout\,
	combout => \controller|state.s0~0_combout\);

-- Location: LCFF_X42_Y8_N13
\controller|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|state.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s0~regout\);

-- Location: LCCOMB_X40_Y8_N4
\controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~2_combout\ = (\controller|PC\(1) & (!\controller|Add0~1\)) # (!\controller|PC\(1) & ((\controller|Add0~1\) # (GND)))
-- \controller|Add0~3\ = CARRY((!\controller|Add0~1\) # (!\controller|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(1),
	datad => VCC,
	cin => \controller|Add0~1\,
	combout => \controller|Add0~2_combout\,
	cout => \controller|Add0~3\);

-- Location: LCCOMB_X40_Y8_N6
\controller|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~5_combout\ = (\controller|PC\(2) & (\controller|Add0~3\ $ (GND))) # (!\controller|PC\(2) & (!\controller|Add0~3\ & VCC))
-- \controller|Add0~6\ = CARRY((\controller|PC\(2) & !\controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(2),
	datad => VCC,
	cin => \controller|Add0~3\,
	combout => \controller|Add0~5_combout\,
	cout => \controller|Add0~6\);

-- Location: LCCOMB_X40_Y8_N14
\controller|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~7_combout\ = (\controller|state.s2~regout\ & \controller|Add0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datad => \controller|Add0~5_combout\,
	combout => \controller|Add0~7_combout\);

-- Location: LCCOMB_X41_Y8_N10
\controller|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux5~0_combout\ = (\controller|PC\(0) & (!\controller|PC\(2) & (\controller|PC\(1) $ (!\controller|PC\(3))))) # (!\controller|PC\(0) & (!\controller|PC\(1) & ((\controller|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(0),
	datab => \controller|PC\(1),
	datac => \controller|PC\(3),
	datad => \controller|PC\(2),
	combout => \controller|Mux5~0_combout\);

-- Location: LCFF_X41_Y8_N11
\controller|ADDRESS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Mux5~0_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(2));

-- Location: LCFF_X42_Y8_N17
\controller|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \controller|state.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s3~regout\);

-- Location: LCFF_X40_Y8_N15
\controller|PC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Add0~7_combout\,
	sdata => \controller|ADDRESS\(2),
	sload => \controller|state.s3~regout\,
	ena => \controller|PC[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(2));

-- Location: LCCOMB_X40_Y8_N8
\controller|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~8_combout\ = \controller|Add0~6\ $ (\controller|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controller|PC\(3),
	cin => \controller|Add0~6\,
	combout => \controller|Add0~8_combout\);

-- Location: LCCOMB_X40_Y8_N0
\controller|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~10_combout\ = (\controller|Add0~8_combout\ & \controller|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Add0~8_combout\,
	datad => \controller|state.s2~regout\,
	combout => \controller|Add0~10_combout\);

-- Location: LCCOMB_X41_Y8_N0
\controller|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux4~0_combout\ = (!\controller|PC\(1) & (!\controller|PC\(0) & \controller|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(1),
	datac => \controller|PC\(0),
	datad => \controller|PC\(2),
	combout => \controller|Mux4~0_combout\);

-- Location: LCFF_X41_Y8_N1
\controller|ADDRESS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Mux4~0_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(3));

-- Location: LCFF_X40_Y8_N1
\controller|PC[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Add0~10_combout\,
	sdata => \controller|ADDRESS\(3),
	sload => \controller|state.s3~regout\,
	ena => \controller|PC[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(3));

-- Location: LCCOMB_X41_Y8_N18
\controller|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux0~0_combout\ = (\controller|PC\(3) & \controller|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|PC\(3),
	datad => \controller|PC\(2),
	combout => \controller|Mux0~0_combout\);

-- Location: LCFF_X41_Y8_N19
\controller|OPCODE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Mux0~0_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(3));

-- Location: LCCOMB_X41_Y8_N12
\controller|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux1~0_combout\ = (\controller|PC\(0) & (\controller|PC\(1) & (!\controller|PC\(3) & \controller|PC\(2)))) # (!\controller|PC\(0) & (((\controller|PC\(3) & !\controller|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(0),
	datab => \controller|PC\(1),
	datac => \controller|PC\(3),
	datad => \controller|PC\(2),
	combout => \controller|Mux1~0_combout\);

-- Location: LCFF_X41_Y8_N13
\controller|OPCODE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Mux1~0_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(2));

-- Location: LCCOMB_X42_Y8_N2
\controller|Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~1_combout\ = (\controller|state.s3~regout\ & (\controller|OPCODE\(3) & ((\controller|OPCODE\(1)) # (\controller|OPCODE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~regout\,
	datab => \controller|OPCODE\(3),
	datac => \controller|OPCODE\(1),
	datad => \controller|OPCODE\(2),
	combout => \controller|Selector37~1_combout\);

-- Location: LCCOMB_X42_Y8_N24
\controller|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector40~0_combout\ = (\controller|state.s6~regout\) # ((\controller|Selector37~1_combout\) # ((!\controller|state.s0~regout\ & \start~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s6~regout\,
	datab => \controller|state.s0~regout\,
	datac => \start~combout\,
	datad => \controller|Selector37~1_combout\,
	combout => \controller|Selector40~0_combout\);

-- Location: LCFF_X42_Y8_N25
\controller|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Selector40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s1~regout\);

-- Location: LCFF_X42_Y8_N1
\controller|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \controller|state.s1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s2~regout\);

-- Location: LCCOMB_X41_Y8_N24
\controller|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux3~0_combout\ = (\controller|PC\(3) & (!\controller|PC\(0) & (\controller|PC\(1) $ (\controller|PC\(2))))) # (!\controller|PC\(3) & (\controller|PC\(0) $ (((\controller|PC\(1)) # (!\controller|PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(0),
	datab => \controller|PC\(1),
	datac => \controller|PC\(3),
	datad => \controller|PC\(2),
	combout => \controller|Mux3~0_combout\);

-- Location: LCFF_X41_Y8_N25
\controller|OPCODE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Mux3~0_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(0));

-- Location: LCCOMB_X41_Y8_N26
\controller|Mux50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux50~0_combout\ = (\controller|OPCODE\(2) & (!\controller|OPCODE\(3) & (\controller|OPCODE\(1) & \controller|OPCODE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(2),
	datab => \controller|OPCODE\(3),
	datac => \controller|OPCODE\(1),
	datad => \controller|OPCODE\(0),
	combout => \controller|Mux50~0_combout\);

-- Location: LCCOMB_X41_Y8_N8
\controller|PC[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|PC[2]~0_combout\ = (\controller|state.s3~regout\ & (((\controller|Mux50~0_combout\)))) # (!\controller|state.s3~regout\ & (((\controller|state.s2~regout\)) # (!\controller|state.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~regout\,
	datab => \controller|state.s0~regout\,
	datac => \controller|state.s2~regout\,
	datad => \controller|Mux50~0_combout\,
	combout => \controller|PC[2]~0_combout\);

-- Location: LCCOMB_X40_Y8_N2
\controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~0_combout\ = \controller|PC\(0) $ (GND)
-- \controller|Add0~1\ = CARRY(!\controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datad => VCC,
	combout => \controller|Add0~0_combout\,
	cout => \controller|Add0~1\);

-- Location: LCCOMB_X41_Y8_N6
\controller|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux7~0_combout\ = (\controller|PC\(1) & (\controller|PC\(0) & !\controller|PC\(2))) # (!\controller|PC\(1) & (!\controller|PC\(0) & \controller|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(1),
	datac => \controller|PC\(0),
	datad => \controller|PC\(2),
	combout => \controller|Mux7~0_combout\);

-- Location: LCFF_X41_Y8_N7
\controller|ADDRESS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Mux7~0_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(0));

-- Location: LCCOMB_X41_Y8_N4
\controller|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector35~0_combout\ = (\controller|state.s3~regout\ & \controller|ADDRESS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.s3~regout\,
	datad => \controller|ADDRESS\(0),
	combout => \controller|Selector35~0_combout\);

-- Location: LCCOMB_X40_Y8_N12
\controller|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector31~0_combout\ = (\controller|state.s2~regout\ & ((\controller|Add0~0_combout\) # ((\controller|Mux50~0_combout\ & \controller|Selector35~0_combout\)))) # (!\controller|state.s2~regout\ & (((\controller|Mux50~0_combout\ & 
-- \controller|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|Add0~0_combout\,
	datac => \controller|Mux50~0_combout\,
	datad => \controller|Selector35~0_combout\,
	combout => \controller|Selector31~0_combout\);

-- Location: LCCOMB_X40_Y8_N30
\controller|Selector31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector31~1_combout\ = (!\controller|Selector31~0_combout\ & ((\controller|PC[2]~0_combout\) # (\controller|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC[2]~0_combout\,
	datac => \controller|PC\(0),
	datad => \controller|Selector31~0_combout\,
	combout => \controller|Selector31~1_combout\);

-- Location: LCFF_X40_Y8_N31
\controller|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Selector31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(0));

-- Location: LCCOMB_X40_Y8_N28
\controller|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~4_combout\ = (\controller|Add0~2_combout\ & \controller|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Add0~2_combout\,
	datad => \controller|state.s2~regout\,
	combout => \controller|Add0~4_combout\);

-- Location: LCCOMB_X41_Y8_N16
\controller|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux6~0_combout\ = (\controller|PC\(0) & (\controller|PC\(1) & (\controller|PC\(3) & !\controller|PC\(2)))) # (!\controller|PC\(0) & (!\controller|PC\(1) & ((\controller|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(0),
	datab => \controller|PC\(1),
	datac => \controller|PC\(3),
	datad => \controller|PC\(2),
	combout => \controller|Mux6~0_combout\);

-- Location: LCFF_X41_Y8_N17
\controller|ADDRESS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Mux6~0_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(1));

-- Location: LCFF_X40_Y8_N29
\controller|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Add0~4_combout\,
	sdata => \controller|ADDRESS\(1),
	sload => \controller|state.s3~regout\,
	ena => \controller|PC[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(1));

-- Location: LCCOMB_X41_Y8_N30
\controller|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux2~0_combout\ = (\controller|PC\(0) & (((!\controller|PC\(2))))) # (!\controller|PC\(0) & ((\controller|PC\(1) & (!\controller|PC\(3) & !\controller|PC\(2))) # (!\controller|PC\(1) & (\controller|PC\(3) $ (\controller|PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(0),
	datab => \controller|PC\(1),
	datac => \controller|PC\(3),
	datad => \controller|PC\(2),
	combout => \controller|Mux2~0_combout\);

-- Location: LCFF_X41_Y8_N31
\controller|OPCODE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Mux2~0_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(1));

-- Location: LCCOMB_X46_Y8_N30
\controller|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux12~0_combout\ = ((\controller|OPCODE\(3)) # (\controller|OPCODE\(1) $ (\controller|OPCODE\(2)))) # (!\controller|OPCODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|OPCODE\(1),
	datac => \controller|OPCODE\(2),
	datad => \controller|OPCODE\(3),
	combout => \controller|Mux12~0_combout\);

-- Location: LCCOMB_X41_Y8_N14
\controller|enb_acc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|enb_acc~0_combout\ = ((!\controller|OPCODE\(2) & (!\controller|OPCODE\(1) & !\controller|OPCODE\(0)))) # (!\controller|OPCODE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(2),
	datab => \controller|OPCODE\(3),
	datac => \controller|OPCODE\(1),
	datad => \controller|OPCODE\(0),
	combout => \controller|enb_acc~0_combout\);

-- Location: LCCOMB_X46_Y8_N28
\controller|enb_acc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|enb_acc~1_combout\ = (\controller|state.s3~regout\ & \controller|enb_acc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s3~regout\,
	datad => \controller|enb_acc~0_combout\,
	combout => \controller|enb_acc~1_combout\);

-- Location: LCFF_X46_Y8_N31
\controller|enb_acc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Mux12~0_combout\,
	ena => \controller|enb_acc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enb_acc~regout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X42_Y8_N10
\controller|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector38~0_combout\ = (\controller|state.s3~regout\ & (((!\controller|OPCODE\(1) & !\controller|OPCODE\(2))) # (!\controller|OPCODE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~regout\,
	datab => \controller|OPCODE\(3),
	datac => \controller|OPCODE\(1),
	datad => \controller|OPCODE\(2),
	combout => \controller|Selector38~0_combout\);

-- Location: LCCOMB_X42_Y8_N6
\controller|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux19~0_combout\ = ((!\controller|OPCODE\(1) & (!\controller|OPCODE\(2) & !\controller|OPCODE\(0)))) # (!\controller|OPCODE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(1),
	datab => \controller|OPCODE\(3),
	datac => \controller|OPCODE\(2),
	datad => \controller|OPCODE\(0),
	combout => \controller|Mux19~0_combout\);

-- Location: LCFF_X43_Y8_N5
\controller|state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \controller|Mux19~0_combout\,
	sclr => \controller|ALT_INV_state.s3~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s4~regout\);

-- Location: LCFF_X42_Y8_N23
\controller|state.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \controller|state.s4~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s5~regout\);

-- Location: LCFF_X42_Y8_N21
\controller|state.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \controller|state.s5~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s6~regout\);

-- Location: LCCOMB_X42_Y8_N0
\controller|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector39~0_combout\ = (\controller|state.s1~regout\) # ((\controller|atv\(0) & ((\controller|state.done~regout\) # (\controller|state.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.done~regout\,
	datab => \controller|atv\(0),
	datac => \controller|state.s1~regout\,
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector39~0_combout\);

-- Location: LCCOMB_X42_Y8_N4
\controller|Selector39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector39~1_combout\ = (\controller|state.s5~regout\) # ((\controller|Selector38~0_combout\) # ((\controller|state.s6~regout\) # (\controller|Selector39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s5~regout\,
	datab => \controller|Selector38~0_combout\,
	datac => \controller|state.s6~regout\,
	datad => \controller|Selector39~0_combout\,
	combout => \controller|Selector39~1_combout\);

-- Location: LCFF_X42_Y8_N5
\controller|atv[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|atv\(0));

-- Location: LCCOMB_X42_Y8_N28
\controller|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector41~0_combout\ = (!\controller|OPCODE\(1) & (\controller|OPCODE\(3) & (!\controller|OPCODE\(2) & \controller|state.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(1),
	datab => \controller|OPCODE\(3),
	datac => \controller|OPCODE\(2),
	datad => \controller|state.s3~regout\,
	combout => \controller|Selector41~0_combout\);

-- Location: LCCOMB_X42_Y8_N8
\controller|state.done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.done~0_combout\ = (\controller|state.done~regout\) # ((\controller|Selector41~0_combout\ & \controller|OPCODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Selector41~0_combout\,
	datac => \controller|state.done~regout\,
	datad => \controller|OPCODE\(0),
	combout => \controller|state.done~0_combout\);

-- Location: LCFF_X42_Y8_N9
\controller|state.done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|state.done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.done~regout\);

-- Location: LCCOMB_X42_Y8_N14
\controller|Selector38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector38~1_combout\ = (\controller|state.s2~regout\) # ((\controller|atv\(1) & ((\controller|state.done~regout\) # (\controller|state.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|atv\(1),
	datab => \controller|state.done~regout\,
	datac => \controller|state.s3~regout\,
	datad => \controller|state.s2~regout\,
	combout => \controller|Selector38~1_combout\);

-- Location: LCCOMB_X42_Y8_N26
\controller|Selector38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector38~2_combout\ = (\controller|state.s6~regout\) # ((\controller|Selector38~1_combout\) # (\controller|Selector38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s6~regout\,
	datac => \controller|Selector38~1_combout\,
	datad => \controller|Selector38~0_combout\,
	combout => \controller|Selector38~2_combout\);

-- Location: LCFF_X42_Y8_N27
\controller|atv[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~regout\,
	datain => \controller|Selector38~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|atv\(1));

-- Location: LCCOMB_X43_Y8_N12
\datapath|ACU|temp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACU|temp[0]~0_combout\ = (\controller|atv\(2) & (!\rst~combout\ & (\controller|atv\(0) & \controller|atv\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|atv\(2),
	datab => \rst~combout\,
	datac => \controller|atv\(0),
	datad => \controller|atv\(1),
	combout => \datapath|ACU|temp[0]~0_combout\);

-- Location: LCFF_X46_Y8_N13
\datapath|ACU|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|ACU|output~0_combout\,
	ena => \datapath|ACU|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACU|temp\(0));

-- Location: LCCOMB_X42_Y8_N18
\controller|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~0_combout\ = (\controller|state.s5~regout\) # ((\controller|state.s6~regout\) # (\controller|state.s4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s5~regout\,
	datac => \controller|state.s6~regout\,
	datad => \controller|state.s4~regout\,
	combout => \controller|Selector37~0_combout\);

-- Location: LCCOMB_X42_Y8_N30
\controller|Selector37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~2_combout\ = (\controller|Selector37~0_combout\) # ((\controller|atv\(2) & ((\controller|state.done~regout\) # (\controller|Selector37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.done~regout\,
	datab => \controller|Selector37~0_combout\,
	datac => \controller|atv\(2),
	datad => \controller|Selector37~1_combout\,
	combout => \controller|Selector37~2_combout\);

-- Location: LCFF_X42_Y8_N31
\controller|atv[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~regout\,
	datain => \controller|Selector37~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|atv\(2));

-- Location: LCCOMB_X42_Y8_N22
\datapath|alu1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux8~0_combout\ = (\controller|atv\(0) & (!\controller|atv\(1) & \controller|atv\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|atv\(0),
	datab => \controller|atv\(1),
	datad => \controller|atv\(2),
	combout => \datapath|alu1|Mux8~0_combout\);

-- Location: CLKCTRL_G12
\datapath|alu1|Mux8~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \datapath|alu1|Mux8~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \datapath|alu1|Mux8~0clkctrl_outclk\);

-- Location: LCFF_X45_Y8_N19
\controller|out_op[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \controller|OPCODE\(0),
	sload => VCC,
	ena => \controller|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|out_op\(0));

-- Location: LCCOMB_X47_Y8_N16
\controller|out_op[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|out_op[1]~feeder_combout\ = \controller|OPCODE\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|OPCODE\(1),
	combout => \controller|out_op[1]~feeder_combout\);

-- Location: LCFF_X47_Y8_N17
\controller|out_op[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|out_op[1]~feeder_combout\,
	ena => \controller|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|out_op\(1));

-- Location: LCFF_X45_Y8_N25
\controller|out_op[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \controller|OPCODE\(2),
	sload => VCC,
	ena => \controller|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|out_op\(2));

-- Location: LCCOMB_X46_Y8_N6
\datapath|alu1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux5~0_combout\ = (\controller|out_op\(0) & ((\controller|out_op\(3)) # (\controller|out_op\(1) $ (!\controller|out_op\(2))))) # (!\controller|out_op\(0) & (\controller|out_op\(3) $ (((!\controller|out_op\(1) & !\controller|out_op\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|out_op\(3),
	datab => \controller|out_op\(0),
	datac => \controller|out_op\(1),
	datad => \controller|out_op\(2),
	combout => \datapath|alu1|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y8_N24
\datapath|alu1|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux5~1_combout\ = (\controller|out_op\(2) & ((\controller|out_op\(0)) # (\controller|out_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|out_op\(0),
	datac => \controller|out_op\(1),
	datad => \controller|out_op\(2),
	combout => \datapath|alu1|Mux5~1_combout\);

-- Location: LCCOMB_X46_Y8_N10
\datapath|alu1|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux5~2_combout\ = (\controller|out_op\(0) & (\controller|out_op\(1))) # (!\controller|out_op\(0) & ((\controller|out_op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|out_op\(0),
	datac => \controller|out_op\(1),
	datad => \controller|out_op\(2),
	combout => \datapath|alu1|Mux5~2_combout\);

-- Location: LCCOMB_X45_Y8_N2
\datapath|alu1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~2_cout\ = CARRY(!\controller|out_op\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|out_op\(0),
	datad => VCC,
	cout => \datapath|alu1|Add0~2_cout\);

-- Location: LCCOMB_X45_Y8_N4
\datapath|alu1|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~3_combout\ = (\datapath|alu1|Add0~0_combout\ & ((\datapath|ACU|output\(0) & (\datapath|alu1|Add0~2_cout\ & VCC)) # (!\datapath|ACU|output\(0) & (!\datapath|alu1|Add0~2_cout\)))) # (!\datapath|alu1|Add0~0_combout\ & 
-- ((\datapath|ACU|output\(0) & (!\datapath|alu1|Add0~2_cout\)) # (!\datapath|ACU|output\(0) & ((\datapath|alu1|Add0~2_cout\) # (GND)))))
-- \datapath|alu1|Add0~4\ = CARRY((\datapath|alu1|Add0~0_combout\ & (!\datapath|ACU|output\(0) & !\datapath|alu1|Add0~2_cout\)) # (!\datapath|alu1|Add0~0_combout\ & ((!\datapath|alu1|Add0~2_cout\) # (!\datapath|ACU|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|Add0~0_combout\,
	datab => \datapath|ACU|output\(0),
	datad => VCC,
	cin => \datapath|alu1|Add0~2_cout\,
	combout => \datapath|alu1|Add0~3_combout\,
	cout => \datapath|alu1|Add0~4\);

-- Location: LCCOMB_X44_Y8_N18
\datapath|alu1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~0_combout\ = (\datapath|alu1|Mux5~2_combout\ & (((\datapath|alu1|Mux5~1_combout\) # (\datapath|alu1|Add0~3_combout\)))) # (!\datapath|alu1|Mux5~2_combout\ & (\controller|imm\(0) & (!\datapath|alu1|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|imm\(0),
	datab => \datapath|alu1|Mux5~2_combout\,
	datac => \datapath|alu1|Mux5~1_combout\,
	datad => \datapath|alu1|Add0~3_combout\,
	combout => \datapath|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y8_N24
\datapath|alu1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~1_combout\ = (\controller|out_op\(3) & (!\datapath|ACU|output\(0))) # (!\controller|out_op\(3) & (\datapath|alu1|Mux0~0_combout\ & ((\datapath|ACU|output\(0)) # (!\datapath|alu1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|out_op\(3),
	datab => \datapath|ACU|output\(0),
	datac => \datapath|alu1|Mux5~1_combout\,
	datad => \datapath|alu1|Mux0~0_combout\,
	combout => \datapath|alu1|Mux0~1_combout\);

-- Location: LCCOMB_X44_Y8_N6
\datapath|alu1|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~2_combout\ = (!\controller|out_op\(3) & (\datapath|alu1|Mux5~1_combout\ & (\datapath|ACU|output\(0) $ (\datapath|alu1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|out_op\(3),
	datab => \datapath|ACU|output\(0),
	datac => \datapath|alu1|Mux5~1_combout\,
	datad => \datapath|alu1|Mux0~0_combout\,
	combout => \datapath|alu1|Mux0~2_combout\);

-- Location: LCCOMB_X44_Y8_N16
\datapath|alu1|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~3_combout\ = (\datapath|alu1|Mux5~0_combout\ & (\datapath|BR|output\(0))) # (!\datapath|alu1|Mux5~0_combout\ & ((\datapath|alu1|Mux0~1_combout\ & ((!\datapath|alu1|Mux0~2_combout\))) # (!\datapath|alu1|Mux0~1_combout\ & 
-- (\datapath|BR|output\(0) & \datapath|alu1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|output\(0),
	datab => \datapath|alu1|Mux5~0_combout\,
	datac => \datapath|alu1|Mux0~1_combout\,
	datad => \datapath|alu1|Mux0~2_combout\,
	combout => \datapath|alu1|Mux0~3_combout\);

-- Location: LCCOMB_X45_Y8_N14
\datapath|alu1|output[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output\(0) = (!\rst~combout\ & ((GLOBAL(\datapath|alu1|Mux8~0clkctrl_outclk\) & ((\datapath|alu1|Mux0~3_combout\))) # (!GLOBAL(\datapath|alu1|Mux8~0clkctrl_outclk\) & (\datapath|alu1|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \datapath|alu1|output\(0),
	datac => \datapath|alu1|Mux8~0clkctrl_outclk\,
	datad => \datapath|alu1|Mux0~3_combout\,
	combout => \datapath|alu1|output\(0));

-- Location: LCCOMB_X46_Y8_N12
\datapath|ACU|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACU|output~0_combout\ = (\controller|enb_acc~regout\ & ((\datapath|alu1|output\(0)))) # (!\controller|enb_acc~regout\ & (\datapath|ACU|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enb_acc~regout\,
	datac => \datapath|ACU|temp\(0),
	datad => \datapath|alu1|output\(0),
	combout => \datapath|ACU|output~0_combout\);

-- Location: CLKCTRL_G6
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCCOMB_X43_Y8_N14
\datapath|ACU|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACU|Mux3~0_combout\ = (\controller|atv\(2) & (\controller|atv\(0) & \controller|atv\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|atv\(2),
	datac => \controller|atv\(0),
	datad => \controller|atv\(1),
	combout => \datapath|ACU|Mux3~0_combout\);

-- Location: LCFF_X45_Y8_N5
\datapath|ACU|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \datapath|ACU|output~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|ACU|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACU|output\(0));

-- Location: LCCOMB_X44_Y7_N20
\output[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \output[0]~reg0feeder_combout\ = \datapath|ACU|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(0),
	combout => \output[0]~reg0feeder_combout\);

-- Location: LCFF_X44_Y7_N21
\output[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \output[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[0]~reg0_regout\);

-- Location: LCFF_X46_Y8_N17
\datapath|ACU|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|ACU|output~1_combout\,
	ena => \datapath|ACU|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACU|temp\(1));

-- Location: LCFF_X45_Y8_N3
\controller|out_op[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \controller|OPCODE\(3),
	sload => VCC,
	ena => \controller|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|out_op\(3));

-- Location: LCCOMB_X44_Y7_N0
\datapath|BR|out1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out1[1]~feeder_combout\ = \datapath|ACU|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(1),
	combout => \datapath|BR|out1[1]~feeder_combout\);

-- Location: LCCOMB_X43_Y8_N16
\controller|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector32~0_combout\ = (\controller|state.s3~regout\ & \controller|ADDRESS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.s3~regout\,
	datad => \controller|ADDRESS\(3),
	combout => \controller|Selector32~0_combout\);

-- Location: LCCOMB_X41_Y8_N22
\controller|Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector35~1_combout\ = (\controller|state.s3~regout\ & ((\controller|enb_acc~0_combout\))) # (!\controller|state.s3~regout\ & (!\controller|state.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~regout\,
	datac => \controller|state.s0~regout\,
	datad => \controller|enb_acc~0_combout\,
	combout => \controller|Selector35~1_combout\);

-- Location: LCFF_X43_Y8_N17
\controller|imm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Selector32~0_combout\,
	ena => \controller|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(3));

-- Location: LCCOMB_X43_Y8_N26
\controller|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector33~0_combout\ = (\controller|state.s3~regout\ & \controller|ADDRESS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.s3~regout\,
	datad => \controller|ADDRESS\(2),
	combout => \controller|Selector33~0_combout\);

-- Location: LCFF_X43_Y8_N27
\controller|imm[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Selector33~0_combout\,
	ena => \controller|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(2));

-- Location: LCCOMB_X46_Y8_N26
\controller|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux13~0_combout\ = ((\controller|OPCODE\(1)) # ((\controller|OPCODE\(2)) # (\controller|OPCODE\(3)))) # (!\controller|OPCODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|OPCODE\(0),
	datab => \controller|OPCODE\(1),
	datac => \controller|OPCODE\(2),
	datad => \controller|OPCODE\(3),
	combout => \controller|Mux13~0_combout\);

-- Location: LCFF_X46_Y8_N27
\controller|enb_br\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \controller|Mux13~0_combout\,
	ena => \controller|enb_acc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enb_br~regout\);

-- Location: LCCOMB_X44_Y7_N10
\datapath|BR|out1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out1[0]~0_combout\ = (\datapath|BR|out0[3]~0_combout\ & (!\controller|imm\(3) & (\controller|imm\(2) & !\controller|enb_br~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|out0[3]~0_combout\,
	datab => \controller|imm\(3),
	datac => \controller|imm\(2),
	datad => \controller|enb_br~regout\,
	combout => \datapath|BR|out1[0]~0_combout\);

-- Location: LCFF_X44_Y7_N1
\datapath|BR|out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|out1[1]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|BR|out1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out1\(1));

-- Location: LCCOMB_X43_Y8_N30
\datapath|BR|out0[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out0[3]~1_combout\ = (\datapath|BR|out0[3]~0_combout\ & (!\controller|imm\(2) & (!\controller|enb_br~regout\ & !\controller|imm\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|out0[3]~0_combout\,
	datab => \controller|imm\(2),
	datac => \controller|enb_br~regout\,
	datad => \controller|imm\(3),
	combout => \datapath|BR|out0[3]~1_combout\);

-- Location: LCFF_X44_Y8_N27
\datapath|BR|out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \datapath|ACU|output\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|BR|out0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out0\(1));

-- Location: LCCOMB_X43_Y8_N10
\datapath|BR|out0[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out0[3]~0_combout\ = (\controller|atv\(2) & (!\controller|atv\(0) & !\controller|atv\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|atv\(2),
	datac => \controller|atv\(0),
	datad => \controller|atv\(1),
	combout => \datapath|BR|out0[3]~0_combout\);

-- Location: LCCOMB_X44_Y9_N20
\datapath|BR|out2[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out2[2]~0_combout\ = (!\controller|imm\(2) & (\datapath|BR|out0[3]~0_combout\ & (\controller|imm\(3) & !\controller|enb_br~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|imm\(2),
	datab => \datapath|BR|out0[3]~0_combout\,
	datac => \controller|imm\(3),
	datad => \controller|enb_br~regout\,
	combout => \datapath|BR|out2[2]~0_combout\);

-- Location: LCFF_X44_Y9_N13
\datapath|BR|out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \datapath|ACU|output\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|BR|out2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out2\(1));

-- Location: LCCOMB_X44_Y8_N26
\datapath|BR|Mux38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|Mux38~0_combout\ = (\controller|imm\(2) & (\controller|imm\(3))) # (!\controller|imm\(2) & ((\controller|imm\(3) & ((\datapath|BR|out2\(1)))) # (!\controller|imm\(3) & (\datapath|BR|out0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|imm\(2),
	datab => \controller|imm\(3),
	datac => \datapath|BR|out0\(1),
	datad => \datapath|BR|out2\(1),
	combout => \datapath|BR|Mux38~0_combout\);

-- Location: LCCOMB_X44_Y8_N10
\datapath|BR|Mux38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|Mux38~1_combout\ = (\controller|imm\(2) & ((\datapath|BR|Mux38~0_combout\ & (\datapath|BR|out3\(1))) # (!\datapath|BR|Mux38~0_combout\ & ((\datapath|BR|out1\(1)))))) # (!\controller|imm\(2) & (((\datapath|BR|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|out3\(1),
	datab => \datapath|BR|out1\(1),
	datac => \controller|imm\(2),
	datad => \datapath|BR|Mux38~0_combout\,
	combout => \datapath|BR|Mux38~1_combout\);

-- Location: LCCOMB_X43_Y8_N0
\datapath|BR|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|output[0]~0_combout\ = (\datapath|BR|out0[3]~0_combout\ & (\controller|enb_br~regout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|out0[3]~0_combout\,
	datac => \controller|enb_br~regout\,
	datad => \rst~combout\,
	combout => \datapath|BR|output[0]~0_combout\);

-- Location: LCFF_X44_Y8_N11
\datapath|BR|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|Mux38~1_combout\,
	ena => \datapath|BR|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|output\(1));

-- Location: LCCOMB_X44_Y8_N0
\datapath|alu1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux7~0_combout\ = (\datapath|alu1|Mux5~0_combout\ & (((\datapath|BR|output\(1))))) # (!\datapath|alu1|Mux5~0_combout\ & (\controller|out_op\(3) & ((!\datapath|ACU|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|out_op\(3),
	datab => \datapath|BR|output\(1),
	datac => \datapath|ACU|output\(1),
	datad => \datapath|alu1|Mux5~0_combout\,
	combout => \datapath|alu1|Mux7~0_combout\);

-- Location: LCCOMB_X45_Y8_N18
\datapath|alu1|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~5_combout\ = \controller|out_op\(2) $ (\datapath|BR|output\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|out_op\(2),
	datad => \datapath|BR|output\(1),
	combout => \datapath|alu1|Add0~5_combout\);

-- Location: LCCOMB_X45_Y8_N6
\datapath|alu1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~6_combout\ = ((\datapath|ACU|output\(1) $ (\datapath|alu1|Add0~5_combout\ $ (!\datapath|alu1|Add0~4\)))) # (GND)
-- \datapath|alu1|Add0~7\ = CARRY((\datapath|ACU|output\(1) & ((\datapath|alu1|Add0~5_combout\) # (!\datapath|alu1|Add0~4\))) # (!\datapath|ACU|output\(1) & (\datapath|alu1|Add0~5_combout\ & !\datapath|alu1|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(1),
	datab => \datapath|alu1|Add0~5_combout\,
	datad => VCC,
	cin => \datapath|alu1|Add0~4\,
	combout => \datapath|alu1|Add0~6_combout\,
	cout => \datapath|alu1|Add0~7\);

-- Location: LCCOMB_X45_Y8_N30
\datapath|alu1|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux7~1_combout\ = (\datapath|alu1|Mux5~1_combout\ & (((\datapath|alu1|Mux5~2_combout\)))) # (!\datapath|alu1|Mux5~1_combout\ & ((\datapath|alu1|Mux5~2_combout\ & ((\datapath|alu1|Add0~6_combout\))) # (!\datapath|alu1|Mux5~2_combout\ & 
-- (\controller|imm\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|imm\(1),
	datab => \datapath|alu1|Mux5~1_combout\,
	datac => \datapath|alu1|Mux5~2_combout\,
	datad => \datapath|alu1|Add0~6_combout\,
	combout => \datapath|alu1|Mux7~1_combout\);

-- Location: LCCOMB_X45_Y8_N0
\datapath|alu1|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux7~2_combout\ = (\datapath|BR|output\(1) & ((\datapath|alu1|Mux7~1_combout\) # ((\datapath|alu1|Mux5~1_combout\ & \datapath|ACU|output\(1))))) # (!\datapath|BR|output\(1) & (\datapath|alu1|Mux7~1_combout\ & ((\datapath|ACU|output\(1)) # 
-- (!\datapath|alu1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|output\(1),
	datab => \datapath|alu1|Mux5~1_combout\,
	datac => \datapath|ACU|output\(1),
	datad => \datapath|alu1|Mux7~1_combout\,
	combout => \datapath|alu1|Mux7~2_combout\);

-- Location: LCCOMB_X45_Y8_N20
\datapath|alu1|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux7~3_combout\ = (\datapath|alu1|Mux7~0_combout\) # ((!\datapath|alu1|Mux5~0_combout\ & (!\controller|out_op\(3) & \datapath|alu1|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|Mux5~0_combout\,
	datab => \controller|out_op\(3),
	datac => \datapath|alu1|Mux7~0_combout\,
	datad => \datapath|alu1|Mux7~2_combout\,
	combout => \datapath|alu1|Mux7~3_combout\);

-- Location: LCCOMB_X45_Y8_N16
\datapath|alu1|output[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output\(1) = (!\rst~combout\ & ((GLOBAL(\datapath|alu1|Mux8~0clkctrl_outclk\) & ((\datapath|alu1|Mux7~3_combout\))) # (!GLOBAL(\datapath|alu1|Mux8~0clkctrl_outclk\) & (\datapath|alu1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output\(1),
	datab => \rst~combout\,
	datac => \datapath|alu1|Mux7~3_combout\,
	datad => \datapath|alu1|Mux8~0clkctrl_outclk\,
	combout => \datapath|alu1|output\(1));

-- Location: LCCOMB_X46_Y8_N16
\datapath|ACU|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACU|output~1_combout\ = (\controller|enb_acc~regout\ & ((\datapath|alu1|output\(1)))) # (!\controller|enb_acc~regout\ & (\datapath|ACU|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enb_acc~regout\,
	datac => \datapath|ACU|temp\(1),
	datad => \datapath|alu1|output\(1),
	combout => \datapath|ACU|output~1_combout\);

-- Location: LCFF_X45_Y8_N1
\datapath|ACU|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \datapath|ACU|output~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|ACU|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACU|output\(1));

-- Location: LCCOMB_X44_Y7_N18
\output[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \output[1]~reg0feeder_combout\ = \datapath|ACU|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(1),
	combout => \output[1]~reg0feeder_combout\);

-- Location: LCFF_X44_Y7_N19
\output[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \output[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[1]~reg0_regout\);

-- Location: LCFF_X46_Y8_N15
\datapath|ACU|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|ACU|output~2_combout\,
	ena => \datapath|ACU|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACU|temp\(2));

-- Location: LCCOMB_X46_Y8_N18
\datapath|alu1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux6~0_combout\ = (\datapath|alu1|Mux5~0_combout\ & (\datapath|BR|output\(2))) # (!\datapath|alu1|Mux5~0_combout\ & (((\controller|out_op\(3) & !\datapath|ACU|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|output\(2),
	datab => \controller|out_op\(3),
	datac => \datapath|ACU|output\(2),
	datad => \datapath|alu1|Mux5~0_combout\,
	combout => \datapath|alu1|Mux6~0_combout\);

-- Location: LCCOMB_X46_Y8_N4
\datapath|alu1|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux6~1_combout\ = (\datapath|BR|output\(2) & ((\datapath|alu1|Mux5~2_combout\) # ((\datapath|ACU|output\(2) & \datapath|alu1|Mux5~1_combout\)))) # (!\datapath|BR|output\(2) & (\datapath|alu1|Mux5~2_combout\ & ((\datapath|ACU|output\(2)) # 
-- (!\datapath|alu1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|output\(2),
	datab => \datapath|ACU|output\(2),
	datac => \datapath|alu1|Mux5~1_combout\,
	datad => \datapath|alu1|Mux5~2_combout\,
	combout => \datapath|alu1|Mux6~1_combout\);

-- Location: LCCOMB_X44_Y9_N6
\datapath|BR|out3[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out3[2]~feeder_combout\ = \datapath|ACU|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(2),
	combout => \datapath|BR|out3[2]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N22
\datapath|BR|out3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out3[0]~0_combout\ = (\controller|imm\(2) & (\datapath|BR|out0[3]~0_combout\ & (\controller|imm\(3) & !\controller|enb_br~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|imm\(2),
	datab => \datapath|BR|out0[3]~0_combout\,
	datac => \controller|imm\(3),
	datad => \controller|enb_br~regout\,
	combout => \datapath|BR|out3[0]~0_combout\);

-- Location: LCFF_X44_Y9_N7
\datapath|BR|out3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|out3[2]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|BR|out3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out3\(2));

-- Location: LCFF_X44_Y8_N21
\datapath|BR|out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \datapath|ACU|output\(2),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|BR|out0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out0\(2));

-- Location: LCCOMB_X44_Y7_N22
\datapath|BR|out1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out1[2]~feeder_combout\ = \datapath|ACU|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(2),
	combout => \datapath|BR|out1[2]~feeder_combout\);

-- Location: LCFF_X44_Y7_N23
\datapath|BR|out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|out1[2]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|BR|out1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out1\(2));

-- Location: LCCOMB_X44_Y8_N20
\datapath|BR|Mux37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|Mux37~0_combout\ = (\controller|imm\(2) & ((\controller|imm\(3)) # ((\datapath|BR|out1\(2))))) # (!\controller|imm\(2) & (!\controller|imm\(3) & (\datapath|BR|out0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|imm\(2),
	datab => \controller|imm\(3),
	datac => \datapath|BR|out0\(2),
	datad => \datapath|BR|out1\(2),
	combout => \datapath|BR|Mux37~0_combout\);

-- Location: LCCOMB_X44_Y8_N14
\datapath|BR|Mux37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|Mux37~1_combout\ = (\datapath|BR|Mux37~0_combout\ & (((\datapath|BR|out3\(2)) # (!\controller|imm\(3))))) # (!\datapath|BR|Mux37~0_combout\ & (\datapath|BR|out2\(2) & ((\controller|imm\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|out2\(2),
	datab => \datapath|BR|out3\(2),
	datac => \datapath|BR|Mux37~0_combout\,
	datad => \controller|imm\(3),
	combout => \datapath|BR|Mux37~1_combout\);

-- Location: LCFF_X44_Y8_N15
\datapath|BR|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|Mux37~1_combout\,
	ena => \datapath|BR|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|output\(2));

-- Location: LCCOMB_X44_Y8_N28
\datapath|alu1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~8_combout\ = \datapath|BR|output\(2) $ (\controller|out_op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|BR|output\(2),
	datad => \controller|out_op\(2),
	combout => \datapath|alu1|Add0~8_combout\);

-- Location: LCCOMB_X45_Y8_N8
\datapath|alu1|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~9_combout\ = (\datapath|ACU|output\(2) & ((\datapath|alu1|Add0~8_combout\ & (\datapath|alu1|Add0~7\ & VCC)) # (!\datapath|alu1|Add0~8_combout\ & (!\datapath|alu1|Add0~7\)))) # (!\datapath|ACU|output\(2) & 
-- ((\datapath|alu1|Add0~8_combout\ & (!\datapath|alu1|Add0~7\)) # (!\datapath|alu1|Add0~8_combout\ & ((\datapath|alu1|Add0~7\) # (GND)))))
-- \datapath|alu1|Add0~10\ = CARRY((\datapath|ACU|output\(2) & (!\datapath|alu1|Add0~8_combout\ & !\datapath|alu1|Add0~7\)) # (!\datapath|ACU|output\(2) & ((!\datapath|alu1|Add0~7\) # (!\datapath|alu1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(2),
	datab => \datapath|alu1|Add0~8_combout\,
	datad => VCC,
	cin => \datapath|alu1|Add0~7\,
	combout => \datapath|alu1|Add0~9_combout\,
	cout => \datapath|alu1|Add0~10\);

-- Location: LCCOMB_X46_Y8_N22
\datapath|alu1|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux6~2_combout\ = (\datapath|alu1|Mux5~1_combout\ & (\datapath|alu1|Mux6~1_combout\)) # (!\datapath|alu1|Mux5~1_combout\ & ((\datapath|alu1|Mux6~1_combout\ & ((\datapath|alu1|Add0~9_combout\))) # (!\datapath|alu1|Mux6~1_combout\ & 
-- (\controller|imm\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|Mux5~1_combout\,
	datab => \datapath|alu1|Mux6~1_combout\,
	datac => \controller|imm\(2),
	datad => \datapath|alu1|Add0~9_combout\,
	combout => \datapath|alu1|Mux6~2_combout\);

-- Location: LCCOMB_X46_Y8_N20
\datapath|alu1|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux6~3_combout\ = (\datapath|alu1|Mux6~0_combout\) # ((!\datapath|alu1|Mux5~0_combout\ & (!\controller|out_op\(3) & \datapath|alu1|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|Mux5~0_combout\,
	datab => \datapath|alu1|Mux6~0_combout\,
	datac => \controller|out_op\(3),
	datad => \datapath|alu1|Mux6~2_combout\,
	combout => \datapath|alu1|Mux6~3_combout\);

-- Location: LCCOMB_X46_Y8_N0
\datapath|alu1|output[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output\(2) = (!\rst~combout\ & ((GLOBAL(\datapath|alu1|Mux8~0clkctrl_outclk\) & ((\datapath|alu1|Mux6~3_combout\))) # (!GLOBAL(\datapath|alu1|Mux8~0clkctrl_outclk\) & (\datapath|alu1|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \datapath|alu1|output\(2),
	datac => \datapath|alu1|Mux6~3_combout\,
	datad => \datapath|alu1|Mux8~0clkctrl_outclk\,
	combout => \datapath|alu1|output\(2));

-- Location: LCCOMB_X46_Y8_N14
\datapath|ACU|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACU|output~2_combout\ = (\controller|enb_acc~regout\ & ((\datapath|alu1|output\(2)))) # (!\controller|enb_acc~regout\ & (\datapath|ACU|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enb_acc~regout\,
	datac => \datapath|ACU|temp\(2),
	datad => \datapath|alu1|output\(2),
	combout => \datapath|ACU|output~2_combout\);

-- Location: LCFF_X45_Y8_N9
\datapath|ACU|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \datapath|ACU|output~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|ACU|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACU|output\(2));

-- Location: LCCOMB_X48_Y8_N20
\output[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \output[2]~reg0feeder_combout\ = \datapath|ACU|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(2),
	combout => \output[2]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N21
\output[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \output[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[2]~reg0_regout\);

-- Location: LCFF_X46_Y8_N9
\datapath|ACU|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|ACU|output~3_combout\,
	ena => \datapath|ACU|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACU|temp\(3));

-- Location: LCFF_X44_Y8_N3
\datapath|BR|out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \datapath|ACU|output\(3),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|BR|out0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out0\(3));

-- Location: LCCOMB_X44_Y8_N2
\datapath|BR|Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|Mux36~0_combout\ = (\controller|imm\(3) & ((\datapath|BR|out2\(3)) # ((\controller|imm\(2))))) # (!\controller|imm\(3) & (((\datapath|BR|out0\(3) & !\controller|imm\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|out2\(3),
	datab => \controller|imm\(3),
	datac => \datapath|BR|out0\(3),
	datad => \controller|imm\(2),
	combout => \datapath|BR|Mux36~0_combout\);

-- Location: LCCOMB_X44_Y7_N12
\datapath|BR|out1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|out1[3]~feeder_combout\ = \datapath|ACU|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(3),
	combout => \datapath|BR|out1[3]~feeder_combout\);

-- Location: LCFF_X44_Y7_N13
\datapath|BR|out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|out1[3]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|BR|out1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|out1\(3));

-- Location: LCCOMB_X44_Y8_N30
\datapath|BR|Mux36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|BR|Mux36~1_combout\ = (\datapath|BR|Mux36~0_combout\ & ((\datapath|BR|out3\(3)) # ((!\controller|imm\(2))))) # (!\datapath|BR|Mux36~0_combout\ & (((\datapath|BR|out1\(3) & \controller|imm\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|out3\(3),
	datab => \datapath|BR|Mux36~0_combout\,
	datac => \datapath|BR|out1\(3),
	datad => \controller|imm\(2),
	combout => \datapath|BR|Mux36~1_combout\);

-- Location: LCFF_X44_Y8_N31
\datapath|BR|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \datapath|BR|Mux36~1_combout\,
	ena => \datapath|BR|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|BR|output\(3));

-- Location: LCCOMB_X44_Y8_N4
\datapath|alu1|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux5~3_combout\ = (\datapath|alu1|Mux5~0_combout\ & (((\datapath|BR|output\(3))))) # (!\datapath|alu1|Mux5~0_combout\ & (\controller|out_op\(3) & ((!\datapath|ACU|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|out_op\(3),
	datab => \datapath|BR|output\(3),
	datac => \datapath|ACU|output\(3),
	datad => \datapath|alu1|Mux5~0_combout\,
	combout => \datapath|alu1|Mux5~3_combout\);

-- Location: LCCOMB_X44_Y8_N22
\datapath|alu1|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~11_combout\ = \datapath|BR|output\(3) $ (\controller|out_op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|BR|output\(3),
	datad => \controller|out_op\(2),
	combout => \datapath|alu1|Add0~11_combout\);

-- Location: LCCOMB_X45_Y8_N10
\datapath|alu1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~12_combout\ = \datapath|ACU|output\(3) $ (\datapath|alu1|Add0~10\ $ (!\datapath|alu1|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(3),
	datad => \datapath|alu1|Add0~11_combout\,
	cin => \datapath|alu1|Add0~10\,
	combout => \datapath|alu1|Add0~12_combout\);

-- Location: LCCOMB_X45_Y8_N22
\datapath|alu1|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux5~4_combout\ = (\datapath|alu1|Mux5~1_combout\ & (((\datapath|alu1|Mux5~2_combout\)))) # (!\datapath|alu1|Mux5~1_combout\ & ((\datapath|alu1|Mux5~2_combout\ & ((\datapath|alu1|Add0~12_combout\))) # (!\datapath|alu1|Mux5~2_combout\ & 
-- (\controller|imm\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|Mux5~1_combout\,
	datab => \controller|imm\(3),
	datac => \datapath|alu1|Mux5~2_combout\,
	datad => \datapath|alu1|Add0~12_combout\,
	combout => \datapath|alu1|Mux5~4_combout\);

-- Location: LCCOMB_X45_Y8_N28
\datapath|alu1|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux5~5_combout\ = (\datapath|BR|output\(3) & ((\datapath|alu1|Mux5~4_combout\) # ((\datapath|alu1|Mux5~1_combout\ & \datapath|ACU|output\(3))))) # (!\datapath|BR|output\(3) & (\datapath|alu1|Mux5~4_combout\ & ((\datapath|ACU|output\(3)) # 
-- (!\datapath|alu1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|BR|output\(3),
	datab => \datapath|alu1|Mux5~1_combout\,
	datac => \datapath|ACU|output\(3),
	datad => \datapath|alu1|Mux5~4_combout\,
	combout => \datapath|alu1|Mux5~5_combout\);

-- Location: LCCOMB_X45_Y8_N12
\datapath|alu1|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux5~6_combout\ = (\datapath|alu1|Mux5~3_combout\) # ((!\datapath|alu1|Mux5~0_combout\ & (!\controller|out_op\(3) & \datapath|alu1|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|Mux5~0_combout\,
	datab => \controller|out_op\(3),
	datac => \datapath|alu1|Mux5~3_combout\,
	datad => \datapath|alu1|Mux5~5_combout\,
	combout => \datapath|alu1|Mux5~6_combout\);

-- Location: LCCOMB_X45_Y8_N26
\datapath|alu1|output[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output\(3) = (!\rst~combout\ & ((GLOBAL(\datapath|alu1|Mux8~0clkctrl_outclk\) & ((\datapath|alu1|Mux5~6_combout\))) # (!GLOBAL(\datapath|alu1|Mux8~0clkctrl_outclk\) & (\datapath|alu1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \datapath|alu1|output\(3),
	datac => \datapath|alu1|Mux8~0clkctrl_outclk\,
	datad => \datapath|alu1|Mux5~6_combout\,
	combout => \datapath|alu1|output\(3));

-- Location: LCCOMB_X46_Y8_N8
\datapath|ACU|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACU|output~3_combout\ = (\controller|enb_acc~regout\ & ((\datapath|alu1|output\(3)))) # (!\controller|enb_acc~regout\ & (\datapath|ACU|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enb_acc~regout\,
	datac => \datapath|ACU|temp\(3),
	datad => \datapath|alu1|output\(3),
	combout => \datapath|ACU|output~3_combout\);

-- Location: LCFF_X45_Y8_N29
\datapath|ACU|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	sdata => \datapath|ACU|output~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|ACU|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACU|output\(3));

-- Location: LCCOMB_X44_Y7_N16
\output[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \output[3]~reg0feeder_combout\ = \datapath|ACU|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACU|output\(3),
	combout => \output[3]~reg0feeder_combout\);

-- Location: LCFF_X44_Y7_N17
\output[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \output[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[3]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N0
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\datapath|ACU|output\(2) & (\datapath|ACU|output\(1) & (\datapath|ACU|output\(0) & !\datapath|ACU|output\(3)))) # (!\datapath|ACU|output\(2) & (\datapath|ACU|output\(1) $ (((!\datapath|ACU|output\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(1),
	datab => \datapath|ACU|output\(0),
	datac => \datapath|ACU|output\(3),
	datad => \datapath|ACU|output\(2),
	combout => \Mux6~0_combout\);

-- Location: LCFF_X1_Y12_N1
\led1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led1[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N26
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\datapath|ACU|output\(2) & ((\datapath|ACU|output\(1) & (\datapath|ACU|output\(0) & !\datapath|ACU|output\(3))) # (!\datapath|ACU|output\(1) & ((\datapath|ACU|output\(3)))))) # (!\datapath|ACU|output\(2) & ((\datapath|ACU|output\(0)) # 
-- ((\datapath|ACU|output\(1) & !\datapath|ACU|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(1),
	datab => \datapath|ACU|output\(0),
	datac => \datapath|ACU|output\(3),
	datad => \datapath|ACU|output\(2),
	combout => \Mux5~0_combout\);

-- Location: LCFF_X1_Y12_N27
\led1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led1[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N28
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\datapath|ACU|output\(0) & ((\datapath|ACU|output\(1)) # ((\datapath|ACU|output\(2)) # (!\datapath|ACU|output\(3))))) # (!\datapath|ACU|output\(0) & (\datapath|ACU|output\(2) & (\datapath|ACU|output\(1) $ (!\datapath|ACU|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(1),
	datab => \datapath|ACU|output\(0),
	datac => \datapath|ACU|output\(3),
	datad => \datapath|ACU|output\(2),
	combout => \Mux4~0_combout\);

-- Location: LCFF_X1_Y12_N29
\led1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led1[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N14
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\datapath|ACU|output\(1) & ((\datapath|ACU|output\(0) & (\datapath|ACU|output\(3) $ (\datapath|ACU|output\(2)))) # (!\datapath|ACU|output\(0) & (\datapath|ACU|output\(3) & \datapath|ACU|output\(2))))) # (!\datapath|ACU|output\(1) & 
-- (!\datapath|ACU|output\(3) & (\datapath|ACU|output\(0) $ (\datapath|ACU|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(1),
	datab => \datapath|ACU|output\(0),
	datac => \datapath|ACU|output\(3),
	datad => \datapath|ACU|output\(2),
	combout => \Mux3~0_combout\);

-- Location: LCFF_X1_Y12_N15
\led1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led1[3]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N20
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\datapath|ACU|output\(0) & ((\datapath|ACU|output\(1) & (!\datapath|ACU|output\(3) & !\datapath|ACU|output\(2))) # (!\datapath|ACU|output\(1) & (\datapath|ACU|output\(3) & \datapath|ACU|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(1),
	datab => \datapath|ACU|output\(3),
	datac => \datapath|ACU|output\(0),
	datad => \datapath|ACU|output\(2),
	combout => \Mux2~0_combout\);

-- Location: LCFF_X1_Y12_N21
\led1[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led1[4]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N10
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\datapath|ACU|output\(2) & ((\datapath|ACU|output\(1) & (\datapath|ACU|output\(0) $ (!\datapath|ACU|output\(3)))) # (!\datapath|ACU|output\(1) & (\datapath|ACU|output\(0) & !\datapath|ACU|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(1),
	datab => \datapath|ACU|output\(0),
	datac => \datapath|ACU|output\(3),
	datad => \datapath|ACU|output\(2),
	combout => \Mux1~0_combout\);

-- Location: LCFF_X1_Y12_N11
\led1[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led1[5]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N24
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\datapath|ACU|output\(1) & (\datapath|ACU|output\(3) & (\datapath|ACU|output\(0) $ (\datapath|ACU|output\(2))))) # (!\datapath|ACU|output\(1) & (!\datapath|ACU|output\(3) & (\datapath|ACU|output\(0) $ (\datapath|ACU|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(1),
	datab => \datapath|ACU|output\(0),
	datac => \datapath|ACU|output\(3),
	datad => \datapath|ACU|output\(2),
	combout => \Mux0~0_combout\);

-- Location: LCFF_X1_Y12_N25
\led1[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led1[6]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N12
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\datapath|ACU|output\(3) & ((\datapath|ACU|output\(1)) # (\datapath|ACU|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACU|output\(3),
	datac => \datapath|ACU|output\(1),
	datad => \datapath|ACU|output\(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X1_Y12_N18
\led2[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \led2[1]~reg0feeder_combout\ = \Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux7~0_combout\,
	combout => \led2[1]~reg0feeder_combout\);

-- Location: LCFF_X1_Y12_N19
\led2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \led2[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led2[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N16
\led2[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \led2[2]~reg0feeder_combout\ = \Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux7~0_combout\,
	combout => \led2[2]~reg0feeder_combout\);

-- Location: LCFF_X1_Y12_N17
\led2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \led2[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led2[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y12_N22
\led2[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \led2[3]~reg0feeder_combout\ = \Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux7~0_combout\,
	combout => \led2[3]~reg0feeder_combout\);

-- Location: LCFF_X1_Y12_N23
\led2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \led2[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led2[3]~reg0_regout\);

-- Location: LCFF_X1_Y12_N13
\led2[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led2[6]~reg0_regout\);

-- Location: LCCOMB_X27_Y1_N16
\op0[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op0[1]~reg0feeder_combout\ = \controller|out_op\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(0),
	combout => \op0[1]~reg0feeder_combout\);

-- Location: LCFF_X27_Y1_N17
\op0[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op0[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op0[1]~reg0_regout\);

-- Location: LCCOMB_X27_Y1_N22
\op0[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op0[2]~reg0feeder_combout\ = \controller|out_op\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(0),
	combout => \op0[2]~reg0feeder_combout\);

-- Location: LCFF_X27_Y1_N23
\op0[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op0[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op0[2]~reg0_regout\);

-- Location: LCCOMB_X27_Y1_N20
\op0[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op0[3]~reg0feeder_combout\ = \controller|out_op\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(0),
	combout => \op0[3]~reg0feeder_combout\);

-- Location: LCFF_X27_Y1_N21
\op0[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op0[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op0[3]~reg0_regout\);

-- Location: LCCOMB_X27_Y1_N18
\op0[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op0[6]~reg0feeder_combout\ = \controller|out_op\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(0),
	combout => \op0[6]~reg0feeder_combout\);

-- Location: LCFF_X27_Y1_N19
\op0[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op0[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op0[6]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N22
\op1[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op1[1]~reg0feeder_combout\ = \controller|out_op\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(1),
	combout => \op1[1]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N23
\op1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op1[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op1[1]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N12
\op1[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op1[2]~reg0feeder_combout\ = \controller|out_op\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(1),
	combout => \op1[2]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N13
\op1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op1[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op1[2]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N18
\op1[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op1[3]~reg0feeder_combout\ = \controller|out_op\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(1),
	combout => \op1[3]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N19
\op1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op1[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op1[3]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N8
\op1[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op1[6]~reg0feeder_combout\ = \controller|out_op\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(1),
	combout => \op1[6]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N9
\op1[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op1[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op1[6]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N14
\op2[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op2[1]~reg0feeder_combout\ = \controller|out_op\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(2),
	combout => \op2[1]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N15
\op2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op2[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op2[1]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N16
\op2[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op2[2]~reg0feeder_combout\ = \controller|out_op\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(2),
	combout => \op2[2]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N17
\op2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op2[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op2[2]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N26
\op2[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op2[3]~reg0feeder_combout\ = \controller|out_op\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(2),
	combout => \op2[3]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N27
\op2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op2[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op2[3]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N24
\op2[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op2[6]~reg0feeder_combout\ = \controller|out_op\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(2),
	combout => \op2[6]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N25
\op2[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op2[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op2[6]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N6
\op3[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op3[1]~reg0feeder_combout\ = \controller|out_op\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(3),
	combout => \op3[1]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N7
\op3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op3[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op3[1]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N28
\op3[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op3[2]~reg0feeder_combout\ = \controller|out_op\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(3),
	combout => \op3[2]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N29
\op3[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op3[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op3[2]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N30
\op3[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op3[3]~reg0feeder_combout\ = \controller|out_op\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(3),
	combout => \op3[3]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N31
\op3[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op3[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op3[3]~reg0_regout\);

-- Location: LCCOMB_X48_Y8_N4
\op3[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \op3[6]~reg0feeder_combout\ = \controller|out_op\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|out_op\(3),
	combout => \op3[6]~reg0feeder_combout\);

-- Location: LCFF_X48_Y8_N5
\op3[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Divfreq|estado~clkctrl_outclk\,
	datain => \op3[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op3[6]~reg0_regout\);

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[0]~I\ : cycloneii_io
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
	datain => \output[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[1]~I\ : cycloneii_io
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
	datain => \output[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[2]~I\ : cycloneii_io
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
	datain => \output[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[3]~I\ : cycloneii_io
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
	datain => \output[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led1[0]~I\ : cycloneii_io
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
	datain => \led1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1(0));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led1[1]~I\ : cycloneii_io
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
	datain => \led1[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1(1));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led1[2]~I\ : cycloneii_io
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
	datain => \led1[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led1[3]~I\ : cycloneii_io
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
	datain => \led1[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led1[4]~I\ : cycloneii_io
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
	datain => \led1[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1(4));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led1[5]~I\ : cycloneii_io
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
	datain => \led1[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1(5));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led1[6]~I\ : cycloneii_io
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
	datain => \led1[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1(6));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2(0));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2[1]~I\ : cycloneii_io
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
	datain => \led2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2(1));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2[2]~I\ : cycloneii_io
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
	datain => \led2[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2[3]~I\ : cycloneii_io
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
	datain => \led2[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2[4]~I\ : cycloneii_io
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
	padio => ww_led2(4));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2[5]~I\ : cycloneii_io
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
	padio => ww_led2(5));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2[6]~I\ : cycloneii_io
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
	datain => \led2[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2(6));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op0[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op0(0));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op0[1]~I\ : cycloneii_io
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
	datain => \op0[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op0(1));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op0[2]~I\ : cycloneii_io
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
	datain => \op0[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op0[3]~I\ : cycloneii_io
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
	datain => \op0[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op0[4]~I\ : cycloneii_io
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
	padio => ww_op0(4));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op0[5]~I\ : cycloneii_io
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
	padio => ww_op0(5));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op0[6]~I\ : cycloneii_io
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
	datain => \op0[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op0(6));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op1[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op1(0));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op1[1]~I\ : cycloneii_io
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
	datain => \op1[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op1(1));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op1[2]~I\ : cycloneii_io
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
	datain => \op1[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op1[3]~I\ : cycloneii_io
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
	datain => \op1[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op1[4]~I\ : cycloneii_io
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
	padio => ww_op1(4));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op1[5]~I\ : cycloneii_io
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
	padio => ww_op1(5));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op1[6]~I\ : cycloneii_io
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
	datain => \op1[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op1(6));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op2[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op2(0));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op2[1]~I\ : cycloneii_io
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
	datain => \op2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op2(1));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op2[2]~I\ : cycloneii_io
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
	datain => \op2[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op2[3]~I\ : cycloneii_io
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
	datain => \op2[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op2(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op2[4]~I\ : cycloneii_io
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
	padio => ww_op2(4));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op2[5]~I\ : cycloneii_io
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
	padio => ww_op2(5));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op2[6]~I\ : cycloneii_io
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
	datain => \op2[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op2(6));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op3[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op3(0));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op3[1]~I\ : cycloneii_io
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
	datain => \op3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op3(1));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op3[2]~I\ : cycloneii_io
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
	datain => \op3[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op3[3]~I\ : cycloneii_io
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
	datain => \op3[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op3(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op3[4]~I\ : cycloneii_io
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
	padio => ww_op3(4));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op3[5]~I\ : cycloneii_io
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
	padio => ww_op3(5));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op3[6]~I\ : cycloneii_io
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
	datain => \op3[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_op3(6));
END structure;


