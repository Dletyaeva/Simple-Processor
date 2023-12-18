-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/03/2023 19:39:04"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SimpleComputer IS
    PORT (
	clock : IN std_logic;
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX_DP : BUFFER std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	debug_PC : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_IR : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_state : BUFFER std_logic_vector(2 DOWNTO 0);
	debug_r1 : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_r2 : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_r3 : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_r4 : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_r5 : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_r6 : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_r7 : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_RA : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_RB : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_Extension : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_RZ : BUFFER std_logic_vector(15 DOWNTO 0);
	debug_RY : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END SimpleComputer;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_DP[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_DP[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_DP[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_DP[3]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_DP[4]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_DP[5]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_DP[6]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX_DP[7]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[0]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[1]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[2]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[3]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[4]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[5]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[7]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[8]	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[9]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[10]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[11]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[12]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[13]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[14]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_PC[15]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[1]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[2]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[3]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[4]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[5]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[6]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[7]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[8]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[10]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[11]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[12]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[13]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[14]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_IR[15]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_state[0]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_state[1]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_state[2]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[0]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[1]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[2]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[4]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[5]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[6]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[7]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[8]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[9]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[10]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[11]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[12]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[13]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[14]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r1[15]	=>  Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[0]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[2]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[3]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[4]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[5]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[6]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[7]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[8]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[9]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[10]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[11]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[12]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[13]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[14]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r2[15]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[0]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[1]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[2]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[3]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[4]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[5]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[6]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[7]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[8]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[9]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[10]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[11]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[12]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[13]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[14]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r3[15]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[0]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[3]	=>  Location: PIN_P19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[4]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[5]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[7]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[8]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[9]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[10]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[11]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[12]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[13]	=>  Location: PIN_P21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[14]	=>  Location: PIN_W18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r4[15]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[1]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[2]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[3]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[4]	=>  Location: PIN_P20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[5]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[6]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[7]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[8]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[9]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[10]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[11]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[12]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[13]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[14]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r5[15]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[0]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[3]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[4]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[5]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[6]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[7]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[8]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[9]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[10]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[11]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[12]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[13]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[14]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r6[15]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[0]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[1]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[2]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[3]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[4]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[5]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[6]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[7]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[8]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[9]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[10]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[11]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[12]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[13]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[14]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_r7[15]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[0]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[2]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[3]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[4]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[5]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[6]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[7]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[8]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[9]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[10]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[11]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[12]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[13]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[14]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RA[15]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[0]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[1]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[2]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[3]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[4]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[5]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[6]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[7]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[8]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[9]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[10]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[11]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[12]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[13]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[14]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RB[15]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[0]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[1]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[2]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[3]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[4]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[5]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[6]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[8]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[9]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[10]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[11]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[12]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[13]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[14]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_Extension[15]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[0]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[1]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[2]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[3]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[4]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[6]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[7]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[8]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[9]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[10]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[11]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[12]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[13]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[14]	=>  Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RZ[15]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[0]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[1]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[3]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[4]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[5]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[6]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[7]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[8]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[9]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[10]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[11]	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[12]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[13]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[14]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- debug_RY[15]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clock	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SimpleComputer IS
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX_DP : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_debug_PC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_IR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_state : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_debug_r1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_r2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_r3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_r4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_r5 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_r6 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_r7 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_RA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_RB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_Extension : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_RZ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_debug_RY : std_logic_vector(15 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX_DP[0]~output_o\ : std_logic;
SIGNAL \HEX_DP[1]~output_o\ : std_logic;
SIGNAL \HEX_DP[2]~output_o\ : std_logic;
SIGNAL \HEX_DP[3]~output_o\ : std_logic;
SIGNAL \HEX_DP[4]~output_o\ : std_logic;
SIGNAL \HEX_DP[5]~output_o\ : std_logic;
SIGNAL \HEX_DP[6]~output_o\ : std_logic;
SIGNAL \HEX_DP[7]~output_o\ : std_logic;
SIGNAL \debug_PC[0]~output_o\ : std_logic;
SIGNAL \debug_PC[1]~output_o\ : std_logic;
SIGNAL \debug_PC[2]~output_o\ : std_logic;
SIGNAL \debug_PC[3]~output_o\ : std_logic;
SIGNAL \debug_PC[4]~output_o\ : std_logic;
SIGNAL \debug_PC[5]~output_o\ : std_logic;
SIGNAL \debug_PC[6]~output_o\ : std_logic;
SIGNAL \debug_PC[7]~output_o\ : std_logic;
SIGNAL \debug_PC[8]~output_o\ : std_logic;
SIGNAL \debug_PC[9]~output_o\ : std_logic;
SIGNAL \debug_PC[10]~output_o\ : std_logic;
SIGNAL \debug_PC[11]~output_o\ : std_logic;
SIGNAL \debug_PC[12]~output_o\ : std_logic;
SIGNAL \debug_PC[13]~output_o\ : std_logic;
SIGNAL \debug_PC[14]~output_o\ : std_logic;
SIGNAL \debug_PC[15]~output_o\ : std_logic;
SIGNAL \debug_IR[0]~output_o\ : std_logic;
SIGNAL \debug_IR[1]~output_o\ : std_logic;
SIGNAL \debug_IR[2]~output_o\ : std_logic;
SIGNAL \debug_IR[3]~output_o\ : std_logic;
SIGNAL \debug_IR[4]~output_o\ : std_logic;
SIGNAL \debug_IR[5]~output_o\ : std_logic;
SIGNAL \debug_IR[6]~output_o\ : std_logic;
SIGNAL \debug_IR[7]~output_o\ : std_logic;
SIGNAL \debug_IR[8]~output_o\ : std_logic;
SIGNAL \debug_IR[9]~output_o\ : std_logic;
SIGNAL \debug_IR[10]~output_o\ : std_logic;
SIGNAL \debug_IR[11]~output_o\ : std_logic;
SIGNAL \debug_IR[12]~output_o\ : std_logic;
SIGNAL \debug_IR[13]~output_o\ : std_logic;
SIGNAL \debug_IR[14]~output_o\ : std_logic;
SIGNAL \debug_IR[15]~output_o\ : std_logic;
SIGNAL \debug_state[0]~output_o\ : std_logic;
SIGNAL \debug_state[1]~output_o\ : std_logic;
SIGNAL \debug_state[2]~output_o\ : std_logic;
SIGNAL \debug_r1[0]~output_o\ : std_logic;
SIGNAL \debug_r1[1]~output_o\ : std_logic;
SIGNAL \debug_r1[2]~output_o\ : std_logic;
SIGNAL \debug_r1[3]~output_o\ : std_logic;
SIGNAL \debug_r1[4]~output_o\ : std_logic;
SIGNAL \debug_r1[5]~output_o\ : std_logic;
SIGNAL \debug_r1[6]~output_o\ : std_logic;
SIGNAL \debug_r1[7]~output_o\ : std_logic;
SIGNAL \debug_r1[8]~output_o\ : std_logic;
SIGNAL \debug_r1[9]~output_o\ : std_logic;
SIGNAL \debug_r1[10]~output_o\ : std_logic;
SIGNAL \debug_r1[11]~output_o\ : std_logic;
SIGNAL \debug_r1[12]~output_o\ : std_logic;
SIGNAL \debug_r1[13]~output_o\ : std_logic;
SIGNAL \debug_r1[14]~output_o\ : std_logic;
SIGNAL \debug_r1[15]~output_o\ : std_logic;
SIGNAL \debug_r2[0]~output_o\ : std_logic;
SIGNAL \debug_r2[1]~output_o\ : std_logic;
SIGNAL \debug_r2[2]~output_o\ : std_logic;
SIGNAL \debug_r2[3]~output_o\ : std_logic;
SIGNAL \debug_r2[4]~output_o\ : std_logic;
SIGNAL \debug_r2[5]~output_o\ : std_logic;
SIGNAL \debug_r2[6]~output_o\ : std_logic;
SIGNAL \debug_r2[7]~output_o\ : std_logic;
SIGNAL \debug_r2[8]~output_o\ : std_logic;
SIGNAL \debug_r2[9]~output_o\ : std_logic;
SIGNAL \debug_r2[10]~output_o\ : std_logic;
SIGNAL \debug_r2[11]~output_o\ : std_logic;
SIGNAL \debug_r2[12]~output_o\ : std_logic;
SIGNAL \debug_r2[13]~output_o\ : std_logic;
SIGNAL \debug_r2[14]~output_o\ : std_logic;
SIGNAL \debug_r2[15]~output_o\ : std_logic;
SIGNAL \debug_r3[0]~output_o\ : std_logic;
SIGNAL \debug_r3[1]~output_o\ : std_logic;
SIGNAL \debug_r3[2]~output_o\ : std_logic;
SIGNAL \debug_r3[3]~output_o\ : std_logic;
SIGNAL \debug_r3[4]~output_o\ : std_logic;
SIGNAL \debug_r3[5]~output_o\ : std_logic;
SIGNAL \debug_r3[6]~output_o\ : std_logic;
SIGNAL \debug_r3[7]~output_o\ : std_logic;
SIGNAL \debug_r3[8]~output_o\ : std_logic;
SIGNAL \debug_r3[9]~output_o\ : std_logic;
SIGNAL \debug_r3[10]~output_o\ : std_logic;
SIGNAL \debug_r3[11]~output_o\ : std_logic;
SIGNAL \debug_r3[12]~output_o\ : std_logic;
SIGNAL \debug_r3[13]~output_o\ : std_logic;
SIGNAL \debug_r3[14]~output_o\ : std_logic;
SIGNAL \debug_r3[15]~output_o\ : std_logic;
SIGNAL \debug_r4[0]~output_o\ : std_logic;
SIGNAL \debug_r4[1]~output_o\ : std_logic;
SIGNAL \debug_r4[2]~output_o\ : std_logic;
SIGNAL \debug_r4[3]~output_o\ : std_logic;
SIGNAL \debug_r4[4]~output_o\ : std_logic;
SIGNAL \debug_r4[5]~output_o\ : std_logic;
SIGNAL \debug_r4[6]~output_o\ : std_logic;
SIGNAL \debug_r4[7]~output_o\ : std_logic;
SIGNAL \debug_r4[8]~output_o\ : std_logic;
SIGNAL \debug_r4[9]~output_o\ : std_logic;
SIGNAL \debug_r4[10]~output_o\ : std_logic;
SIGNAL \debug_r4[11]~output_o\ : std_logic;
SIGNAL \debug_r4[12]~output_o\ : std_logic;
SIGNAL \debug_r4[13]~output_o\ : std_logic;
SIGNAL \debug_r4[14]~output_o\ : std_logic;
SIGNAL \debug_r4[15]~output_o\ : std_logic;
SIGNAL \debug_r5[0]~output_o\ : std_logic;
SIGNAL \debug_r5[1]~output_o\ : std_logic;
SIGNAL \debug_r5[2]~output_o\ : std_logic;
SIGNAL \debug_r5[3]~output_o\ : std_logic;
SIGNAL \debug_r5[4]~output_o\ : std_logic;
SIGNAL \debug_r5[5]~output_o\ : std_logic;
SIGNAL \debug_r5[6]~output_o\ : std_logic;
SIGNAL \debug_r5[7]~output_o\ : std_logic;
SIGNAL \debug_r5[8]~output_o\ : std_logic;
SIGNAL \debug_r5[9]~output_o\ : std_logic;
SIGNAL \debug_r5[10]~output_o\ : std_logic;
SIGNAL \debug_r5[11]~output_o\ : std_logic;
SIGNAL \debug_r5[12]~output_o\ : std_logic;
SIGNAL \debug_r5[13]~output_o\ : std_logic;
SIGNAL \debug_r5[14]~output_o\ : std_logic;
SIGNAL \debug_r5[15]~output_o\ : std_logic;
SIGNAL \debug_r6[0]~output_o\ : std_logic;
SIGNAL \debug_r6[1]~output_o\ : std_logic;
SIGNAL \debug_r6[2]~output_o\ : std_logic;
SIGNAL \debug_r6[3]~output_o\ : std_logic;
SIGNAL \debug_r6[4]~output_o\ : std_logic;
SIGNAL \debug_r6[5]~output_o\ : std_logic;
SIGNAL \debug_r6[6]~output_o\ : std_logic;
SIGNAL \debug_r6[7]~output_o\ : std_logic;
SIGNAL \debug_r6[8]~output_o\ : std_logic;
SIGNAL \debug_r6[9]~output_o\ : std_logic;
SIGNAL \debug_r6[10]~output_o\ : std_logic;
SIGNAL \debug_r6[11]~output_o\ : std_logic;
SIGNAL \debug_r6[12]~output_o\ : std_logic;
SIGNAL \debug_r6[13]~output_o\ : std_logic;
SIGNAL \debug_r6[14]~output_o\ : std_logic;
SIGNAL \debug_r6[15]~output_o\ : std_logic;
SIGNAL \debug_r7[0]~output_o\ : std_logic;
SIGNAL \debug_r7[1]~output_o\ : std_logic;
SIGNAL \debug_r7[2]~output_o\ : std_logic;
SIGNAL \debug_r7[3]~output_o\ : std_logic;
SIGNAL \debug_r7[4]~output_o\ : std_logic;
SIGNAL \debug_r7[5]~output_o\ : std_logic;
SIGNAL \debug_r7[6]~output_o\ : std_logic;
SIGNAL \debug_r7[7]~output_o\ : std_logic;
SIGNAL \debug_r7[8]~output_o\ : std_logic;
SIGNAL \debug_r7[9]~output_o\ : std_logic;
SIGNAL \debug_r7[10]~output_o\ : std_logic;
SIGNAL \debug_r7[11]~output_o\ : std_logic;
SIGNAL \debug_r7[12]~output_o\ : std_logic;
SIGNAL \debug_r7[13]~output_o\ : std_logic;
SIGNAL \debug_r7[14]~output_o\ : std_logic;
SIGNAL \debug_r7[15]~output_o\ : std_logic;
SIGNAL \debug_RA[0]~output_o\ : std_logic;
SIGNAL \debug_RA[1]~output_o\ : std_logic;
SIGNAL \debug_RA[2]~output_o\ : std_logic;
SIGNAL \debug_RA[3]~output_o\ : std_logic;
SIGNAL \debug_RA[4]~output_o\ : std_logic;
SIGNAL \debug_RA[5]~output_o\ : std_logic;
SIGNAL \debug_RA[6]~output_o\ : std_logic;
SIGNAL \debug_RA[7]~output_o\ : std_logic;
SIGNAL \debug_RA[8]~output_o\ : std_logic;
SIGNAL \debug_RA[9]~output_o\ : std_logic;
SIGNAL \debug_RA[10]~output_o\ : std_logic;
SIGNAL \debug_RA[11]~output_o\ : std_logic;
SIGNAL \debug_RA[12]~output_o\ : std_logic;
SIGNAL \debug_RA[13]~output_o\ : std_logic;
SIGNAL \debug_RA[14]~output_o\ : std_logic;
SIGNAL \debug_RA[15]~output_o\ : std_logic;
SIGNAL \debug_RB[0]~output_o\ : std_logic;
SIGNAL \debug_RB[1]~output_o\ : std_logic;
SIGNAL \debug_RB[2]~output_o\ : std_logic;
SIGNAL \debug_RB[3]~output_o\ : std_logic;
SIGNAL \debug_RB[4]~output_o\ : std_logic;
SIGNAL \debug_RB[5]~output_o\ : std_logic;
SIGNAL \debug_RB[6]~output_o\ : std_logic;
SIGNAL \debug_RB[7]~output_o\ : std_logic;
SIGNAL \debug_RB[8]~output_o\ : std_logic;
SIGNAL \debug_RB[9]~output_o\ : std_logic;
SIGNAL \debug_RB[10]~output_o\ : std_logic;
SIGNAL \debug_RB[11]~output_o\ : std_logic;
SIGNAL \debug_RB[12]~output_o\ : std_logic;
SIGNAL \debug_RB[13]~output_o\ : std_logic;
SIGNAL \debug_RB[14]~output_o\ : std_logic;
SIGNAL \debug_RB[15]~output_o\ : std_logic;
SIGNAL \debug_Extension[0]~output_o\ : std_logic;
SIGNAL \debug_Extension[1]~output_o\ : std_logic;
SIGNAL \debug_Extension[2]~output_o\ : std_logic;
SIGNAL \debug_Extension[3]~output_o\ : std_logic;
SIGNAL \debug_Extension[4]~output_o\ : std_logic;
SIGNAL \debug_Extension[5]~output_o\ : std_logic;
SIGNAL \debug_Extension[6]~output_o\ : std_logic;
SIGNAL \debug_Extension[7]~output_o\ : std_logic;
SIGNAL \debug_Extension[8]~output_o\ : std_logic;
SIGNAL \debug_Extension[9]~output_o\ : std_logic;
SIGNAL \debug_Extension[10]~output_o\ : std_logic;
SIGNAL \debug_Extension[11]~output_o\ : std_logic;
SIGNAL \debug_Extension[12]~output_o\ : std_logic;
SIGNAL \debug_Extension[13]~output_o\ : std_logic;
SIGNAL \debug_Extension[14]~output_o\ : std_logic;
SIGNAL \debug_Extension[15]~output_o\ : std_logic;
SIGNAL \debug_RZ[0]~output_o\ : std_logic;
SIGNAL \debug_RZ[1]~output_o\ : std_logic;
SIGNAL \debug_RZ[2]~output_o\ : std_logic;
SIGNAL \debug_RZ[3]~output_o\ : std_logic;
SIGNAL \debug_RZ[4]~output_o\ : std_logic;
SIGNAL \debug_RZ[5]~output_o\ : std_logic;
SIGNAL \debug_RZ[6]~output_o\ : std_logic;
SIGNAL \debug_RZ[7]~output_o\ : std_logic;
SIGNAL \debug_RZ[8]~output_o\ : std_logic;
SIGNAL \debug_RZ[9]~output_o\ : std_logic;
SIGNAL \debug_RZ[10]~output_o\ : std_logic;
SIGNAL \debug_RZ[11]~output_o\ : std_logic;
SIGNAL \debug_RZ[12]~output_o\ : std_logic;
SIGNAL \debug_RZ[13]~output_o\ : std_logic;
SIGNAL \debug_RZ[14]~output_o\ : std_logic;
SIGNAL \debug_RZ[15]~output_o\ : std_logic;
SIGNAL \debug_RY[0]~output_o\ : std_logic;
SIGNAL \debug_RY[1]~output_o\ : std_logic;
SIGNAL \debug_RY[2]~output_o\ : std_logic;
SIGNAL \debug_RY[3]~output_o\ : std_logic;
SIGNAL \debug_RY[4]~output_o\ : std_logic;
SIGNAL \debug_RY[5]~output_o\ : std_logic;
SIGNAL \debug_RY[6]~output_o\ : std_logic;
SIGNAL \debug_RY[7]~output_o\ : std_logic;
SIGNAL \debug_RY[8]~output_o\ : std_logic;
SIGNAL \debug_RY[9]~output_o\ : std_logic;
SIGNAL \debug_RY[10]~output_o\ : std_logic;
SIGNAL \debug_RY[11]~output_o\ : std_logic;
SIGNAL \debug_RY[12]~output_o\ : std_logic;
SIGNAL \debug_RY[13]~output_o\ : std_logic;
SIGNAL \debug_RY[14]~output_o\ : std_logic;
SIGNAL \debug_RY[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \P|CU|Mux1~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \P|CU|Mux0~0_combout\ : std_logic;
SIGNAL \P|CU|Mux2~0_combout\ : std_logic;
SIGNAL \P|CU|Equal0~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit0|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit0|Q~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit3|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit3|Q~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \MemIO|PushButton|bit1|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|PushButton|bit1|Q~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit1|Q~q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit4|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit4|Q~q\ : std_logic;
SIGNAL \P|CU|Equal1~0_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit14|Q~q\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit9|Q~q\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit5|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit5|Q~q\ : std_logic;
SIGNAL \P|RY|bit3|Q~0_combout\ : std_logic;
SIGNAL \P|RY|bit6|Q~0_combout\ : std_logic;
SIGNAL \P|CU|Equal0~2_combout\ : std_logic;
SIGNAL \P|CU|RF_write~0_combout\ : std_logic;
SIGNAL \P|CU|RF_write~1_combout\ : std_logic;
SIGNAL \P|CU|RF_write~2_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit7|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit7|Q~q\ : std_logic;
SIGNAL \P|CU|Equal0~0_combout\ : std_logic;
SIGNAL \P|RY|bit5|Q~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[15]~15_combout\ : std_logic;
SIGNAL \P|CU|C_in~1_combout\ : std_logic;
SIGNAL \P|CU|B_inv~0_combout\ : std_logic;
SIGNAL \P|CU|B_inv~1_combout\ : std_logic;
SIGNAL \P|CU|PC_select~0_combout\ : std_logic;
SIGNAL \P|CU|extend[1]~0_combout\ : std_logic;
SIGNAL \P|CU|Equal2~0_combout\ : std_logic;
SIGNAL \P|CU|extend~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[13]~13_combout\ : std_logic;
SIGNAL \P|RB|bit15|Q~1_combout\ : std_logic;
SIGNAL \P|REGfile|R1|bit13|Q~q\ : std_logic;
SIGNAL \P|REGfile|comb~2_combout\ : std_logic;
SIGNAL \P|REGfile|comb~7_combout\ : std_logic;
SIGNAL \P|REGfile|R6|bit13|Q~q\ : std_logic;
SIGNAL \P|REGfile|comb~8_combout\ : std_logic;
SIGNAL \P|REGfile|R7|bit13|Q~q\ : std_logic;
SIGNAL \P|REGfile|comb~6_combout\ : std_logic;
SIGNAL \P|REGfile|R5|bit13|Q~q\ : std_logic;
SIGNAL \P|REGfile|comb~5_combout\ : std_logic;
SIGNAL \P|REGfile|R4|bit13|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux2~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux2~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux2~2_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit13|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux2~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux2~4_combout\ : std_logic;
SIGNAL \P|RB|bit13|Q~q\ : std_logic;
SIGNAL \P|CU|B_select~0_combout\ : std_logic;
SIGNAL \P|CU|extend[1]~6_combout\ : std_logic;
SIGNAL \P|CU|C_in~0_combout\ : std_logic;
SIGNAL \P|CU|extend[2]~2_combout\ : std_logic;
SIGNAL \P|CU|extend[1]~7_combout\ : std_logic;
SIGNAL \P|IMME|Mux4~0_combout\ : std_logic;
SIGNAL \P|IMME|Mux15~1_combout\ : std_logic;
SIGNAL \P|IMME|Mux3~0_combout\ : std_logic;
SIGNAL \P|IMME|Mux3~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[11]~11_combout\ : std_logic;
SIGNAL \P|IMME|Mux4~1_combout\ : std_logic;
SIGNAL \P|IMME|Mux4~2_combout\ : std_logic;
SIGNAL \P|REGfile|R1|bit11|Q~q\ : std_logic;
SIGNAL \P|REGfile|R5|bit11|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux4~0_combout\ : std_logic;
SIGNAL \P|REGfile|R7|bit11|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit11|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux4~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux4~2_combout\ : std_logic;
SIGNAL \P|REGfile|R2|bit11|Q~q\ : std_logic;
SIGNAL \P|REGfile|R3|bit11|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux4~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux4~4_combout\ : std_logic;
SIGNAL \P|RB|bit11|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[11]~4_combout\ : std_logic;
SIGNAL \P|IMME|Mux5~0_combout\ : std_logic;
SIGNAL \P|IMME|Mux5~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[10]~5_combout\ : std_logic;
SIGNAL \P|REGfile|R5|bit9|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit9|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux6~0_combout\ : std_logic;
SIGNAL \P|REGfile|R6|bit9|Q~q\ : std_logic;
SIGNAL \P|REGfile|R7|bit9|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux6~1_combout\ : std_logic;
SIGNAL \P|REGfile|R1|bit9|Q~feeder_combout\ : std_logic;
SIGNAL \P|REGfile|R1|bit9|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux6~2_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit9|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux6~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux6~4_combout\ : std_logic;
SIGNAL \P|RB|bit9|Q~q\ : std_logic;
SIGNAL \P|IMME|Mux6~0_combout\ : std_logic;
SIGNAL \P|IMME|Mux6~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[9]~6_combout\ : std_logic;
SIGNAL \P|IMME|Mux8~1_combout\ : std_logic;
SIGNAL \P|IMME|Mux7~0_combout\ : std_logic;
SIGNAL \P|IMME|Mux7~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[8]~7_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[7]~7_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit7|Q~q\ : std_logic;
SIGNAL \P|REGfile|R1|bit7|Q~feeder_combout\ : std_logic;
SIGNAL \P|REGfile|R1|bit7|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit7|Q~q\ : std_logic;
SIGNAL \P|REGfile|R5|bit7|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit7|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux8~0_combout\ : std_logic;
SIGNAL \P|REGfile|R7|bit7|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux8~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux8~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux8~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux8~4_combout\ : std_logic;
SIGNAL \P|RB|bit7|Q~q\ : std_logic;
SIGNAL \P|IMME|Mux8~0_combout\ : std_logic;
SIGNAL \P|IMME|Mux8~2_combout\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[7]~8_combout\ : std_logic;
SIGNAL \P|IMME|Mux9~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[6]~9_combout\ : std_logic;
SIGNAL \P|IMME|Mux10~0_combout\ : std_logic;
SIGNAL \P|REGfile|R2|bit5|Q~q\ : std_logic;
SIGNAL \P|REGfile|R1|bit5|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit5|Q~q\ : std_logic;
SIGNAL \P|REGfile|R5|bit5|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit5|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux10~0_combout\ : std_logic;
SIGNAL \P|REGfile|R7|bit5|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux10~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux10~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux10~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux10~4_combout\ : std_logic;
SIGNAL \P|RB|bit5|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[5]~10_combout\ : std_logic;
SIGNAL \P|IMME|Mux11~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[4]~11_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit3|Q~q\ : std_logic;
SIGNAL \P|REGfile|R1|bit3|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit3|Q~q\ : std_logic;
SIGNAL \P|REGfile|R7|bit3|Q~q\ : std_logic;
SIGNAL \P|REGfile|R5|bit3|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit3|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux12~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux12~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux12~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux12~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux12~4_combout\ : std_logic;
SIGNAL \P|RB|bit3|Q~q\ : std_logic;
SIGNAL \P|IMME|Mux12~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[3]~12_combout\ : std_logic;
SIGNAL \P|REGfile|R1|bit2|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux13~2_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit2|Q~feeder_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit2|Q~q\ : std_logic;
SIGNAL \P|REGfile|R5|bit2|Q~q\ : std_logic;
SIGNAL \P|REGfile|R7|bit2|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit2|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit2|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux13~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux13~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux13~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux13~4_combout\ : std_logic;
SIGNAL \P|RA|bit2|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[2]~13_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S2|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S3|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S4|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S5|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S6|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S7|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux8~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux8~1_combout\ : std_logic;
SIGNAL \P|RZ|bit7|Q~q\ : std_logic;
SIGNAL \P|RY|bit7|Q~0_combout\ : std_logic;
SIGNAL \P|RY|bit0|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit0|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit0|Q~q\ : std_logic;
SIGNAL \P|CU|Y_select~0_combout\ : std_logic;
SIGNAL \P|CU|Y_select~1_combout\ : std_logic;
SIGNAL \P|RY|bit0|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit0|Q~q\ : std_logic;
SIGNAL \P|REGfile|R1|bit0|Q~feeder_combout\ : std_logic;
SIGNAL \P|REGfile|R1|bit0|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux15~2_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit0|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit0|Q~q\ : std_logic;
SIGNAL \P|REGfile|R5|bit0|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux15~0_combout\ : std_logic;
SIGNAL \P|REGfile|R6|bit0|Q~q\ : std_logic;
SIGNAL \P|REGfile|R7|bit0|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux15~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux15~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux15~4_combout\ : std_logic;
SIGNAL \P|RA|bit0|Q~q\ : std_logic;
SIGNAL \P|CU|MEM_write~2_combout\ : std_logic;
SIGNAL \P|CU|C_in~2_combout\ : std_logic;
SIGNAL \P|IMME|Mux15~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S0|S~combout\ : std_logic;
SIGNAL \P|PC|bit0|Q~0_combout\ : std_logic;
SIGNAL \P|CU|PC_select[0]~4_combout\ : std_logic;
SIGNAL \P|PC|bit0|Q~q\ : std_logic;
SIGNAL \P|Adder_comp|S0|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S1|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S2|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S3|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S4|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S5|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S6|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S7|S~combout\ : std_logic;
SIGNAL \P|PC|bit7|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit7|Q~q\ : std_logic;
SIGNAL \P|PC_temp|bit7|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit7|Q~q\ : std_logic;
SIGNAL \P|RY|bit7|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit7|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux8~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux8~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux8~2_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux8~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux8~4_combout\ : std_logic;
SIGNAL \P|RA|bit7|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|A1|S7|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S8|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S9|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux6~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[9]~9_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux6~1_combout\ : std_logic;
SIGNAL \P|RZ|bit9|Q~q\ : std_logic;
SIGNAL \P|RY|bit9|Q~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S7|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S8|S~combout\ : std_logic;
SIGNAL \P|PC|bit8|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit8|Q~q\ : std_logic;
SIGNAL \P|Adder_comp|S8|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S9|S~combout\ : std_logic;
SIGNAL \P|PC|bit9|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit9|Q~q\ : std_logic;
SIGNAL \P|PC_temp|bit9|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit9|Q~q\ : std_logic;
SIGNAL \P|RY|bit9|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit9|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux6~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux6~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux6~2_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux6~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux6~4_combout\ : std_logic;
SIGNAL \P|RA|bit9|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|A1|S9|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S10|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S11|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux4~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux4~1_combout\ : std_logic;
SIGNAL \P|RZ|bit11|Q~q\ : std_logic;
SIGNAL \P|RY|bit11|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit11|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit11|Q~q\ : std_logic;
SIGNAL \P|RY|bit11|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit11|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux4~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux4~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux4~2_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux4~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux4~4_combout\ : std_logic;
SIGNAL \P|RA|bit11|Q~q\ : std_logic;
SIGNAL \P|Adder_comp|S9|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S10|S~combout\ : std_logic;
SIGNAL \P|PC|bit10|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit10|Q~q\ : std_logic;
SIGNAL \P|Adder_comp|S10|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S11|S~combout\ : std_logic;
SIGNAL \P|PC|bit11|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit11|Q~q\ : std_logic;
SIGNAL \P|Adder_comp|S11|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S12|S~combout\ : std_logic;
SIGNAL \P|PC|bit12|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit12|Q~q\ : std_logic;
SIGNAL \P|Adder_comp|S12|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S13|S~combout\ : std_logic;
SIGNAL \P|PC|bit13|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit13|Q~q\ : std_logic;
SIGNAL \P|IMME|Mux2~0_combout\ : std_logic;
SIGNAL \P|IMME|Mux2~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[13]~2_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux2~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux2~1_combout\ : std_logic;
SIGNAL \P|RZ|bit13|Q~q\ : std_logic;
SIGNAL \P|RY|bit13|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit13|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit13|Q~q\ : std_logic;
SIGNAL \P|RY|bit13|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit13|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux2~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux2~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux2~2_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux2~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux2~4_combout\ : std_logic;
SIGNAL \P|RA|bit13|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[12]~3_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S11|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S12|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S13|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S2|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[0]~15_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S0|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|Z~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S13|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|Z~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S5|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S4|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|Z~4_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S0|C_out~0_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit1|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit1|Q~q\ : std_logic;
SIGNAL \P|REGfile|R5|bit1|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit1|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux14~0_combout\ : std_logic;
SIGNAL \P|REGfile|R7|bit1|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit1|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux14~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux14~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux14~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux14~4_combout\ : std_logic;
SIGNAL \P|RB|bit1|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[1]~14_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S1|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S3|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|Z~3_combout\ : std_logic;
SIGNAL \P|ALU_comp|XORout[12]~3_combout\ : std_logic;
SIGNAL \P|ALU_comp|Z~2_combout\ : std_logic;
SIGNAL \P|ALU_comp|Z~5_combout\ : std_logic;
SIGNAL \P|Adder_comp|S13|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S14|S~combout\ : std_logic;
SIGNAL \P|PC|bit14|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit14|Q~q\ : std_logic;
SIGNAL \P|IMME|Mux1~0_combout\ : std_logic;
SIGNAL \P|IMME|Mux1~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[14]~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S14|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|A1|S15|S~combout\ : std_logic;
SIGNAL \P|ALU_comp|Z~6_combout\ : std_logic;
SIGNAL \P|CU|Status_enable~0_combout\ : std_logic;
SIGNAL \P|CU|Status_enable~1_combout\ : std_logic;
SIGNAL \P|Status|bit0|Q~q\ : std_logic;
SIGNAL \P|CU|extend[2]~3_combout\ : std_logic;
SIGNAL \P|CU|extend~5_combout\ : std_logic;
SIGNAL \P|IMME|Mux0~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S14|C_out~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S15|S~combout\ : std_logic;
SIGNAL \P|PC|bit15|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit15|Q~q\ : std_logic;
SIGNAL \P|IMME|Mux0~1_combout\ : std_logic;
SIGNAL \P|REGfile|R7|bit15|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit15|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit15|Q~q\ : std_logic;
SIGNAL \P|REGfile|R5|bit15|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux0~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux0~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux0~2_combout\ : std_logic;
SIGNAL \P|REGfile|R2|bit15|Q~q\ : std_logic;
SIGNAL \P|REGfile|R3|bit15|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux0~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux0~4_combout\ : std_logic;
SIGNAL \P|RB|bit15|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|M2|result[15]~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux0~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux0~1_combout\ : std_logic;
SIGNAL \P|RZ|bit15|Q~q\ : std_logic;
SIGNAL \P|RY|bit15|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit15|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit15|Q~q\ : std_logic;
SIGNAL \P|RY|bit15|Q~q\ : std_logic;
SIGNAL \P|REGfile|R1|bit15|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux0~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux0~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux0~2_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux0~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux0~4_combout\ : std_logic;
SIGNAL \P|RA|bit15|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|V~combout\ : std_logic;
SIGNAL \P|Status|bit1|Q~q\ : std_logic;
SIGNAL \P|Status|bit3|Q~q\ : std_logic;
SIGNAL \P|CU|extend~4_combout\ : std_logic;
SIGNAL \P|CU|extend~8_combout\ : std_logic;
SIGNAL \P|CU|INC_select~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S5|S~combout\ : std_logic;
SIGNAL \P|PC|bit5|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit5|Q~q\ : std_logic;
SIGNAL \P|PC_temp|bit5|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit5|Q~q\ : std_logic;
SIGNAL \P|RY|bit5|Q~q\ : std_logic;
SIGNAL \P|REGfile|R3|bit5|Q~feeder_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit5|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux10~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux10~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux10~2_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux10~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux10~4_combout\ : std_logic;
SIGNAL \P|RA|bit5|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[5]~5_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux10~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux10~1_combout\ : std_logic;
SIGNAL \P|RZ|bit5|Q~q\ : std_logic;
SIGNAL \P|muxMA|result[5]~6_combout\ : std_logic;
SIGNAL \P|muxMA|result[7]~5_combout\ : std_logic;
SIGNAL \P|muxMA|result[8]~4_combout\ : std_logic;
SIGNAL \P|muxMA|result[9]~3_combout\ : std_logic;
SIGNAL \P|muxMA|result[10]~2_combout\ : std_logic;
SIGNAL \P|muxMA|result[11]~1_combout\ : std_logic;
SIGNAL \P|RM|bit7|Q~feeder_combout\ : std_logic;
SIGNAL \P|RM|bit7|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[7]~15_combout\ : std_logic;
SIGNAL \P|IR|bit7|Q~q\ : std_logic;
SIGNAL \P|CU|C_select[0]~0_combout\ : std_logic;
SIGNAL \P|CU|C_select[0]~1_combout\ : std_logic;
SIGNAL \P|muxC|Mux2~0_combout\ : std_logic;
SIGNAL \P|REGfile|comb~0_combout\ : std_logic;
SIGNAL \P|REGfile|comb~1_combout\ : std_logic;
SIGNAL \P|REGfile|R1|bit6|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit6|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux9~2_combout\ : std_logic;
SIGNAL \P|REGfile|R5|bit6|Q~q\ : std_logic;
SIGNAL \P|REGfile|R7|bit6|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit6|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit6|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux9~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux9~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux9~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux9~4_combout\ : std_logic;
SIGNAL \P|RA|bit6|Q~q\ : std_logic;
SIGNAL \P|Adder_comp|S6|S~combout\ : std_logic;
SIGNAL \P|PC|bit6|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit6|Q~q\ : std_logic;
SIGNAL \P|PC_temp|bit6|Q~q\ : std_logic;
SIGNAL \P|RY|bit6|Q~q\ : std_logic;
SIGNAL \P|REGfile|R3|bit6|Q~feeder_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit6|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux9~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux9~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux9~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux9~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux9~4_combout\ : std_logic;
SIGNAL \P|RB|bit6|Q~q\ : std_logic;
SIGNAL \P|RM|bit6|Q~q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit6|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit6|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[6]~14_combout\ : std_logic;
SIGNAL \P|IR|bit6|Q~q\ : std_logic;
SIGNAL \P|CU|PC_select~1_combout\ : std_logic;
SIGNAL \P|CU|PC_select[0]~2_combout\ : std_logic;
SIGNAL \P|CU|PC_select[0]~3_combout\ : std_logic;
SIGNAL \P|Adder_comp|S3|S~combout\ : std_logic;
SIGNAL \P|PC|bit3|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit3|Q~q\ : std_logic;
SIGNAL \P|PC_temp|bit3|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit3|Q~q\ : std_logic;
SIGNAL \P|RY|bit3|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit3|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux12~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux12~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux12~2_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux12~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux12~4_combout\ : std_logic;
SIGNAL \P|RA|bit3|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[3]~3_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux12~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux12~1_combout\ : std_logic;
SIGNAL \P|RZ|bit3|Q~q\ : std_logic;
SIGNAL \P|muxMA|result[3]~7_combout\ : std_logic;
SIGNAL \P|RM|bit5|Q~feeder_combout\ : std_logic;
SIGNAL \P|RM|bit5|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[5]~13_combout\ : std_logic;
SIGNAL \P|IR|bit5|Q~q\ : std_logic;
SIGNAL \P|IMME|Mux13~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S2|S~combout\ : std_logic;
SIGNAL \P|PC|bit2|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit2|Q~q\ : std_logic;
SIGNAL \P|muxMA|result[2]~9_combout\ : std_logic;
SIGNAL \P|RM|bit9|Q~feeder_combout\ : std_logic;
SIGNAL \P|RM|bit9|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[9]~17_combout\ : std_logic;
SIGNAL \P|IR|bit9|Q~q\ : std_logic;
SIGNAL \P|muxC|Mux0~0_combout\ : std_logic;
SIGNAL \P|REGfile|comb~3_combout\ : std_logic;
SIGNAL \P|REGfile|R2|bit14|Q~q\ : std_logic;
SIGNAL \P|REGfile|R1|bit14|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux1~2_combout\ : std_logic;
SIGNAL \P|REGfile|R4|bit14|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit14|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux1~0_combout\ : std_logic;
SIGNAL \P|REGfile|R5|bit14|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux1~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux1~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux1~4_combout\ : std_logic;
SIGNAL \P|RA|bit14|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|XORout[14]~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[14]~14_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux1~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux1~1_combout\ : std_logic;
SIGNAL \P|RZ|bit14|Q~q\ : std_logic;
SIGNAL \P|RY|bit14|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit14|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit14|Q~q\ : std_logic;
SIGNAL \P|RY|bit14|Q~q\ : std_logic;
SIGNAL \P|REGfile|R7|bit14|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux1~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux1~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux1~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux1~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux1~4_combout\ : std_logic;
SIGNAL \P|RB|bit14|Q~q\ : std_logic;
SIGNAL \P|RM|bit14|Q~q\ : std_logic;
SIGNAL \P|RM|bit15|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[15]~23_combout\ : std_logic;
SIGNAL \P|IR|bit15|Q~feeder_combout\ : std_logic;
SIGNAL \P|IR|bit15|Q~q\ : std_logic;
SIGNAL \P|RA|bit6|Q~1_combout\ : std_logic;
SIGNAL \P|REGfile|R1|bit8|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit8|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux7~2_combout\ : std_logic;
SIGNAL \P|REGfile|R5|bit8|Q~q\ : std_logic;
SIGNAL \P|REGfile|R7|bit8|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit8|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit8|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux7~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux7~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux7~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux7~4_combout\ : std_logic;
SIGNAL \P|RA|bit8|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|XORout[8]~2_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[8]~8_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux7~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux7~1_combout\ : std_logic;
SIGNAL \P|RZ|bit8|Q~q\ : std_logic;
SIGNAL \P|RY|bit8|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit8|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit8|Q~q\ : std_logic;
SIGNAL \P|RY|bit8|Q~q\ : std_logic;
SIGNAL \P|REGfile|R3|bit8|Q~feeder_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit8|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux7~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux7~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux7~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux7~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux7~4_combout\ : std_logic;
SIGNAL \P|RB|bit8|Q~q\ : std_logic;
SIGNAL \P|RM|bit8|Q~feeder_combout\ : std_logic;
SIGNAL \P|RM|bit8|Q~q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit8|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[8]~16_combout\ : std_logic;
SIGNAL \P|IR|bit8|Q~q\ : std_logic;
SIGNAL \P|IMME|Mux14~0_combout\ : std_logic;
SIGNAL \P|Adder_comp|S1|S~combout\ : std_logic;
SIGNAL \P|PC|bit1|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit1|Q~q\ : std_logic;
SIGNAL \P|muxMA|result[1]~10_combout\ : std_logic;
SIGNAL \P|RM|bit11|Q~feeder_combout\ : std_logic;
SIGNAL \P|RM|bit11|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[11]~19_combout\ : std_logic;
SIGNAL \P|IR|bit11|Q~feeder_combout\ : std_logic;
SIGNAL \P|IR|bit11|Q~q\ : std_logic;
SIGNAL \P|muxC|Mux1~0_combout\ : std_logic;
SIGNAL \P|REGfile|comb~4_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit12|Q~q\ : std_logic;
SIGNAL \P|REGfile|R1|bit12|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit12|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux3~2_combout\ : std_logic;
SIGNAL \P|REGfile|R5|bit12|Q~q\ : std_logic;
SIGNAL \P|REGfile|R7|bit12|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit12|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux3~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux3~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux3~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux3~4_combout\ : std_logic;
SIGNAL \P|RA|bit12|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[12]~12_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux3~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux3~1_combout\ : std_logic;
SIGNAL \P|RZ|bit12|Q~q\ : std_logic;
SIGNAL \P|RY|bit12|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit12|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit12|Q~q\ : std_logic;
SIGNAL \P|RY|bit12|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit12|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux3~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux3~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux3~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux3~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux3~4_combout\ : std_logic;
SIGNAL \P|RB|bit12|Q~q\ : std_logic;
SIGNAL \P|RM|bit12|Q~feeder_combout\ : std_logic;
SIGNAL \P|RM|bit12|Q~q\ : std_logic;
SIGNAL \P|RM|bit13|Q~feeder_combout\ : std_logic;
SIGNAL \P|RM|bit13|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[13]~21_combout\ : std_logic;
SIGNAL \P|IR|bit13|Q~q\ : std_logic;
SIGNAL \P|REGfile|R5|bit10|Q~q\ : std_logic;
SIGNAL \P|REGfile|R7|bit10|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit10|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux5~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux5~1_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit10|Q~feeder_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit10|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit10|Q~q\ : std_logic;
SIGNAL \P|REGfile|R1|bit10|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux5~2_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux5~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux5~4_combout\ : std_logic;
SIGNAL \P|RA|bit10|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|XORout[10]~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[10]~10_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux5~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux5~1_combout\ : std_logic;
SIGNAL \P|RZ|bit10|Q~q\ : std_logic;
SIGNAL \P|RY|bit10|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit10|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit10|Q~q\ : std_logic;
SIGNAL \P|RY|bit10|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit10|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux5~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux5~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux5~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux5~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux5~4_combout\ : std_logic;
SIGNAL \P|RB|bit10|Q~q\ : std_logic;
SIGNAL \P|RM|bit10|Q~feeder_combout\ : std_logic;
SIGNAL \P|RM|bit10|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[10]~18_combout\ : std_logic;
SIGNAL \P|IR|bit10|Q~feeder_combout\ : std_logic;
SIGNAL \P|IR|bit10|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|XORout[4]~7_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[4]~4_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux11~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux11~1_combout\ : std_logic;
SIGNAL \P|RZ|bit4|Q~q\ : std_logic;
SIGNAL \P|RY|bit4|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit4|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit4|Q~q\ : std_logic;
SIGNAL \P|RY|bit4|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit4|Q~q\ : std_logic;
SIGNAL \P|REGfile|R1|bit4|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux11~2_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit4|Q~feeder_combout\ : std_logic;
SIGNAL \P|REGfile|R3|bit4|Q~q\ : std_logic;
SIGNAL \P|REGfile|R7|bit4|Q~q\ : std_logic;
SIGNAL \P|REGfile|R6|bit4|Q~q\ : std_logic;
SIGNAL \P|REGfile|R4|bit4|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux11~0_combout\ : std_logic;
SIGNAL \P|REGfile|R5|bit4|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux11~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux11~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux11~4_combout\ : std_logic;
SIGNAL \P|RB|bit4|Q~q\ : std_logic;
SIGNAL \P|RM|bit4|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[4]~12_combout\ : std_logic;
SIGNAL \P|IR|bit4|Q~q\ : std_logic;
SIGNAL \P|CU|Equal9~0_combout\ : std_logic;
SIGNAL \P|CU|A_inv~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|XORout[6]~4_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[6]~6_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux9~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux9~1_combout\ : std_logic;
SIGNAL \P|RZ|bit6|Q~q\ : std_logic;
SIGNAL \P|muxMA|result[6]~12_combout\ : std_logic;
SIGNAL \MemIO|Equal0~0_combout\ : std_logic;
SIGNAL \MemIO|Equal0~1_combout\ : std_logic;
SIGNAL \MemIO|Equal0~2_combout\ : std_logic;
SIGNAL \P|muxMA|result[12]~0_combout\ : std_logic;
SIGNAL \MemIO|Data_out~0_combout\ : std_logic;
SIGNAL \MemIO|Data_out~2_combout\ : std_logic;
SIGNAL \MemIO|Data_out~1_combout\ : std_logic;
SIGNAL \MemIO|Data_out~3_combout\ : std_logic;
SIGNAL \MemIO|Data_out~5_combout\ : std_logic;
SIGNAL \MemIO|Data_out[1]~8_combout\ : std_logic;
SIGNAL \P|RM|bit1|Q~feeder_combout\ : std_logic;
SIGNAL \P|RM|bit1|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[1]~9_combout\ : std_logic;
SIGNAL \P|IR|bit1|Q~q\ : std_logic;
SIGNAL \P|CU|ALU_op[0]~4_combout\ : std_logic;
SIGNAL \P|CU|ALU_op[0]~8_combout\ : std_logic;
SIGNAL \P|CU|ALU_op[0]~9_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[1]~1_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux14~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux14~1_combout\ : std_logic;
SIGNAL \P|RZ|bit1|Q~q\ : std_logic;
SIGNAL \P|RY|bit1|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit1|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit1|Q~q\ : std_logic;
SIGNAL \P|RY|bit1|Q~q\ : std_logic;
SIGNAL \P|REGfile|R1|bit1|Q~q\ : std_logic;
SIGNAL \P|REGfile|M1|Mux14~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux14~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux14~2_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux14~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux14~4_combout\ : std_logic;
SIGNAL \P|RA|bit1|Q~q\ : std_logic;
SIGNAL \P|ALU_comp|A1|S1|C_out~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[2]~2_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux13~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|XORout[2]~6_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux13~1_combout\ : std_logic;
SIGNAL \P|RZ|bit2|Q~q\ : std_logic;
SIGNAL \P|RY|bit2|Q~0_combout\ : std_logic;
SIGNAL \P|PC_temp|bit2|Q~feeder_combout\ : std_logic;
SIGNAL \P|PC_temp|bit2|Q~q\ : std_logic;
SIGNAL \P|RY|bit2|Q~q\ : std_logic;
SIGNAL \P|REGfile|R2|bit2|Q~q\ : std_logic;
SIGNAL \P|REGfile|M2|Mux13~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux13~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux13~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux13~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux13~4_combout\ : std_logic;
SIGNAL \P|RB|bit2|Q~q\ : std_logic;
SIGNAL \P|RM|bit2|Q~feeder_combout\ : std_logic;
SIGNAL \P|RM|bit2|Q~q\ : std_logic;
SIGNAL \P|RM|bit3|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[3]~11_combout\ : std_logic;
SIGNAL \P|IR|bit3|Q~q\ : std_logic;
SIGNAL \P|CU|ALU_op[1]~5_combout\ : std_logic;
SIGNAL \P|CU|ALU_op[1]~6_combout\ : std_logic;
SIGNAL \P|CU|ALU_op[1]~7_combout\ : std_logic;
SIGNAL \P|ALU_comp|M1|result[0]~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux15~0_combout\ : std_logic;
SIGNAL \P|ALU_comp|XORout[0]~5_combout\ : std_logic;
SIGNAL \P|ALU_comp|M3|Mux15~1_combout\ : std_logic;
SIGNAL \P|RZ|bit0|Q~q\ : std_logic;
SIGNAL \P|muxMA|result[0]~8_combout\ : std_logic;
SIGNAL \MemIO|Data_out[0]~7_combout\ : std_logic;
SIGNAL \P|IR|bit0|Q~q\ : std_logic;
SIGNAL \P|CU|MEM_write~3_combout\ : std_logic;
SIGNAL \MemIO|comb~2_combout\ : std_logic;
SIGNAL \MemIO|Data_out[14]~22_combout\ : std_logic;
SIGNAL \P|IR|bit14|Q~q\ : std_logic;
SIGNAL \P|RA|bit6|Q~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux11~2_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux11~0_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux11~1_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux11~3_combout\ : std_logic;
SIGNAL \P|REGfile|M1|Mux11~4_combout\ : std_logic;
SIGNAL \P|RA|bit4|Q~q\ : std_logic;
SIGNAL \P|Adder_comp|S4|S~combout\ : std_logic;
SIGNAL \P|PC|bit4|Q~0_combout\ : std_logic;
SIGNAL \P|PC|bit4|Q~q\ : std_logic;
SIGNAL \P|muxMA|result[4]~11_combout\ : std_logic;
SIGNAL \MemIO|Data_out[9]~6_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \MemIO|SliderSwitch|bit2|Q~q\ : std_logic;
SIGNAL \MemIO|Data_out[2]~10_combout\ : std_logic;
SIGNAL \P|IR|bit2|Q~q\ : std_logic;
SIGNAL \P|CU|MA_select~0_combout\ : std_logic;
SIGNAL \MemIO|Data_out~4_combout\ : std_logic;
SIGNAL \MemIO|Data_out[12]~20_combout\ : std_logic;
SIGNAL \P|IR|bit12|Q~feeder_combout\ : std_logic;
SIGNAL \P|IR|bit12|Q~q\ : std_logic;
SIGNAL \P|RB|bit15|Q~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux15~0_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux15~1_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux15~2_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux15~3_combout\ : std_logic;
SIGNAL \P|REGfile|M2|Mux15~4_combout\ : std_logic;
SIGNAL \P|RB|bit0|Q~q\ : std_logic;
SIGNAL \P|RM|bit0|Q~q\ : std_logic;
SIGNAL \MemIO|LEDRed|bit0|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|comb~0_combout\ : std_logic;
SIGNAL \MemIO|LEDRed|bit0|Q~q\ : std_logic;
SIGNAL \MemIO|LEDRed|bit1|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|LEDRed|bit1|Q~q\ : std_logic;
SIGNAL \MemIO|LEDRed|bit2|Q~q\ : std_logic;
SIGNAL \MemIO|LEDRed|bit3|Q~q\ : std_logic;
SIGNAL \MemIO|LEDRed|bit4|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|LEDRed|bit4|Q~q\ : std_logic;
SIGNAL \MemIO|LEDRed|bit5|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|LEDRed|bit5|Q~q\ : std_logic;
SIGNAL \MemIO|LEDRed|bit6|Q~q\ : std_logic;
SIGNAL \MemIO|LEDRed|bit7|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|LEDRed|bit7|Q~q\ : std_logic;
SIGNAL \MemIO|LEDRed|bit8|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|LEDRed|bit8|Q~q\ : std_logic;
SIGNAL \MemIO|LEDRed|bit9|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|LEDRed|bit9|Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit0|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|comb~1_combout\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit0|Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit1|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit1|Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit2|Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit3|Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit4|Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit5|Q~feeder_combout\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit5|Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit6|Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit7|Q~q\ : std_logic;
SIGNAL \MemIO|Memory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \P|CU|current_state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit7|ALT_INV_Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit6|ALT_INV_Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit5|ALT_INV_Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit4|ALT_INV_Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit3|ALT_INV_Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit2|ALT_INV_Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit1|ALT_INV_Q~q\ : std_logic;
SIGNAL \MemIO|HEX_Display|bit0|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
LEDR <= ww_LEDR;
HEX_DP <= ww_HEX_DP;
ww_SW <= SW;
ww_KEY <= KEY;
debug_PC <= ww_debug_PC;
debug_IR <= ww_debug_IR;
debug_state <= ww_debug_state;
debug_r1 <= ww_debug_r1;
debug_r2 <= ww_debug_r2;
debug_r3 <= ww_debug_r3;
debug_r4 <= ww_debug_r4;
debug_r5 <= ww_debug_r5;
debug_r6 <= ww_debug_r6;
debug_r7 <= ww_debug_r7;
debug_RA <= ww_debug_RA;
debug_RB <= ww_debug_RB;
debug_Extension <= ww_debug_Extension;
debug_RZ <= ww_debug_RZ;
debug_RY <= ww_debug_RY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\P|RM|bit1|Q~q\ & \P|RM|bit0|Q~q\);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\P|muxMA|result[11]~1_combout\ & \P|muxMA|result[10]~2_combout\ & \P|muxMA|result[9]~3_combout\ & \P|muxMA|result[8]~4_combout\ & \P|muxMA|result[7]~5_combout\ & 
\P|muxMA|result[6]~12_combout\ & \P|muxMA|result[5]~6_combout\ & \P|muxMA|result[4]~11_combout\ & \P|muxMA|result[3]~7_combout\ & \P|muxMA|result[2]~9_combout\ & \P|muxMA|result[1]~10_combout\ & \P|muxMA|result[0]~8_combout\);

\MemIO|Memory|altsyncram_component|auto_generated|q_a\(0) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\MemIO|Memory|altsyncram_component|auto_generated|q_a\(1) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\P|RM|bit3|Q~q\ & \P|RM|bit2|Q~q\);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\P|muxMA|result[11]~1_combout\ & \P|muxMA|result[10]~2_combout\ & \P|muxMA|result[9]~3_combout\ & \P|muxMA|result[8]~4_combout\ & \P|muxMA|result[7]~5_combout\ & 
\P|muxMA|result[6]~12_combout\ & \P|muxMA|result[5]~6_combout\ & \P|muxMA|result[4]~11_combout\ & \P|muxMA|result[3]~7_combout\ & \P|muxMA|result[2]~9_combout\ & \P|muxMA|result[1]~10_combout\ & \P|muxMA|result[0]~8_combout\);

\MemIO|Memory|altsyncram_component|auto_generated|q_a\(2) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\MemIO|Memory|altsyncram_component|auto_generated|q_a\(3) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\P|RM|bit5|Q~q\ & \P|RM|bit4|Q~q\);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\P|muxMA|result[11]~1_combout\ & \P|muxMA|result[10]~2_combout\ & \P|muxMA|result[9]~3_combout\ & \P|muxMA|result[8]~4_combout\ & \P|muxMA|result[7]~5_combout\ & 
\P|muxMA|result[6]~12_combout\ & \P|muxMA|result[5]~6_combout\ & \P|muxMA|result[4]~11_combout\ & \P|muxMA|result[3]~7_combout\ & \P|muxMA|result[2]~9_combout\ & \P|muxMA|result[1]~10_combout\ & \P|muxMA|result[0]~8_combout\);

\MemIO|Memory|altsyncram_component|auto_generated|q_a\(4) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\MemIO|Memory|altsyncram_component|auto_generated|q_a\(5) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\P|RM|bit7|Q~q\ & \P|RM|bit6|Q~q\);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\P|muxMA|result[11]~1_combout\ & \P|muxMA|result[10]~2_combout\ & \P|muxMA|result[9]~3_combout\ & \P|muxMA|result[8]~4_combout\ & \P|muxMA|result[7]~5_combout\ & 
\P|muxMA|result[6]~12_combout\ & \P|muxMA|result[5]~6_combout\ & \P|muxMA|result[4]~11_combout\ & \P|muxMA|result[3]~7_combout\ & \P|muxMA|result[2]~9_combout\ & \P|muxMA|result[1]~10_combout\ & \P|muxMA|result[0]~8_combout\);

\MemIO|Memory|altsyncram_component|auto_generated|q_a\(6) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\MemIO|Memory|altsyncram_component|auto_generated|q_a\(7) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\P|RM|bit9|Q~q\ & \P|RM|bit8|Q~q\);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\P|muxMA|result[11]~1_combout\ & \P|muxMA|result[10]~2_combout\ & \P|muxMA|result[9]~3_combout\ & \P|muxMA|result[8]~4_combout\ & \P|muxMA|result[7]~5_combout\ & 
\P|muxMA|result[6]~12_combout\ & \P|muxMA|result[5]~6_combout\ & \P|muxMA|result[4]~11_combout\ & \P|muxMA|result[3]~7_combout\ & \P|muxMA|result[2]~9_combout\ & \P|muxMA|result[1]~10_combout\ & \P|muxMA|result[0]~8_combout\);

\MemIO|Memory|altsyncram_component|auto_generated|q_a\(8) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\MemIO|Memory|altsyncram_component|auto_generated|q_a\(9) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (\P|RM|bit11|Q~q\ & \P|RM|bit10|Q~q\);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\P|muxMA|result[11]~1_combout\ & \P|muxMA|result[10]~2_combout\ & \P|muxMA|result[9]~3_combout\ & \P|muxMA|result[8]~4_combout\ & \P|muxMA|result[7]~5_combout\ & 
\P|muxMA|result[6]~12_combout\ & \P|muxMA|result[5]~6_combout\ & \P|muxMA|result[4]~11_combout\ & \P|muxMA|result[3]~7_combout\ & \P|muxMA|result[2]~9_combout\ & \P|muxMA|result[1]~10_combout\ & \P|muxMA|result[0]~8_combout\);

\MemIO|Memory|altsyncram_component|auto_generated|q_a\(10) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\MemIO|Memory|altsyncram_component|auto_generated|q_a\(11) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\P|RM|bit13|Q~q\ & \P|RM|bit12|Q~q\);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\P|muxMA|result[11]~1_combout\ & \P|muxMA|result[10]~2_combout\ & \P|muxMA|result[9]~3_combout\ & \P|muxMA|result[8]~4_combout\ & \P|muxMA|result[7]~5_combout\ & 
\P|muxMA|result[6]~12_combout\ & \P|muxMA|result[5]~6_combout\ & \P|muxMA|result[4]~11_combout\ & \P|muxMA|result[3]~7_combout\ & \P|muxMA|result[2]~9_combout\ & \P|muxMA|result[1]~10_combout\ & \P|muxMA|result[0]~8_combout\);

\MemIO|Memory|altsyncram_component|auto_generated|q_a\(12) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\MemIO|Memory|altsyncram_component|auto_generated|q_a\(13) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\P|RM|bit15|Q~q\ & \P|RM|bit14|Q~q\);

\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\P|muxMA|result[11]~1_combout\ & \P|muxMA|result[10]~2_combout\ & \P|muxMA|result[9]~3_combout\ & \P|muxMA|result[8]~4_combout\ & \P|muxMA|result[7]~5_combout\ & 
\P|muxMA|result[6]~12_combout\ & \P|muxMA|result[5]~6_combout\ & \P|muxMA|result[4]~11_combout\ & \P|muxMA|result[3]~7_combout\ & \P|muxMA|result[2]~9_combout\ & \P|muxMA|result[1]~10_combout\ & \P|muxMA|result[0]~8_combout\);

\MemIO|Memory|altsyncram_component|auto_generated|q_a\(14) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\MemIO|Memory|altsyncram_component|auto_generated|q_a\(15) <= \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\MemIO|HEX_Display|bit7|ALT_INV_Q~q\ <= NOT \MemIO|HEX_Display|bit7|Q~q\;
\MemIO|HEX_Display|bit6|ALT_INV_Q~q\ <= NOT \MemIO|HEX_Display|bit6|Q~q\;
\MemIO|HEX_Display|bit5|ALT_INV_Q~q\ <= NOT \MemIO|HEX_Display|bit5|Q~q\;
\MemIO|HEX_Display|bit4|ALT_INV_Q~q\ <= NOT \MemIO|HEX_Display|bit4|Q~q\;
\MemIO|HEX_Display|bit3|ALT_INV_Q~q\ <= NOT \MemIO|HEX_Display|bit3|Q~q\;
\MemIO|HEX_Display|bit2|ALT_INV_Q~q\ <= NOT \MemIO|HEX_Display|bit2|Q~q\;
\MemIO|HEX_Display|bit1|ALT_INV_Q~q\ <= NOT \MemIO|HEX_Display|bit1|Q~q\;
\MemIO|HEX_Display|bit0|ALT_INV_Q~q\ <= NOT \MemIO|HEX_Display|bit0|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|LEDRed|bit0|Q~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|LEDRed|bit1|Q~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|LEDRed|bit2|Q~q\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|LEDRed|bit3|Q~q\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|LEDRed|bit4|Q~q\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|LEDRed|bit5|Q~q\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|LEDRed|bit6|Q~q\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|LEDRed|bit7|Q~q\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|LEDRed|bit8|Q~q\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|LEDRed|bit9|Q~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX_DP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|HEX_Display|bit0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \HEX_DP[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX_DP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|HEX_Display|bit1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \HEX_DP[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX_DP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|HEX_Display|bit2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \HEX_DP[2]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\HEX_DP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|HEX_Display|bit3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \HEX_DP[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\HEX_DP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|HEX_Display|bit4|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \HEX_DP[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\HEX_DP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|HEX_Display|bit5|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \HEX_DP[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX_DP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|HEX_Display|bit6|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \HEX_DP[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX_DP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemIO|HEX_Display|bit7|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \HEX_DP[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\debug_PC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\debug_PC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\debug_PC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\debug_PC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\debug_PC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\debug_PC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\debug_PC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[6]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\debug_PC[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[7]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\debug_PC[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[8]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\debug_PC[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[9]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\debug_PC[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[10]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\debug_PC[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[11]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\debug_PC[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[12]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\debug_PC[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[13]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\debug_PC[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[14]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\debug_PC[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|PC|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_PC[15]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\debug_IR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[0]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\debug_IR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\debug_IR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\debug_IR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\debug_IR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[4]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\debug_IR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\debug_IR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\debug_IR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\debug_IR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[8]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\debug_IR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[9]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\debug_IR[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[10]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\debug_IR[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[11]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\debug_IR[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[12]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\debug_IR[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[13]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\debug_IR[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[14]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\debug_IR[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IR|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_IR[15]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\debug_state[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|CU|current_state\(0),
	devoe => ww_devoe,
	o => \debug_state[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\debug_state[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|CU|current_state\(1),
	devoe => ww_devoe,
	o => \debug_state[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\debug_state[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|CU|current_state\(2),
	devoe => ww_devoe,
	o => \debug_state[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\debug_r1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[0]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\debug_r1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\debug_r1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\debug_r1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\debug_r1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\debug_r1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[5]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\debug_r1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\debug_r1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\debug_r1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[8]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\debug_r1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[9]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\debug_r1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[10]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\debug_r1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[11]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\debug_r1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[12]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\debug_r1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[13]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\debug_r1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[14]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\debug_r1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R1|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_r1[15]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\debug_r2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\debug_r2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\debug_r2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\debug_r2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\debug_r2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\debug_r2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\debug_r2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\debug_r2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[7]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\debug_r2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[8]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\debug_r2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[9]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\debug_r2[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[10]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\debug_r2[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[11]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\debug_r2[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[12]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\debug_r2[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[13]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\debug_r2[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[14]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\debug_r2[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R2|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_r2[15]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\debug_r3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\debug_r3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[1]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\debug_r3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\debug_r3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\debug_r3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[4]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\debug_r3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\debug_r3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\debug_r3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[7]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\debug_r3[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[8]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\debug_r3[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[9]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\debug_r3[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[10]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\debug_r3[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[11]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\debug_r3[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[12]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\debug_r3[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[13]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\debug_r3[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[14]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\debug_r3[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R3|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_r3[15]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\debug_r4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[0]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\debug_r4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\debug_r4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[2]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\debug_r4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[3]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\debug_r4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\debug_r4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\debug_r4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[6]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\debug_r4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[7]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\debug_r4[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[8]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\debug_r4[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[9]~output_o\);

-- Location: IOOBUF_X78_Y3_N16
\debug_r4[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[10]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\debug_r4[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[11]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\debug_r4[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[12]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\debug_r4[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[13]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\debug_r4[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[14]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\debug_r4[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R4|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_r4[15]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\debug_r5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[0]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\debug_r5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\debug_r5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\debug_r5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[3]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\debug_r5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[4]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\debug_r5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\debug_r5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[6]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\debug_r5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[7]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\debug_r5[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[8]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\debug_r5[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[9]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\debug_r5[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[10]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\debug_r5[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[11]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\debug_r5[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[12]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\debug_r5[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[13]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\debug_r5[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[14]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\debug_r5[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R5|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_r5[15]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\debug_r6[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[0]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\debug_r6[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\debug_r6[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\debug_r6[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[3]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\debug_r6[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\debug_r6[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[5]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\debug_r6[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\debug_r6[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[7]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\debug_r6[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[8]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\debug_r6[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[9]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\debug_r6[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[10]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\debug_r6[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[11]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\debug_r6[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[12]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\debug_r6[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[13]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\debug_r6[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[14]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\debug_r6[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R6|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_r6[15]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\debug_r7[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[0]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\debug_r7[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[1]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\debug_r7[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[2]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\debug_r7[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[3]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\debug_r7[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[4]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\debug_r7[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[5]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\debug_r7[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\debug_r7[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[7]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\debug_r7[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[8]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\debug_r7[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[9]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\debug_r7[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[10]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\debug_r7[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[11]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\debug_r7[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[12]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\debug_r7[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[13]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\debug_r7[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[14]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\debug_r7[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|REGfile|R7|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_r7[15]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\debug_RA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\debug_RA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\debug_RA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[2]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\debug_RA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\debug_RA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\debug_RA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\debug_RA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[6]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\debug_RA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\debug_RA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[8]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\debug_RA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[9]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\debug_RA[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[10]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\debug_RA[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[11]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\debug_RA[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[12]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\debug_RA[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[13]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\debug_RA[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[14]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\debug_RA[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RA|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_RA[15]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\debug_RB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\debug_RB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\debug_RB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\debug_RB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[3]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\debug_RB[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\debug_RB[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\debug_RB[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[6]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\debug_RB[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\debug_RB[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[8]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\debug_RB[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[9]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\debug_RB[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[10]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\debug_RB[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[11]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\debug_RB[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[12]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\debug_RB[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[13]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\debug_RB[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[14]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\debug_RB[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RB|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_RB[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\debug_Extension[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\debug_Extension[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N23
\debug_Extension[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\debug_Extension[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\debug_Extension[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\debug_Extension[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\debug_Extension[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[6]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\debug_Extension[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\debug_Extension[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\debug_Extension[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[9]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\debug_Extension[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[10]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\debug_Extension[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[11]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\debug_Extension[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[12]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\debug_Extension[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[13]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\debug_Extension[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[14]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\debug_Extension[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|IMME|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \debug_Extension[15]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\debug_RZ[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\debug_RZ[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[1]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\debug_RZ[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[2]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\debug_RZ[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\debug_RZ[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[4]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\debug_RZ[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\debug_RZ[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\debug_RZ[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\debug_RZ[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[8]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\debug_RZ[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[9]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\debug_RZ[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[10]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\debug_RZ[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[11]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\debug_RZ[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[12]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\debug_RZ[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[13]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\debug_RZ[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[14]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\debug_RZ[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RZ|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_RZ[15]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\debug_RY[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit0|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\debug_RY[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit1|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\debug_RY[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit2|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[2]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\debug_RY[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit3|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\debug_RY[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit4|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\debug_RY[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit5|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[5]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\debug_RY[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit6|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\debug_RY[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit7|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\debug_RY[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit8|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[8]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\debug_RY[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit9|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[9]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\debug_RY[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit10|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[10]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\debug_RY[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit11|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[11]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\debug_RY[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit12|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[12]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\debug_RY[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit13|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[13]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\debug_RY[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit14|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[14]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\debug_RY[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P|RY|bit15|Q~q\,
	devoe => ww_devoe,
	o => \debug_RY[15]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G19
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y32_N20
\P|CU|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Mux1~0_combout\ = (!\P|CU|current_state\(2) & (\P|CU|current_state\(0) $ (\P|CU|current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|CU|current_state\(0),
	datac => \P|CU|current_state\(1),
	datad => \P|CU|current_state\(2),
	combout => \P|CU|Mux1~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X52_Y32_N21
\P|CU|current_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|CU|Mux1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|CU|current_state\(1));

-- Location: LCCOMB_X52_Y32_N30
\P|CU|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Mux0~0_combout\ = (\P|CU|current_state\(0) & (!\P|CU|current_state\(2) & \P|CU|current_state\(1))) # (!\P|CU|current_state\(0) & (\P|CU|current_state\(2) & !\P|CU|current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|CU|current_state\(0),
	datac => \P|CU|current_state\(2),
	datad => \P|CU|current_state\(1),
	combout => \P|CU|Mux0~0_combout\);

-- Location: FF_X52_Y32_N31
\P|CU|current_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|CU|Mux0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|CU|current_state\(2));

-- Location: LCCOMB_X52_Y32_N22
\P|CU|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Mux2~0_combout\ = (\P|CU|current_state\(2) & ((!\P|CU|current_state\(1)))) # (!\P|CU|current_state\(2) & (!\P|CU|current_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|CU|current_state\(2),
	datac => \P|CU|current_state\(0),
	datad => \P|CU|current_state\(1),
	combout => \P|CU|Mux2~0_combout\);

-- Location: FF_X52_Y32_N23
\P|CU|current_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|CU|Mux2~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|CU|current_state\(0));

-- Location: LCCOMB_X52_Y32_N8
\P|CU|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Equal0~1_combout\ = (\P|CU|current_state\(0) & (!\P|CU|current_state\(2) & !\P|CU|current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|current_state\(0),
	datac => \P|CU|current_state\(2),
	datad => \P|CU|current_state\(1),
	combout => \P|CU|Equal0~1_combout\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X54_Y36_N20
\MemIO|SliderSwitch|bit0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|SliderSwitch|bit0|Q~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \MemIO|SliderSwitch|bit0|Q~feeder_combout\);

-- Location: FF_X54_Y36_N21
\MemIO|SliderSwitch|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|SliderSwitch|bit0|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|SliderSwitch|bit0|Q~q\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X52_Y36_N18
\MemIO|SliderSwitch|bit3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|SliderSwitch|bit3|Q~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \MemIO|SliderSwitch|bit3|Q~feeder_combout\);

-- Location: FF_X52_Y36_N19
\MemIO|SliderSwitch|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|SliderSwitch|bit3|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|SliderSwitch|bit3|Q~q\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X50_Y35_N24
\MemIO|PushButton|bit1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|PushButton|bit1|Q~feeder_combout\ = \KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \MemIO|PushButton|bit1|Q~feeder_combout\);

-- Location: FF_X50_Y35_N25
\MemIO|PushButton|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|PushButton|bit1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|PushButton|bit1|Q~q\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X51_Y35_N9
\MemIO|SliderSwitch|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|SliderSwitch|bit1|Q~q\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X52_Y36_N0
\MemIO|SliderSwitch|bit4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|SliderSwitch|bit4|Q~feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \MemIO|SliderSwitch|bit4|Q~feeder_combout\);

-- Location: FF_X52_Y36_N1
\MemIO|SliderSwitch|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|SliderSwitch|bit4|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|SliderSwitch|bit4|Q~q\);

-- Location: LCCOMB_X54_Y32_N14
\P|CU|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Equal1~0_combout\ = (!\P|IR|bit1|Q~q\ & (!\P|IR|bit0|Q~q\ & !\P|IR|bit2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit1|Q~q\,
	datac => \P|IR|bit0|Q~q\,
	datad => \P|IR|bit2|Q~q\,
	combout => \P|CU|Equal1~0_combout\);

-- Location: FF_X57_Y34_N17
\P|REGfile|R3|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit14|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit14|Q~q\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X56_Y36_N17
\MemIO|SliderSwitch|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|SliderSwitch|bit9|Q~q\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X52_Y36_N10
\MemIO|SliderSwitch|bit5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|SliderSwitch|bit5|Q~feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \MemIO|SliderSwitch|bit5|Q~feeder_combout\);

-- Location: FF_X52_Y36_N11
\MemIO|SliderSwitch|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|SliderSwitch|bit5|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|SliderSwitch|bit5|Q~q\);

-- Location: LCCOMB_X54_Y32_N18
\P|RY|bit3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit3|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[3]~11_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit3|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit3|Q~q\,
	datad => \MemIO|Data_out[3]~11_combout\,
	combout => \P|RY|bit3|Q~0_combout\);

-- Location: LCCOMB_X54_Y32_N28
\P|RY|bit6|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit6|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[6]~14_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit6|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit6|Q~q\,
	datad => \MemIO|Data_out[6]~14_combout\,
	combout => \P|RY|bit6|Q~0_combout\);

-- Location: LCCOMB_X50_Y30_N14
\P|CU|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Equal0~2_combout\ = (\P|CU|current_state\(0) & (\P|CU|current_state\(2) & !\P|CU|current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|CU|current_state\(0),
	datac => \P|CU|current_state\(2),
	datad => \P|CU|current_state\(1),
	combout => \P|CU|Equal0~2_combout\);

-- Location: LCCOMB_X55_Y32_N12
\P|CU|RF_write~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|RF_write~0_combout\ = (\P|IR|bit0|Q~q\ & (\P|IR|bit1|Q~q\ & (\P|CU|Equal0~2_combout\ & \P|IR|bit2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit0|Q~q\,
	datab => \P|IR|bit1|Q~q\,
	datac => \P|CU|Equal0~2_combout\,
	datad => \P|IR|bit2|Q~q\,
	combout => \P|CU|RF_write~0_combout\);

-- Location: LCCOMB_X50_Y32_N26
\P|CU|RF_write~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|RF_write~1_combout\ = (!\P|IR|bit6|Q~q\ & ((\P|IR|bit3|Q~q\ & ((!\P|IR|bit5|Q~q\))) # (!\P|IR|bit3|Q~q\ & ((\P|IR|bit5|Q~q\) # (!\P|IR|bit4|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit3|Q~q\,
	datab => \P|IR|bit6|Q~q\,
	datac => \P|IR|bit4|Q~q\,
	datad => \P|IR|bit5|Q~q\,
	combout => \P|CU|RF_write~1_combout\);

-- Location: LCCOMB_X55_Y32_N8
\P|CU|RF_write~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|RF_write~2_combout\ = (\P|IR|bit2|Q~q\ & (((!\P|IR|bit1|Q~q\)))) # (!\P|IR|bit2|Q~q\ & ((\P|IR|bit0|Q~q\) # ((!\P|IR|bit1|Q~q\ & \P|CU|RF_write~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit0|Q~q\,
	datab => \P|IR|bit1|Q~q\,
	datac => \P|IR|bit2|Q~q\,
	datad => \P|CU|RF_write~1_combout\,
	combout => \P|CU|RF_write~2_combout\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X56_Y36_N20
\MemIO|SliderSwitch|bit7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|SliderSwitch|bit7|Q~feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \MemIO|SliderSwitch|bit7|Q~feeder_combout\);

-- Location: FF_X56_Y36_N21
\MemIO|SliderSwitch|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|SliderSwitch|bit7|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|SliderSwitch|bit7|Q~q\);

-- Location: LCCOMB_X52_Y32_N26
\P|CU|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Equal0~0_combout\ = (!\P|CU|current_state\(2) & (\P|CU|current_state\(0) & \P|CU|current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|current_state\(2),
	datac => \P|CU|current_state\(0),
	datad => \P|CU|current_state\(1),
	combout => \P|CU|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y32_N18
\P|RY|bit5|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit5|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[5]~13_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit5|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit5|Q~q\,
	datad => \MemIO|Data_out[5]~13_combout\,
	combout => \P|RY|bit5|Q~0_combout\);

-- Location: LCCOMB_X52_Y29_N8
\P|ALU_comp|M1|result[15]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[15]~15_combout\ = \P|RA|bit15|Q~q\ $ (((\P|CU|Equal0~0_combout\ & (\P|CU|Equal9~0_combout\ & \P|CU|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~0_combout\,
	datab => \P|CU|Equal9~0_combout\,
	datac => \P|RA|bit15|Q~q\,
	datad => \P|CU|Equal1~0_combout\,
	combout => \P|ALU_comp|M1|result[15]~15_combout\);

-- Location: LCCOMB_X52_Y32_N16
\P|CU|C_in~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|C_in~1_combout\ = (!\P|IR|bit4|Q~q\ & (!\P|IR|bit5|Q~q\ & (\P|IR|bit6|Q~q\ $ (\P|IR|bit3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit4|Q~q\,
	datab => \P|IR|bit6|Q~q\,
	datac => \P|IR|bit5|Q~q\,
	datad => \P|IR|bit3|Q~q\,
	combout => \P|CU|C_in~1_combout\);

-- Location: LCCOMB_X50_Y32_N4
\P|CU|B_inv~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|B_inv~0_combout\ = (\P|IR|bit4|Q~q\ & (!\P|IR|bit6|Q~q\ & (!\P|IR|bit3|Q~q\ & \P|IR|bit5|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit4|Q~q\,
	datab => \P|IR|bit6|Q~q\,
	datac => \P|IR|bit3|Q~q\,
	datad => \P|IR|bit5|Q~q\,
	combout => \P|CU|B_inv~0_combout\);

-- Location: LCCOMB_X50_Y32_N6
\P|CU|B_inv~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|B_inv~1_combout\ = (\P|CU|Equal0~0_combout\ & (\P|CU|Equal1~0_combout\ & ((\P|CU|C_in~1_combout\) # (\P|CU|B_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|C_in~1_combout\,
	datab => \P|CU|B_inv~0_combout\,
	datac => \P|CU|Equal0~0_combout\,
	datad => \P|CU|Equal1~0_combout\,
	combout => \P|CU|B_inv~1_combout\);

-- Location: LCCOMB_X54_Y32_N30
\P|CU|PC_select~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|PC_select~0_combout\ = (\P|CU|Equal0~0_combout\ & (\P|IR|bit1|Q~q\ & (\P|IR|bit2|Q~q\ & \P|IR|bit0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~0_combout\,
	datab => \P|IR|bit1|Q~q\,
	datac => \P|IR|bit2|Q~q\,
	datad => \P|IR|bit0|Q~q\,
	combout => \P|CU|PC_select~0_combout\);

-- Location: LCCOMB_X52_Y32_N4
\P|CU|extend[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|extend[1]~0_combout\ = (!\P|CU|current_state\(2) & (\P|IR|bit2|Q~q\ & (\P|CU|current_state\(0) & \P|CU|current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|current_state\(2),
	datab => \P|IR|bit2|Q~q\,
	datac => \P|CU|current_state\(0),
	datad => \P|CU|current_state\(1),
	combout => \P|CU|extend[1]~0_combout\);

-- Location: LCCOMB_X51_Y32_N6
\P|CU|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Equal2~0_combout\ = (!\P|IR|bit6|Q~q\ & (!\P|IR|bit4|Q~q\ & (!\P|IR|bit3|Q~q\ & !\P|IR|bit5|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit6|Q~q\,
	datab => \P|IR|bit4|Q~q\,
	datac => \P|IR|bit3|Q~q\,
	datad => \P|IR|bit5|Q~q\,
	combout => \P|CU|Equal2~0_combout\);

-- Location: LCCOMB_X51_Y32_N12
\P|CU|extend~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|extend~1_combout\ = (\P|CU|extend[1]~0_combout\ & (!\P|IR|bit0|Q~q\ & ((\P|CU|Equal2~0_combout\) # (!\P|IR|bit1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|extend[1]~0_combout\,
	datab => \P|IR|bit1|Q~q\,
	datac => \P|IR|bit0|Q~q\,
	datad => \P|CU|Equal2~0_combout\,
	combout => \P|CU|extend~1_combout\);

-- Location: LCCOMB_X52_Y29_N6
\P|ALU_comp|M1|result[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[13]~13_combout\ = \P|RA|bit13|Q~q\ $ (((\P|CU|Equal0~0_combout\ & (\P|CU|Equal1~0_combout\ & \P|CU|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~0_combout\,
	datab => \P|CU|Equal1~0_combout\,
	datac => \P|CU|Equal9~0_combout\,
	datad => \P|RA|bit13|Q~q\,
	combout => \P|ALU_comp|M1|result[13]~13_combout\);

-- Location: LCCOMB_X56_Y34_N4
\P|RB|bit15|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RB|bit15|Q~1_combout\ = (!\P|IR|bit12|Q~q\ & \P|IR|bit11|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|IR|bit12|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|RB|bit15|Q~1_combout\);

-- Location: FF_X58_Y32_N9
\P|REGfile|R1|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit13|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit13|Q~q\);

-- Location: LCCOMB_X55_Y32_N22
\P|REGfile|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|comb~2_combout\ = (!\P|muxC|Mux2~0_combout\ & ((\P|CU|RF_write~0_combout\) # ((\P|CU|RF_write~2_combout\ & \P|CU|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|RF_write~0_combout\,
	datab => \P|CU|RF_write~2_combout\,
	datac => \P|CU|Equal0~2_combout\,
	datad => \P|muxC|Mux2~0_combout\,
	combout => \P|REGfile|comb~2_combout\);

-- Location: LCCOMB_X55_Y32_N28
\P|REGfile|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|comb~7_combout\ = (\P|muxC|Mux0~0_combout\ & (\P|REGfile|comb~2_combout\ & \P|muxC|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|muxC|Mux0~0_combout\,
	datac => \P|REGfile|comb~2_combout\,
	datad => \P|muxC|Mux1~0_combout\,
	combout => \P|REGfile|comb~7_combout\);

-- Location: FF_X59_Y30_N31
\P|REGfile|R6|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit13|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit13|Q~q\);

-- Location: LCCOMB_X55_Y32_N2
\P|REGfile|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|comb~8_combout\ = (\P|muxC|Mux1~0_combout\ & (\P|muxC|Mux0~0_combout\ & \P|REGfile|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|muxC|Mux1~0_combout\,
	datac => \P|muxC|Mux0~0_combout\,
	datad => \P|REGfile|comb~0_combout\,
	combout => \P|REGfile|comb~8_combout\);

-- Location: FF_X58_Y30_N31
\P|REGfile|R7|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit13|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit13|Q~q\);

-- Location: LCCOMB_X55_Y32_N14
\P|REGfile|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|comb~6_combout\ = (!\P|muxC|Mux1~0_combout\ & (\P|muxC|Mux0~0_combout\ & \P|REGfile|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|muxC|Mux1~0_combout\,
	datac => \P|muxC|Mux0~0_combout\,
	datad => \P|REGfile|comb~0_combout\,
	combout => \P|REGfile|comb~6_combout\);

-- Location: FF_X58_Y30_N19
\P|REGfile|R5|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit13|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit13|Q~q\);

-- Location: LCCOMB_X55_Y32_N24
\P|REGfile|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|comb~5_combout\ = (\P|muxC|Mux0~0_combout\ & (\P|REGfile|comb~2_combout\ & !\P|muxC|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|muxC|Mux0~0_combout\,
	datac => \P|REGfile|comb~2_combout\,
	datad => \P|muxC|Mux1~0_combout\,
	combout => \P|REGfile|comb~5_combout\);

-- Location: FF_X59_Y30_N7
\P|REGfile|R4|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit13|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit13|Q~q\);

-- Location: LCCOMB_X58_Y30_N18
\P|REGfile|M2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux2~0_combout\ = (\P|IR|bit11|Q~q\ & (\P|IR|bit10|Q~q\)) # (!\P|IR|bit11|Q~q\ & ((\P|IR|bit10|Q~q\ & (\P|REGfile|R5|bit13|Q~q\)) # (!\P|IR|bit10|Q~q\ & ((\P|REGfile|R4|bit13|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|R5|bit13|Q~q\,
	datad => \P|REGfile|R4|bit13|Q~q\,
	combout => \P|REGfile|M2|Mux2~0_combout\);

-- Location: LCCOMB_X58_Y30_N30
\P|REGfile|M2|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux2~1_combout\ = (\P|IR|bit11|Q~q\ & ((\P|REGfile|M2|Mux2~0_combout\ & ((\P|REGfile|R7|bit13|Q~q\))) # (!\P|REGfile|M2|Mux2~0_combout\ & (\P|REGfile|R6|bit13|Q~q\)))) # (!\P|IR|bit11|Q~q\ & (((\P|REGfile|M2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|REGfile|R6|bit13|Q~q\,
	datac => \P|REGfile|R7|bit13|Q~q\,
	datad => \P|REGfile|M2|Mux2~0_combout\,
	combout => \P|REGfile|M2|Mux2~1_combout\);

-- Location: LCCOMB_X58_Y32_N8
\P|REGfile|M2|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux2~2_combout\ = (\P|RB|bit15|Q~1_combout\ & (\P|RB|bit15|Q~0_combout\)) # (!\P|RB|bit15|Q~1_combout\ & ((\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux2~1_combout\))) # (!\P|RB|bit15|Q~0_combout\ & (\P|REGfile|R1|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|REGfile|R1|bit13|Q~q\,
	datad => \P|REGfile|M2|Mux2~1_combout\,
	combout => \P|REGfile|M2|Mux2~2_combout\);

-- Location: FF_X57_Y32_N3
\P|REGfile|R3|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit13|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit13|Q~q\);

-- Location: LCCOMB_X58_Y32_N22
\P|REGfile|M2|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux2~3_combout\ = (\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|M2|Mux2~2_combout\ & ((\P|REGfile|R3|bit13|Q~q\))) # (!\P|REGfile|M2|Mux2~2_combout\ & (\P|REGfile|R2|bit13|Q~q\)))) # (!\P|RB|bit15|Q~1_combout\ & (\P|REGfile|M2|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|REGfile|M2|Mux2~2_combout\,
	datac => \P|REGfile|R2|bit13|Q~q\,
	datad => \P|REGfile|R3|bit13|Q~q\,
	combout => \P|REGfile|M2|Mux2~3_combout\);

-- Location: LCCOMB_X50_Y33_N28
\P|REGfile|M2|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux2~4_combout\ = (\P|REGfile|M2|Mux2~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|M2|Mux2~3_combout\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux2~4_combout\);

-- Location: FF_X50_Y33_N29
\P|RB|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux2~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit13|Q~q\);

-- Location: LCCOMB_X52_Y32_N14
\P|CU|B_select~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|B_select~0_combout\ = (\P|CU|Equal0~0_combout\ & ((\P|IR|bit2|Q~q\ & ((!\P|IR|bit1|Q~q\))) # (!\P|IR|bit2|Q~q\ & ((\P|IR|bit0|Q~q\) # (\P|IR|bit1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit0|Q~q\,
	datab => \P|IR|bit2|Q~q\,
	datac => \P|CU|Equal0~0_combout\,
	datad => \P|IR|bit1|Q~q\,
	combout => \P|CU|B_select~0_combout\);

-- Location: LCCOMB_X51_Y32_N2
\P|CU|extend[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|extend[1]~6_combout\ = (\P|CU|extend[1]~0_combout\ & ((\P|IR|bit1|Q~q\ & (!\P|IR|bit0|Q~q\ & \P|CU|Equal2~0_combout\)) # (!\P|IR|bit1|Q~q\ & (\P|IR|bit0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|extend[1]~0_combout\,
	datab => \P|IR|bit1|Q~q\,
	datac => \P|IR|bit0|Q~q\,
	datad => \P|CU|Equal2~0_combout\,
	combout => \P|CU|extend[1]~6_combout\);

-- Location: LCCOMB_X51_Y32_N14
\P|CU|C_in~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|C_in~0_combout\ = (\P|IR|bit3|Q~q\ & !\P|IR|bit6|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|IR|bit3|Q~q\,
	datad => \P|IR|bit6|Q~q\,
	combout => \P|CU|C_in~0_combout\);

-- Location: LCCOMB_X51_Y32_N24
\P|CU|extend[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|extend[2]~2_combout\ = (!\P|IR|bit0|Q~q\ & (\P|IR|bit1|Q~q\ & (\P|CU|C_in~0_combout\ & \P|CU|extend[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit0|Q~q\,
	datab => \P|IR|bit1|Q~q\,
	datac => \P|CU|C_in~0_combout\,
	datad => \P|CU|extend[1]~0_combout\,
	combout => \P|CU|extend[2]~2_combout\);

-- Location: LCCOMB_X51_Y32_N16
\P|CU|extend[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|extend[1]~7_combout\ = (\P|CU|extend[1]~6_combout\) # ((\P|CU|extend[2]~2_combout\ & ((\P|CU|extend[2]~3_combout\) # (!\P|CU|extend~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|extend~4_combout\,
	datab => \P|CU|extend[1]~6_combout\,
	datac => \P|CU|extend[2]~3_combout\,
	datad => \P|CU|extend[2]~2_combout\,
	combout => \P|CU|extend[1]~7_combout\);

-- Location: LCCOMB_X51_Y31_N4
\P|IMME|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux4~0_combout\ = (\P|CU|extend[1]~7_combout\ & ((\P|CU|extend~5_combout\))) # (!\P|CU|extend[1]~7_combout\ & (\P|CU|PC_select~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|extend[1]~7_combout\,
	datab => \P|CU|PC_select~0_combout\,
	datac => \P|CU|extend~5_combout\,
	combout => \P|IMME|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y31_N18
\P|IMME|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux15~1_combout\ = (\P|IR|bit9|Q~q\ & !\P|CU|extend~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit9|Q~q\,
	datac => \P|CU|extend~5_combout\,
	combout => \P|IMME|Mux15~1_combout\);

-- Location: LCCOMB_X51_Y31_N22
\P|IMME|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux3~0_combout\ = (!\P|IMME|Mux4~0_combout\ & ((\P|CU|extend[1]~7_combout\ & (\P|IR|bit6|Q~q\)) # (!\P|CU|extend[1]~7_combout\ & ((\P|IMME|Mux15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit6|Q~q\,
	datab => \P|IMME|Mux15~1_combout\,
	datac => \P|IMME|Mux4~0_combout\,
	datad => \P|CU|extend[1]~7_combout\,
	combout => \P|IMME|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y31_N22
\P|IMME|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux3~1_combout\ = (\P|IMME|Mux3~0_combout\) # ((\P|IR|bit15|Q~q\ & \P|IMME|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|IR|bit15|Q~q\,
	datac => \P|IMME|Mux4~0_combout\,
	datad => \P|IMME|Mux3~0_combout\,
	combout => \P|IMME|Mux3~1_combout\);

-- Location: LCCOMB_X52_Y29_N16
\P|ALU_comp|M1|result[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[11]~11_combout\ = \P|RA|bit11|Q~q\ $ (((\P|CU|Equal1~0_combout\ & (\P|CU|Equal9~0_combout\ & \P|CU|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit11|Q~q\,
	datab => \P|CU|Equal1~0_combout\,
	datac => \P|CU|Equal9~0_combout\,
	datad => \P|CU|Equal0~0_combout\,
	combout => \P|ALU_comp|M1|result[11]~11_combout\);

-- Location: LCCOMB_X51_Y31_N28
\P|IMME|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux4~1_combout\ = (\P|IMME|Mux4~0_combout\ & (((\P|CU|extend[1]~7_combout\)))) # (!\P|IMME|Mux4~0_combout\ & ((\P|CU|extend[1]~7_combout\ & (\P|IR|bit5|Q~q\)) # (!\P|CU|extend[1]~7_combout\ & ((\P|IMME|Mux15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit5|Q~q\,
	datab => \P|IMME|Mux4~0_combout\,
	datac => \P|CU|extend[1]~7_combout\,
	datad => \P|IMME|Mux15~1_combout\,
	combout => \P|IMME|Mux4~1_combout\);

-- Location: LCCOMB_X52_Y31_N4
\P|IMME|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux4~2_combout\ = (\P|IMME|Mux4~0_combout\ & ((\P|IMME|Mux4~1_combout\ & ((\P|IR|bit15|Q~q\))) # (!\P|IMME|Mux4~1_combout\ & (\P|IR|bit14|Q~q\)))) # (!\P|IMME|Mux4~0_combout\ & (((\P|IMME|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit14|Q~q\,
	datab => \P|IR|bit15|Q~q\,
	datac => \P|IMME|Mux4~0_combout\,
	datad => \P|IMME|Mux4~1_combout\,
	combout => \P|IMME|Mux4~2_combout\);

-- Location: FF_X58_Y32_N15
\P|REGfile|R1|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit11|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit11|Q~q\);

-- Location: FF_X58_Y30_N23
\P|REGfile|R5|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit11|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit11|Q~q\);

-- Location: LCCOMB_X59_Y30_N26
\P|REGfile|M2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux4~0_combout\ = (\P|IR|bit10|Q~q\ & ((\P|IR|bit11|Q~q\) # ((\P|REGfile|R5|bit11|Q~q\)))) # (!\P|IR|bit10|Q~q\ & (!\P|IR|bit11|Q~q\ & (\P|REGfile|R4|bit11|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|IR|bit11|Q~q\,
	datac => \P|REGfile|R4|bit11|Q~q\,
	datad => \P|REGfile|R5|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux4~0_combout\);

-- Location: FF_X58_Y30_N7
\P|REGfile|R7|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit11|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit11|Q~q\);

-- Location: FF_X59_Y30_N3
\P|REGfile|R6|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit11|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit11|Q~q\);

-- Location: LCCOMB_X59_Y30_N2
\P|REGfile|M2|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux4~1_combout\ = (\P|REGfile|M2|Mux4~0_combout\ & ((\P|REGfile|R7|bit11|Q~q\) # ((!\P|IR|bit11|Q~q\)))) # (!\P|REGfile|M2|Mux4~0_combout\ & (((\P|REGfile|R6|bit11|Q~q\ & \P|IR|bit11|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux4~0_combout\,
	datab => \P|REGfile|R7|bit11|Q~q\,
	datac => \P|REGfile|R6|bit11|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux4~1_combout\);

-- Location: LCCOMB_X58_Y32_N14
\P|REGfile|M2|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux4~2_combout\ = (\P|RB|bit15|Q~1_combout\ & (\P|RB|bit15|Q~0_combout\)) # (!\P|RB|bit15|Q~1_combout\ & ((\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux4~1_combout\))) # (!\P|RB|bit15|Q~0_combout\ & (\P|REGfile|R1|bit11|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|REGfile|R1|bit11|Q~q\,
	datad => \P|REGfile|M2|Mux4~1_combout\,
	combout => \P|REGfile|M2|Mux4~2_combout\);

-- Location: FF_X58_Y32_N1
\P|REGfile|R2|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit11|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit11|Q~q\);

-- Location: FF_X57_Y32_N13
\P|REGfile|R3|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit11|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit11|Q~q\);

-- Location: LCCOMB_X58_Y32_N0
\P|REGfile|M2|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux4~3_combout\ = (\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|M2|Mux4~2_combout\ & ((\P|REGfile|R3|bit11|Q~q\))) # (!\P|REGfile|M2|Mux4~2_combout\ & (\P|REGfile|R2|bit11|Q~q\)))) # (!\P|RB|bit15|Q~1_combout\ & (\P|REGfile|M2|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|REGfile|M2|Mux4~2_combout\,
	datac => \P|REGfile|R2|bit11|Q~q\,
	datad => \P|REGfile|R3|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux4~3_combout\);

-- Location: LCCOMB_X55_Y32_N30
\P|REGfile|M2|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux4~4_combout\ = (\P|REGfile|M2|Mux4~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|M2|Mux4~3_combout\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux4~4_combout\);

-- Location: FF_X55_Y32_N31
\P|RB|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux4~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit11|Q~q\);

-- Location: LCCOMB_X52_Y31_N14
\P|ALU_comp|M2|result[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[11]~4_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & (\P|IMME|Mux4~2_combout\)) # (!\P|CU|B_select~0_combout\ & ((\P|RB|bit11|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|B_inv~1_combout\,
	datab => \P|CU|B_select~0_combout\,
	datac => \P|IMME|Mux4~2_combout\,
	datad => \P|RB|bit11|Q~q\,
	combout => \P|ALU_comp|M2|result[11]~4_combout\);

-- Location: LCCOMB_X51_Y31_N30
\P|IMME|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux5~0_combout\ = (\P|IMME|Mux4~0_combout\ & (((\P|CU|extend[1]~7_combout\)))) # (!\P|IMME|Mux4~0_combout\ & ((\P|CU|extend[1]~7_combout\ & (\P|IR|bit4|Q~q\)) # (!\P|CU|extend[1]~7_combout\ & ((\P|IMME|Mux15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit4|Q~q\,
	datab => \P|IMME|Mux4~0_combout\,
	datac => \P|CU|extend[1]~7_combout\,
	datad => \P|IMME|Mux15~1_combout\,
	combout => \P|IMME|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y31_N8
\P|IMME|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux5~1_combout\ = (\P|IMME|Mux5~0_combout\ & ((\P|IR|bit15|Q~q\) # ((!\P|IMME|Mux4~0_combout\)))) # (!\P|IMME|Mux5~0_combout\ & (((\P|IMME|Mux4~0_combout\ & \P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux5~0_combout\,
	datab => \P|IR|bit15|Q~q\,
	datac => \P|IMME|Mux4~0_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|IMME|Mux5~1_combout\);

-- Location: LCCOMB_X54_Y31_N10
\P|ALU_comp|M2|result[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[10]~5_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & (\P|IMME|Mux5~1_combout\)) # (!\P|CU|B_select~0_combout\ & ((\P|RB|bit10|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|B_inv~1_combout\,
	datab => \P|CU|B_select~0_combout\,
	datac => \P|IMME|Mux5~1_combout\,
	datad => \P|RB|bit10|Q~q\,
	combout => \P|ALU_comp|M2|result[10]~5_combout\);

-- Location: FF_X58_Y30_N27
\P|REGfile|R5|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit9|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit9|Q~q\);

-- Location: FF_X59_Y30_N23
\P|REGfile|R4|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit9|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit9|Q~q\);

-- Location: LCCOMB_X59_Y30_N22
\P|REGfile|M2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux6~0_combout\ = (\P|IR|bit11|Q~q\ & (((\P|IR|bit10|Q~q\)))) # (!\P|IR|bit11|Q~q\ & ((\P|IR|bit10|Q~q\ & (\P|REGfile|R5|bit9|Q~q\)) # (!\P|IR|bit10|Q~q\ & ((\P|REGfile|R4|bit9|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R5|bit9|Q~q\,
	datab => \P|IR|bit11|Q~q\,
	datac => \P|REGfile|R4|bit9|Q~q\,
	datad => \P|IR|bit10|Q~q\,
	combout => \P|REGfile|M2|Mux6~0_combout\);

-- Location: FF_X59_Y30_N15
\P|REGfile|R6|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit9|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit9|Q~q\);

-- Location: FF_X58_Y30_N3
\P|REGfile|R7|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit9|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit9|Q~q\);

-- Location: LCCOMB_X59_Y30_N14
\P|REGfile|M2|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux6~1_combout\ = (\P|REGfile|M2|Mux6~0_combout\ & (((\P|REGfile|R7|bit9|Q~q\)) # (!\P|IR|bit11|Q~q\))) # (!\P|REGfile|M2|Mux6~0_combout\ & (\P|IR|bit11|Q~q\ & (\P|REGfile|R6|bit9|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux6~0_combout\,
	datab => \P|IR|bit11|Q~q\,
	datac => \P|REGfile|R6|bit9|Q~q\,
	datad => \P|REGfile|R7|bit9|Q~q\,
	combout => \P|REGfile|M2|Mux6~1_combout\);

-- Location: LCCOMB_X58_Y32_N30
\P|REGfile|R1|bit9|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|R1|bit9|Q~feeder_combout\ = \P|RY|bit9|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RY|bit9|Q~q\,
	combout => \P|REGfile|R1|bit9|Q~feeder_combout\);

-- Location: FF_X58_Y32_N31
\P|REGfile|R1|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|R1|bit9|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit9|Q~q\);

-- Location: LCCOMB_X58_Y32_N2
\P|REGfile|M2|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux6~2_combout\ = (\P|RB|bit15|Q~1_combout\ & (((\P|RB|bit15|Q~0_combout\)))) # (!\P|RB|bit15|Q~1_combout\ & ((\P|RB|bit15|Q~0_combout\ & (\P|REGfile|M2|Mux6~1_combout\)) # (!\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|R1|bit9|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|REGfile|M2|Mux6~1_combout\,
	datac => \P|REGfile|R1|bit9|Q~q\,
	datad => \P|RB|bit15|Q~0_combout\,
	combout => \P|REGfile|M2|Mux6~2_combout\);

-- Location: FF_X57_Y32_N31
\P|REGfile|R3|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit9|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit9|Q~q\);

-- Location: LCCOMB_X58_Y32_N20
\P|REGfile|M2|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux6~3_combout\ = (\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|M2|Mux6~2_combout\ & ((\P|REGfile|R3|bit9|Q~q\))) # (!\P|REGfile|M2|Mux6~2_combout\ & (\P|REGfile|R2|bit9|Q~q\)))) # (!\P|RB|bit15|Q~1_combout\ & (\P|REGfile|M2|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|REGfile|M2|Mux6~2_combout\,
	datac => \P|REGfile|R2|bit9|Q~q\,
	datad => \P|REGfile|R3|bit9|Q~q\,
	combout => \P|REGfile|M2|Mux6~3_combout\);

-- Location: LCCOMB_X54_Y31_N12
\P|REGfile|M2|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux6~4_combout\ = (\P|REGfile|M2|Mux6~3_combout\ & ((\P|IR|bit10|Q~q\) # ((\P|RB|bit15|Q~1_combout\) # (\P|RB|bit15|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|RB|bit15|Q~1_combout\,
	datac => \P|RB|bit15|Q~0_combout\,
	datad => \P|REGfile|M2|Mux6~3_combout\,
	combout => \P|REGfile|M2|Mux6~4_combout\);

-- Location: FF_X54_Y31_N13
\P|RB|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux6~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit9|Q~q\);

-- Location: LCCOMB_X51_Y31_N16
\P|IMME|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux6~0_combout\ = (\P|CU|extend[1]~7_combout\ & ((\P|IR|bit3|Q~q\) # ((\P|IMME|Mux4~0_combout\)))) # (!\P|CU|extend[1]~7_combout\ & (((!\P|IMME|Mux4~0_combout\ & \P|IMME|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit3|Q~q\,
	datab => \P|CU|extend[1]~7_combout\,
	datac => \P|IMME|Mux4~0_combout\,
	datad => \P|IMME|Mux15~1_combout\,
	combout => \P|IMME|Mux6~0_combout\);

-- Location: LCCOMB_X54_Y31_N18
\P|IMME|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux6~1_combout\ = (\P|IMME|Mux4~0_combout\ & ((\P|IMME|Mux6~0_combout\ & ((\P|IR|bit15|Q~q\))) # (!\P|IMME|Mux6~0_combout\ & (\P|IR|bit12|Q~q\)))) # (!\P|IMME|Mux4~0_combout\ & (((\P|IMME|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit12|Q~q\,
	datab => \P|IR|bit15|Q~q\,
	datac => \P|IMME|Mux4~0_combout\,
	datad => \P|IMME|Mux6~0_combout\,
	combout => \P|IMME|Mux6~1_combout\);

-- Location: LCCOMB_X54_Y31_N20
\P|ALU_comp|M2|result[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[9]~6_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux6~1_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit9|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit9|Q~q\,
	datab => \P|CU|B_select~0_combout\,
	datac => \P|CU|B_inv~1_combout\,
	datad => \P|IMME|Mux6~1_combout\,
	combout => \P|ALU_comp|M2|result[9]~6_combout\);

-- Location: LCCOMB_X49_Y32_N8
\P|IMME|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux8~1_combout\ = (!\P|CU|PC_select~0_combout\ & (\P|CU|extend[1]~7_combout\ $ (!\P|CU|extend~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|CU|extend[1]~7_combout\,
	datac => \P|CU|extend~5_combout\,
	datad => \P|CU|PC_select~0_combout\,
	combout => \P|IMME|Mux8~1_combout\);

-- Location: LCCOMB_X49_Y32_N4
\P|IMME|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux7~0_combout\ = (\P|CU|extend[1]~7_combout\ & (\P|IR|bit15|Q~q\)) # (!\P|CU|extend[1]~7_combout\ & ((\P|IR|bit9|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|IR|bit15|Q~q\,
	datac => \P|IR|bit9|Q~q\,
	datad => \P|CU|extend[1]~7_combout\,
	combout => \P|IMME|Mux7~0_combout\);

-- Location: LCCOMB_X49_Y32_N6
\P|IMME|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux7~1_combout\ = (\P|IR|bit11|Q~q\ & ((\P|CU|PC_select~0_combout\) # ((\P|IMME|Mux8~1_combout\ & \P|IMME|Mux7~0_combout\)))) # (!\P|IR|bit11|Q~q\ & (\P|IMME|Mux8~1_combout\ & (\P|IMME|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|IMME|Mux8~1_combout\,
	datac => \P|IMME|Mux7~0_combout\,
	datad => \P|CU|PC_select~0_combout\,
	combout => \P|IMME|Mux7~1_combout\);

-- Location: LCCOMB_X49_Y32_N16
\P|ALU_comp|M2|result[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[8]~7_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux7~1_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit8|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|B_inv~1_combout\,
	datab => \P|RB|bit8|Q~q\,
	datac => \P|CU|B_select~0_combout\,
	datad => \P|IMME|Mux7~1_combout\,
	combout => \P|ALU_comp|M2|result[8]~7_combout\);

-- Location: LCCOMB_X52_Y29_N30
\P|ALU_comp|M1|result[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[7]~7_combout\ = \P|RA|bit7|Q~q\ $ (((\P|CU|Equal0~0_combout\ & (\P|CU|Equal9~0_combout\ & \P|CU|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~0_combout\,
	datab => \P|RA|bit7|Q~q\,
	datac => \P|CU|Equal9~0_combout\,
	datad => \P|CU|Equal1~0_combout\,
	combout => \P|ALU_comp|M1|result[7]~7_combout\);

-- Location: FF_X57_Y32_N5
\P|REGfile|R3|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit7|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit7|Q~q\);

-- Location: LCCOMB_X58_Y32_N4
\P|REGfile|R1|bit7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|R1|bit7|Q~feeder_combout\ = \P|RY|bit7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RY|bit7|Q~q\,
	combout => \P|REGfile|R1|bit7|Q~feeder_combout\);

-- Location: FF_X58_Y32_N5
\P|REGfile|R1|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|R1|bit7|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit7|Q~q\);

-- Location: FF_X58_Y31_N23
\P|REGfile|R6|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit7|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit7|Q~q\);

-- Location: FF_X59_Y31_N7
\P|REGfile|R5|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit7|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit7|Q~q\);

-- Location: FF_X59_Y31_N11
\P|REGfile|R4|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit7|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit7|Q~q\);

-- Location: LCCOMB_X59_Y31_N10
\P|REGfile|M2|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux8~0_combout\ = (\P|IR|bit10|Q~q\ & ((\P|REGfile|R5|bit7|Q~q\) # ((\P|IR|bit11|Q~q\)))) # (!\P|IR|bit10|Q~q\ & (((\P|REGfile|R4|bit7|Q~q\ & !\P|IR|bit11|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R5|bit7|Q~q\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|R4|bit7|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux8~0_combout\);

-- Location: FF_X58_Y31_N15
\P|REGfile|R7|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit7|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit7|Q~q\);

-- Location: LCCOMB_X58_Y31_N14
\P|REGfile|M2|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux8~1_combout\ = (\P|REGfile|M2|Mux8~0_combout\ & (((\P|REGfile|R7|bit7|Q~q\) # (!\P|IR|bit11|Q~q\)))) # (!\P|REGfile|M2|Mux8~0_combout\ & (\P|REGfile|R6|bit7|Q~q\ & ((\P|IR|bit11|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R6|bit7|Q~q\,
	datab => \P|REGfile|M2|Mux8~0_combout\,
	datac => \P|REGfile|R7|bit7|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux8~1_combout\);

-- Location: LCCOMB_X58_Y32_N12
\P|REGfile|M2|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux8~2_combout\ = (\P|RB|bit15|Q~1_combout\ & (\P|RB|bit15|Q~0_combout\)) # (!\P|RB|bit15|Q~1_combout\ & ((\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux8~1_combout\))) # (!\P|RB|bit15|Q~0_combout\ & (\P|REGfile|R1|bit7|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|REGfile|R1|bit7|Q~q\,
	datad => \P|REGfile|M2|Mux8~1_combout\,
	combout => \P|REGfile|M2|Mux8~2_combout\);

-- Location: LCCOMB_X58_Y32_N6
\P|REGfile|M2|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux8~3_combout\ = (\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|M2|Mux8~2_combout\ & (\P|REGfile|R3|bit7|Q~q\)) # (!\P|REGfile|M2|Mux8~2_combout\ & ((\P|REGfile|R2|bit7|Q~q\))))) # (!\P|RB|bit15|Q~1_combout\ & (((\P|REGfile|M2|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|REGfile|R3|bit7|Q~q\,
	datac => \P|REGfile|R2|bit7|Q~q\,
	datad => \P|REGfile|M2|Mux8~2_combout\,
	combout => \P|REGfile|M2|Mux8~3_combout\);

-- Location: LCCOMB_X55_Y32_N20
\P|REGfile|M2|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux8~4_combout\ = (\P|REGfile|M2|Mux8~3_combout\ & ((\P|IR|bit10|Q~q\) # ((\P|RB|bit15|Q~0_combout\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux8~3_combout\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|RB|bit15|Q~0_combout\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux8~4_combout\);

-- Location: FF_X55_Y32_N21
\P|RB|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux8~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit7|Q~q\);

-- Location: LCCOMB_X49_Y32_N30
\P|IMME|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux8~0_combout\ = (\P|CU|extend[1]~7_combout\ & (\P|IR|bit14|Q~q\)) # (!\P|CU|extend[1]~7_combout\ & ((\P|IR|bit9|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|IR|bit14|Q~q\,
	datac => \P|IR|bit9|Q~q\,
	datad => \P|CU|extend[1]~7_combout\,
	combout => \P|IMME|Mux8~0_combout\);

-- Location: LCCOMB_X49_Y32_N22
\P|IMME|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux8~2_combout\ = (\P|IMME|Mux8~0_combout\ & ((\P|IMME|Mux8~1_combout\) # ((\P|IR|bit10|Q~q\ & \P|CU|PC_select~0_combout\)))) # (!\P|IMME|Mux8~0_combout\ & (\P|IR|bit10|Q~q\ & ((\P|CU|PC_select~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux8~0_combout\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|IMME|Mux8~1_combout\,
	datad => \P|CU|PC_select~0_combout\,
	combout => \P|IMME|Mux8~2_combout\);

-- Location: LCCOMB_X49_Y32_N18
\P|ALU_comp|M2|result[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[7]~8_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux8~2_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit7|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|B_inv~1_combout\,
	datab => \P|RB|bit7|Q~q\,
	datac => \P|IMME|Mux8~2_combout\,
	datad => \P|CU|B_select~0_combout\,
	combout => \P|ALU_comp|M2|result[7]~8_combout\);

-- Location: LCCOMB_X50_Y30_N24
\P|IMME|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux9~0_combout\ = (\P|CU|extend[1]~7_combout\ & (\P|IR|bit13|Q~q\ & (\P|CU|extend~5_combout\))) # (!\P|CU|extend[1]~7_combout\ & (((\P|IR|bit9|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|CU|extend[1]~7_combout\,
	datac => \P|CU|extend~5_combout\,
	datad => \P|IR|bit9|Q~q\,
	combout => \P|IMME|Mux9~0_combout\);

-- Location: LCCOMB_X49_Y29_N8
\P|ALU_comp|M2|result[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[6]~9_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux9~0_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit6|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit6|Q~q\,
	datab => \P|CU|B_inv~1_combout\,
	datac => \P|CU|B_select~0_combout\,
	datad => \P|IMME|Mux9~0_combout\,
	combout => \P|ALU_comp|M2|result[6]~9_combout\);

-- Location: LCCOMB_X50_Y29_N26
\P|IMME|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux10~0_combout\ = (\P|CU|extend[1]~7_combout\ & (\P|IR|bit12|Q~q\ & ((\P|CU|extend~5_combout\)))) # (!\P|CU|extend[1]~7_combout\ & (((\P|IR|bit8|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit12|Q~q\,
	datab => \P|CU|extend[1]~7_combout\,
	datac => \P|IR|bit8|Q~q\,
	datad => \P|CU|extend~5_combout\,
	combout => \P|IMME|Mux10~0_combout\);

-- Location: FF_X58_Y34_N19
\P|REGfile|R2|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit5|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit5|Q~q\);

-- Location: FF_X58_Y34_N17
\P|REGfile|R1|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit5|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit5|Q~q\);

-- Location: FF_X58_Y31_N31
\P|REGfile|R6|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit5|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit5|Q~q\);

-- Location: FF_X59_Y31_N27
\P|REGfile|R5|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit5|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit5|Q~q\);

-- Location: FF_X59_Y31_N19
\P|REGfile|R4|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit5|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit5|Q~q\);

-- Location: LCCOMB_X59_Y31_N18
\P|REGfile|M2|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux10~0_combout\ = (\P|IR|bit10|Q~q\ & ((\P|REGfile|R5|bit5|Q~q\) # ((\P|IR|bit11|Q~q\)))) # (!\P|IR|bit10|Q~q\ & (((\P|REGfile|R4|bit5|Q~q\ & !\P|IR|bit11|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R5|bit5|Q~q\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|R4|bit5|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux10~0_combout\);

-- Location: FF_X58_Y31_N7
\P|REGfile|R7|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit5|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit5|Q~q\);

-- Location: LCCOMB_X58_Y31_N6
\P|REGfile|M2|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux10~1_combout\ = (\P|REGfile|M2|Mux10~0_combout\ & (((\P|REGfile|R7|bit5|Q~q\) # (!\P|IR|bit11|Q~q\)))) # (!\P|REGfile|M2|Mux10~0_combout\ & (\P|REGfile|R6|bit5|Q~q\ & ((\P|IR|bit11|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R6|bit5|Q~q\,
	datab => \P|REGfile|M2|Mux10~0_combout\,
	datac => \P|REGfile|R7|bit5|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux10~1_combout\);

-- Location: LCCOMB_X58_Y34_N16
\P|REGfile|M2|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux10~2_combout\ = (\P|RB|bit15|Q~0_combout\ & ((\P|RB|bit15|Q~1_combout\) # ((\P|REGfile|M2|Mux10~1_combout\)))) # (!\P|RB|bit15|Q~0_combout\ & (!\P|RB|bit15|Q~1_combout\ & (\P|REGfile|R1|bit5|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|RB|bit15|Q~1_combout\,
	datac => \P|REGfile|R1|bit5|Q~q\,
	datad => \P|REGfile|M2|Mux10~1_combout\,
	combout => \P|REGfile|M2|Mux10~2_combout\);

-- Location: LCCOMB_X58_Y34_N18
\P|REGfile|M2|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux10~3_combout\ = (\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|M2|Mux10~2_combout\ & (\P|REGfile|R3|bit5|Q~q\)) # (!\P|REGfile|M2|Mux10~2_combout\ & ((\P|REGfile|R2|bit5|Q~q\))))) # (!\P|RB|bit15|Q~1_combout\ & 
-- (((\P|REGfile|M2|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R3|bit5|Q~q\,
	datab => \P|RB|bit15|Q~1_combout\,
	datac => \P|REGfile|R2|bit5|Q~q\,
	datad => \P|REGfile|M2|Mux10~2_combout\,
	combout => \P|REGfile|M2|Mux10~3_combout\);

-- Location: LCCOMB_X50_Y33_N2
\P|REGfile|M2|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux10~4_combout\ = (\P|REGfile|M2|Mux10~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|M2|Mux10~3_combout\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux10~4_combout\);

-- Location: FF_X50_Y33_N3
\P|RB|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux10~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit5|Q~q\);

-- Location: LCCOMB_X50_Y29_N24
\P|ALU_comp|M2|result[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[5]~10_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & (\P|IMME|Mux10~0_combout\)) # (!\P|CU|B_select~0_combout\ & ((\P|RB|bit5|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux10~0_combout\,
	datab => \P|RB|bit5|Q~q\,
	datac => \P|CU|B_select~0_combout\,
	datad => \P|CU|B_inv~1_combout\,
	combout => \P|ALU_comp|M2|result[5]~10_combout\);

-- Location: LCCOMB_X50_Y29_N4
\P|IMME|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux11~0_combout\ = (\P|CU|extend[1]~7_combout\ & (\P|IR|bit11|Q~q\ & ((\P|CU|extend~5_combout\)))) # (!\P|CU|extend[1]~7_combout\ & (((\P|IR|bit7|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|CU|extend[1]~7_combout\,
	datac => \P|IR|bit7|Q~q\,
	datad => \P|CU|extend~5_combout\,
	combout => \P|IMME|Mux11~0_combout\);

-- Location: LCCOMB_X50_Y29_N30
\P|ALU_comp|M2|result[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[4]~11_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux11~0_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit4|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|B_select~0_combout\,
	datab => \P|RB|bit4|Q~q\,
	datac => \P|IMME|Mux11~0_combout\,
	datad => \P|CU|B_inv~1_combout\,
	combout => \P|ALU_comp|M2|result[4]~11_combout\);

-- Location: FF_X57_Y32_N7
\P|REGfile|R3|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit3|Q~q\);

-- Location: FF_X56_Y34_N23
\P|REGfile|R1|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit3|Q~q\);

-- Location: FF_X58_Y31_N3
\P|REGfile|R6|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit3|Q~q\);

-- Location: FF_X58_Y31_N19
\P|REGfile|R7|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit3|Q~q\);

-- Location: FF_X59_Y31_N3
\P|REGfile|R5|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit3|Q~q\);

-- Location: FF_X59_Y31_N23
\P|REGfile|R4|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit3|Q~q\);

-- Location: LCCOMB_X59_Y31_N22
\P|REGfile|M2|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux12~0_combout\ = (\P|IR|bit11|Q~q\ & (((\P|IR|bit10|Q~q\)))) # (!\P|IR|bit11|Q~q\ & ((\P|IR|bit10|Q~q\ & (\P|REGfile|R5|bit3|Q~q\)) # (!\P|IR|bit10|Q~q\ & ((\P|REGfile|R4|bit3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|REGfile|R5|bit3|Q~q\,
	datac => \P|REGfile|R4|bit3|Q~q\,
	datad => \P|IR|bit10|Q~q\,
	combout => \P|REGfile|M2|Mux12~0_combout\);

-- Location: LCCOMB_X58_Y31_N18
\P|REGfile|M2|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux12~1_combout\ = (\P|IR|bit11|Q~q\ & ((\P|REGfile|M2|Mux12~0_combout\ & ((\P|REGfile|R7|bit3|Q~q\))) # (!\P|REGfile|M2|Mux12~0_combout\ & (\P|REGfile|R6|bit3|Q~q\)))) # (!\P|IR|bit11|Q~q\ & (((\P|REGfile|M2|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|REGfile|R6|bit3|Q~q\,
	datac => \P|REGfile|R7|bit3|Q~q\,
	datad => \P|REGfile|M2|Mux12~0_combout\,
	combout => \P|REGfile|M2|Mux12~1_combout\);

-- Location: LCCOMB_X56_Y34_N22
\P|REGfile|M2|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux12~2_combout\ = (\P|RB|bit15|Q~1_combout\ & (\P|RB|bit15|Q~0_combout\)) # (!\P|RB|bit15|Q~1_combout\ & ((\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux12~1_combout\))) # (!\P|RB|bit15|Q~0_combout\ & (\P|REGfile|R1|bit3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|REGfile|R1|bit3|Q~q\,
	datad => \P|REGfile|M2|Mux12~1_combout\,
	combout => \P|REGfile|M2|Mux12~2_combout\);

-- Location: LCCOMB_X56_Y34_N10
\P|REGfile|M2|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux12~3_combout\ = (\P|REGfile|M2|Mux12~2_combout\ & ((\P|REGfile|R3|bit3|Q~q\) # ((!\P|RB|bit15|Q~1_combout\)))) # (!\P|REGfile|M2|Mux12~2_combout\ & (((\P|REGfile|R2|bit3|Q~q\ & \P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R3|bit3|Q~q\,
	datab => \P|REGfile|M2|Mux12~2_combout\,
	datac => \P|REGfile|R2|bit3|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux12~3_combout\);

-- Location: LCCOMB_X50_Y34_N20
\P|REGfile|M2|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux12~4_combout\ = (\P|REGfile|M2|Mux12~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux12~3_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|IR|bit10|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux12~4_combout\);

-- Location: FF_X50_Y34_N21
\P|RB|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux12~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit3|Q~q\);

-- Location: LCCOMB_X49_Y32_N24
\P|IMME|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux12~0_combout\ = (\P|CU|extend[1]~7_combout\ & (((\P|IR|bit10|Q~q\ & \P|CU|extend~5_combout\)))) # (!\P|CU|extend[1]~7_combout\ & (\P|IR|bit6|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit6|Q~q\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|CU|extend~5_combout\,
	datad => \P|CU|extend[1]~7_combout\,
	combout => \P|IMME|Mux12~0_combout\);

-- Location: LCCOMB_X49_Y32_N20
\P|ALU_comp|M2|result[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[3]~12_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux12~0_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|B_inv~1_combout\,
	datab => \P|RB|bit3|Q~q\,
	datac => \P|CU|B_select~0_combout\,
	datad => \P|IMME|Mux12~0_combout\,
	combout => \P|ALU_comp|M2|result[3]~12_combout\);

-- Location: FF_X56_Y34_N25
\P|REGfile|R1|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit2|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit2|Q~q\);

-- Location: LCCOMB_X56_Y34_N28
\P|REGfile|M1|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux13~2_combout\ = (\P|RA|bit6|Q~1_combout\ & (((\P|REGfile|R2|bit2|Q~q\) # (\P|RA|bit6|Q~0_combout\)))) # (!\P|RA|bit6|Q~1_combout\ & (\P|REGfile|R1|bit2|Q~q\ & ((!\P|RA|bit6|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~1_combout\,
	datab => \P|REGfile|R1|bit2|Q~q\,
	datac => \P|REGfile|R2|bit2|Q~q\,
	datad => \P|RA|bit6|Q~0_combout\,
	combout => \P|REGfile|M1|Mux13~2_combout\);

-- Location: LCCOMB_X57_Y34_N14
\P|REGfile|R3|bit2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|R3|bit2|Q~feeder_combout\ = \P|RY|bit2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RY|bit2|Q~q\,
	combout => \P|REGfile|R3|bit2|Q~feeder_combout\);

-- Location: FF_X57_Y34_N15
\P|REGfile|R3|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|R3|bit2|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit2|Q~q\);

-- Location: FF_X59_Y31_N21
\P|REGfile|R5|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit2|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit2|Q~q\);

-- Location: FF_X58_Y31_N1
\P|REGfile|R7|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit2|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit2|Q~q\);

-- Location: FF_X59_Y31_N9
\P|REGfile|R4|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit2|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit2|Q~q\);

-- Location: FF_X58_Y31_N21
\P|REGfile|R6|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit2|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit2|Q~q\);

-- Location: LCCOMB_X58_Y31_N20
\P|REGfile|M1|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux13~0_combout\ = (\P|IR|bit13|Q~q\ & (((\P|IR|bit14|Q~q\)))) # (!\P|IR|bit13|Q~q\ & ((\P|IR|bit14|Q~q\ & ((\P|REGfile|R6|bit2|Q~q\))) # (!\P|IR|bit14|Q~q\ & (\P|REGfile|R4|bit2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R4|bit2|Q~q\,
	datab => \P|IR|bit13|Q~q\,
	datac => \P|REGfile|R6|bit2|Q~q\,
	datad => \P|IR|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux13~0_combout\);

-- Location: LCCOMB_X58_Y31_N0
\P|REGfile|M1|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux13~1_combout\ = (\P|IR|bit13|Q~q\ & ((\P|REGfile|M1|Mux13~0_combout\ & ((\P|REGfile|R7|bit2|Q~q\))) # (!\P|REGfile|M1|Mux13~0_combout\ & (\P|REGfile|R5|bit2|Q~q\)))) # (!\P|IR|bit13|Q~q\ & (((\P|REGfile|M1|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R5|bit2|Q~q\,
	datab => \P|IR|bit13|Q~q\,
	datac => \P|REGfile|R7|bit2|Q~q\,
	datad => \P|REGfile|M1|Mux13~0_combout\,
	combout => \P|REGfile|M1|Mux13~1_combout\);

-- Location: LCCOMB_X57_Y30_N8
\P|REGfile|M1|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux13~3_combout\ = (\P|REGfile|M1|Mux13~2_combout\ & ((\P|REGfile|R3|bit2|Q~q\) # ((!\P|RA|bit6|Q~0_combout\)))) # (!\P|REGfile|M1|Mux13~2_combout\ & (((\P|REGfile|M1|Mux13~1_combout\ & \P|RA|bit6|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux13~2_combout\,
	datab => \P|REGfile|R3|bit2|Q~q\,
	datac => \P|REGfile|M1|Mux13~1_combout\,
	datad => \P|RA|bit6|Q~0_combout\,
	combout => \P|REGfile|M1|Mux13~3_combout\);

-- Location: LCCOMB_X50_Y30_N2
\P|REGfile|M1|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux13~4_combout\ = (\P|REGfile|M1|Mux13~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|RA|bit6|Q~1_combout\) # (\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|REGfile|M1|Mux13~3_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux13~4_combout\);

-- Location: FF_X50_Y30_N3
\P|RA|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux13~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit2|Q~q\);

-- Location: LCCOMB_X51_Y32_N0
\P|ALU_comp|M2|result[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[2]~13_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux13~0_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit2|Q~q\,
	datab => \P|CU|B_inv~1_combout\,
	datac => \P|CU|B_select~0_combout\,
	datad => \P|IMME|Mux13~0_combout\,
	combout => \P|ALU_comp|M2|result[2]~13_combout\);

-- Location: LCCOMB_X50_Y29_N10
\P|ALU_comp|A1|S2|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S2|C_out~0_combout\ = (\P|ALU_comp|M2|result[2]~13_combout\ & ((\P|ALU_comp|A1|S1|C_out~0_combout\) # (\P|RA|bit2|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[2]~13_combout\ & (\P|ALU_comp|A1|S1|C_out~0_combout\ & 
-- (\P|RA|bit2|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit2|Q~q\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|ALU_comp|M2|result[2]~13_combout\,
	datad => \P|ALU_comp|A1|S1|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S2|C_out~0_combout\);

-- Location: LCCOMB_X50_Y29_N16
\P|ALU_comp|A1|S3|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S3|C_out~0_combout\ = (\P|ALU_comp|M2|result[3]~12_combout\ & ((\P|ALU_comp|A1|S2|C_out~0_combout\) # (\P|RA|bit3|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[3]~12_combout\ & (\P|ALU_comp|A1|S2|C_out~0_combout\ & 
-- (\P|RA|bit3|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit3|Q~q\,
	datab => \P|ALU_comp|M2|result[3]~12_combout\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|A1|S2|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S3|C_out~0_combout\);

-- Location: LCCOMB_X50_Y29_N14
\P|ALU_comp|A1|S4|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S4|C_out~0_combout\ = (\P|ALU_comp|M2|result[4]~11_combout\ & ((\P|ALU_comp|A1|S3|C_out~0_combout\) # (\P|RA|bit4|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[4]~11_combout\ & (\P|ALU_comp|A1|S3|C_out~0_combout\ & 
-- (\P|RA|bit4|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M2|result[4]~11_combout\,
	datab => \P|RA|bit4|Q~q\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|A1|S3|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S4|C_out~0_combout\);

-- Location: LCCOMB_X50_Y29_N20
\P|ALU_comp|A1|S5|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S5|C_out~0_combout\ = (\P|ALU_comp|M2|result[5]~10_combout\ & ((\P|ALU_comp|A1|S4|C_out~0_combout\) # (\P|RA|bit5|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[5]~10_combout\ & (\P|ALU_comp|A1|S4|C_out~0_combout\ & 
-- (\P|RA|bit5|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit5|Q~q\,
	datab => \P|ALU_comp|M2|result[5]~10_combout\,
	datac => \P|ALU_comp|A1|S4|C_out~0_combout\,
	datad => \P|CU|A_inv~0_combout\,
	combout => \P|ALU_comp|A1|S5|C_out~0_combout\);

-- Location: LCCOMB_X50_Y29_N2
\P|ALU_comp|A1|S6|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S6|C_out~0_combout\ = (\P|ALU_comp|M2|result[6]~9_combout\ & ((\P|ALU_comp|A1|S5|C_out~0_combout\) # (\P|CU|A_inv~0_combout\ $ (\P|RA|bit6|Q~q\)))) # (!\P|ALU_comp|M2|result[6]~9_combout\ & (\P|ALU_comp|A1|S5|C_out~0_combout\ & 
-- (\P|CU|A_inv~0_combout\ $ (\P|RA|bit6|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M2|result[6]~9_combout\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|RA|bit6|Q~q\,
	datad => \P|ALU_comp|A1|S5|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S6|C_out~0_combout\);

-- Location: LCCOMB_X52_Y29_N24
\P|ALU_comp|A1|S7|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S7|S~combout\ = \P|ALU_comp|M2|result[7]~8_combout\ $ (\P|CU|A_inv~0_combout\ $ (\P|RA|bit7|Q~q\ $ (\P|ALU_comp|A1|S6|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M2|result[7]~8_combout\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|RA|bit7|Q~q\,
	datad => \P|ALU_comp|A1|S6|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S7|S~combout\);

-- Location: LCCOMB_X52_Y29_N2
\P|ALU_comp|M3|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux8~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|CU|ALU_op[1]~7_combout\ & ((\P|ALU_comp|A1|S7|S~combout\))) # (!\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|M2|result[7]~8_combout\)))) # (!\P|CU|ALU_op[0]~9_combout\ & 
-- (((\P|ALU_comp|M2|result[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M2|result[7]~8_combout\,
	datad => \P|ALU_comp|A1|S7|S~combout\,
	combout => \P|ALU_comp|M3|Mux8~0_combout\);

-- Location: LCCOMB_X52_Y29_N10
\P|ALU_comp|M3|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux8~1_combout\ = (\P|ALU_comp|M3|Mux8~0_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # (\P|CU|ALU_op[1]~7_combout\ $ (\P|ALU_comp|M1|result[7]~7_combout\)))) # (!\P|ALU_comp|M3|Mux8~0_combout\ & (\P|ALU_comp|M1|result[7]~7_combout\ & 
-- (\P|CU|ALU_op[0]~9_combout\ $ (\P|CU|ALU_op[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M1|result[7]~7_combout\,
	datad => \P|ALU_comp|M3|Mux8~0_combout\,
	combout => \P|ALU_comp|M3|Mux8~1_combout\);

-- Location: FF_X52_Y29_N11
\P|RZ|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux8~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit7|Q~q\);

-- Location: LCCOMB_X52_Y33_N16
\P|RY|bit7|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit7|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[7]~15_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit7|Q~q\,
	datab => \P|CU|MA_select~0_combout\,
	datad => \MemIO|Data_out[7]~15_combout\,
	combout => \P|RY|bit7|Q~0_combout\);

-- Location: LCCOMB_X54_Y32_N20
\P|RY|bit0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit0|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[0]~7_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit0|Q~q\,
	datad => \MemIO|Data_out[0]~7_combout\,
	combout => \P|RY|bit0|Q~0_combout\);

-- Location: LCCOMB_X50_Y30_N16
\P|PC_temp|bit0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit0|Q~feeder_combout\ = \P|PC|bit0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|PC|bit0|Q~q\,
	combout => \P|PC_temp|bit0|Q~feeder_combout\);

-- Location: FF_X50_Y30_N17
\P|PC_temp|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit0|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit0|Q~q\);

-- Location: LCCOMB_X52_Y32_N6
\P|CU|Y_select~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Y_select~0_combout\ = (\P|CU|current_state\(2) & (!\P|CU|current_state\(0) & !\P|CU|current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|current_state\(2),
	datac => \P|CU|current_state\(0),
	datad => \P|CU|current_state\(1),
	combout => \P|CU|Y_select~0_combout\);

-- Location: LCCOMB_X54_Y32_N2
\P|CU|Y_select~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Y_select~1_combout\ = (\P|IR|bit1|Q~q\ & (\P|IR|bit0|Q~q\ & (\P|IR|bit2|Q~q\ & \P|CU|Y_select~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit1|Q~q\,
	datab => \P|IR|bit0|Q~q\,
	datac => \P|IR|bit2|Q~q\,
	datad => \P|CU|Y_select~0_combout\,
	combout => \P|CU|Y_select~1_combout\);

-- Location: FF_X54_Y32_N21
\P|RY|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit0|Q~0_combout\,
	asdata => \P|PC_temp|bit0|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit0|Q~q\);

-- Location: FF_X58_Y34_N15
\P|REGfile|R2|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit0|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit0|Q~q\);

-- Location: LCCOMB_X58_Y34_N28
\P|REGfile|R1|bit0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|R1|bit0|Q~feeder_combout\ = \P|RY|bit0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RY|bit0|Q~q\,
	combout => \P|REGfile|R1|bit0|Q~feeder_combout\);

-- Location: FF_X58_Y34_N29
\P|REGfile|R1|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|R1|bit0|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit0|Q~q\);

-- Location: LCCOMB_X58_Y34_N14
\P|REGfile|M1|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux15~2_combout\ = (\P|RA|bit6|Q~0_combout\ & (\P|RA|bit6|Q~1_combout\)) # (!\P|RA|bit6|Q~0_combout\ & ((\P|RA|bit6|Q~1_combout\ & (\P|REGfile|R2|bit0|Q~q\)) # (!\P|RA|bit6|Q~1_combout\ & ((\P|REGfile|R1|bit0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|REGfile|R2|bit0|Q~q\,
	datad => \P|REGfile|R1|bit0|Q~q\,
	combout => \P|REGfile|M1|Mux15~2_combout\);

-- Location: FF_X57_Y34_N21
\P|REGfile|R3|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit0|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit0|Q~q\);

-- Location: FF_X59_Y31_N17
\P|REGfile|R4|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit0|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit0|Q~q\);

-- Location: FF_X59_Y31_N25
\P|REGfile|R5|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit0|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit0|Q~q\);

-- Location: LCCOMB_X59_Y31_N24
\P|REGfile|M1|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux15~0_combout\ = (\P|IR|bit14|Q~q\ & (((\P|IR|bit13|Q~q\)))) # (!\P|IR|bit14|Q~q\ & ((\P|IR|bit13|Q~q\ & ((\P|REGfile|R5|bit0|Q~q\))) # (!\P|IR|bit13|Q~q\ & (\P|REGfile|R4|bit0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit14|Q~q\,
	datab => \P|REGfile|R4|bit0|Q~q\,
	datac => \P|REGfile|R5|bit0|Q~q\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux15~0_combout\);

-- Location: FF_X58_Y31_N29
\P|REGfile|R6|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit0|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit0|Q~q\);

-- Location: FF_X58_Y31_N9
\P|REGfile|R7|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit0|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit0|Q~q\);

-- Location: LCCOMB_X58_Y31_N8
\P|REGfile|M1|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux15~1_combout\ = (\P|REGfile|M1|Mux15~0_combout\ & (((\P|REGfile|R7|bit0|Q~q\) # (!\P|IR|bit14|Q~q\)))) # (!\P|REGfile|M1|Mux15~0_combout\ & (\P|REGfile|R6|bit0|Q~q\ & ((\P|IR|bit14|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux15~0_combout\,
	datab => \P|REGfile|R6|bit0|Q~q\,
	datac => \P|REGfile|R7|bit0|Q~q\,
	datad => \P|IR|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux15~1_combout\);

-- Location: LCCOMB_X57_Y34_N20
\P|REGfile|M1|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux15~3_combout\ = (\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|M1|Mux15~2_combout\ & (\P|REGfile|R3|bit0|Q~q\)) # (!\P|REGfile|M1|Mux15~2_combout\ & ((\P|REGfile|M1|Mux15~1_combout\))))) # (!\P|RA|bit6|Q~0_combout\ & 
-- (\P|REGfile|M1|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|M1|Mux15~2_combout\,
	datac => \P|REGfile|R3|bit0|Q~q\,
	datad => \P|REGfile|M1|Mux15~1_combout\,
	combout => \P|REGfile|M1|Mux15~3_combout\);

-- Location: LCCOMB_X50_Y30_N4
\P|REGfile|M1|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux15~4_combout\ = (\P|REGfile|M1|Mux15~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|RA|bit6|Q~1_combout\) # (\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|REGfile|M1|Mux15~3_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux15~4_combout\);

-- Location: FF_X50_Y30_N5
\P|RA|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux15~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit0|Q~q\);

-- Location: LCCOMB_X50_Y32_N0
\P|CU|MEM_write~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|MEM_write~2_combout\ = (!\P|IR|bit2|Q~q\ & !\P|IR|bit0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|IR|bit2|Q~q\,
	datad => \P|IR|bit0|Q~q\,
	combout => \P|CU|MEM_write~2_combout\);

-- Location: LCCOMB_X50_Y32_N14
\P|CU|C_in~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|C_in~2_combout\ = (\P|CU|C_in~1_combout\ & (!\P|IR|bit1|Q~q\ & (\P|CU|Equal0~0_combout\ & \P|CU|MEM_write~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|C_in~1_combout\,
	datab => \P|IR|bit1|Q~q\,
	datac => \P|CU|Equal0~0_combout\,
	datad => \P|CU|MEM_write~2_combout\,
	combout => \P|CU|C_in~2_combout\);

-- Location: LCCOMB_X51_Y32_N22
\P|IMME|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux15~0_combout\ = (\P|CU|extend[1]~7_combout\ & (\P|IR|bit7|Q~q\ & ((\P|CU|extend~5_combout\)))) # (!\P|CU|extend[1]~7_combout\ & (((\P|IR|bit3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit7|Q~q\,
	datab => \P|IR|bit3|Q~q\,
	datac => \P|CU|extend~5_combout\,
	datad => \P|CU|extend[1]~7_combout\,
	combout => \P|IMME|Mux15~0_combout\);

-- Location: LCCOMB_X50_Y30_N8
\P|Adder_comp|S0|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S0|S~combout\ = \P|PC|bit0|Q~q\ $ (\P|CU|C_in~2_combout\ $ (((\P|IMME|Mux15~0_combout\) # (\P|CU|INC_select~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit0|Q~q\,
	datab => \P|CU|C_in~2_combout\,
	datac => \P|IMME|Mux15~0_combout\,
	datad => \P|CU|INC_select~0_combout\,
	combout => \P|Adder_comp|S0|S~combout\);

-- Location: LCCOMB_X50_Y30_N12
\P|PC|bit0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit0|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S0|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit0|Q~q\,
	datab => \P|Adder_comp|S0|S~combout\,
	datad => \P|CU|PC_select[0]~3_combout\,
	combout => \P|PC|bit0|Q~0_combout\);

-- Location: LCCOMB_X54_Y32_N8
\P|CU|PC_select[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|PC_select[0]~4_combout\ = ((\P|CU|Equal0~1_combout\) # (!\P|CU|INC_select~0_combout\)) # (!\P|CU|PC_select[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|PC_select[0]~2_combout\,
	datac => \P|CU|Equal0~1_combout\,
	datad => \P|CU|INC_select~0_combout\,
	combout => \P|CU|PC_select[0]~4_combout\);

-- Location: FF_X50_Y30_N13
\P|PC|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit0|Q~0_combout\,
	asdata => \P|IMME|Mux15~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit0|Q~q\);

-- Location: LCCOMB_X50_Y31_N8
\P|Adder_comp|S0|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S0|C_out~0_combout\ = (\P|PC|bit0|Q~q\ & ((\P|CU|C_in~2_combout\) # ((\P|CU|INC_select~0_combout\) # (\P|IMME|Mux15~0_combout\)))) # (!\P|PC|bit0|Q~q\ & (\P|CU|C_in~2_combout\ & ((\P|CU|INC_select~0_combout\) # (\P|IMME|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit0|Q~q\,
	datab => \P|CU|C_in~2_combout\,
	datac => \P|CU|INC_select~0_combout\,
	datad => \P|IMME|Mux15~0_combout\,
	combout => \P|Adder_comp|S0|C_out~0_combout\);

-- Location: LCCOMB_X50_Y31_N2
\P|Adder_comp|S1|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S1|C_out~0_combout\ = (\P|PC|bit1|Q~q\ & ((\P|Adder_comp|S0|C_out~0_combout\) # ((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux14~0_combout\)))) # (!\P|PC|bit1|Q~q\ & (!\P|CU|INC_select~0_combout\ & (\P|Adder_comp|S0|C_out~0_combout\ & 
-- \P|IMME|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit1|Q~q\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|Adder_comp|S0|C_out~0_combout\,
	datad => \P|IMME|Mux14~0_combout\,
	combout => \P|Adder_comp|S1|C_out~0_combout\);

-- Location: LCCOMB_X50_Y31_N24
\P|Adder_comp|S2|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S2|C_out~0_combout\ = (\P|PC|bit2|Q~q\ & ((\P|Adder_comp|S1|C_out~0_combout\) # ((\P|IMME|Mux13~0_combout\ & !\P|CU|INC_select~0_combout\)))) # (!\P|PC|bit2|Q~q\ & (\P|IMME|Mux13~0_combout\ & (!\P|CU|INC_select~0_combout\ & 
-- \P|Adder_comp|S1|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit2|Q~q\,
	datab => \P|IMME|Mux13~0_combout\,
	datac => \P|CU|INC_select~0_combout\,
	datad => \P|Adder_comp|S1|C_out~0_combout\,
	combout => \P|Adder_comp|S2|C_out~0_combout\);

-- Location: LCCOMB_X50_Y31_N18
\P|Adder_comp|S3|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S3|C_out~0_combout\ = (\P|PC|bit3|Q~q\ & ((\P|Adder_comp|S2|C_out~0_combout\) # ((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux12~0_combout\)))) # (!\P|PC|bit3|Q~q\ & (!\P|CU|INC_select~0_combout\ & (\P|IMME|Mux12~0_combout\ & 
-- \P|Adder_comp|S2|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit3|Q~q\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|IMME|Mux12~0_combout\,
	datad => \P|Adder_comp|S2|C_out~0_combout\,
	combout => \P|Adder_comp|S3|C_out~0_combout\);

-- Location: LCCOMB_X50_Y31_N4
\P|Adder_comp|S4|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S4|C_out~0_combout\ = (\P|PC|bit4|Q~q\ & ((\P|Adder_comp|S3|C_out~0_combout\) # ((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux11~0_combout\)))) # (!\P|PC|bit4|Q~q\ & (!\P|CU|INC_select~0_combout\ & (\P|IMME|Mux11~0_combout\ & 
-- \P|Adder_comp|S3|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit4|Q~q\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|IMME|Mux11~0_combout\,
	datad => \P|Adder_comp|S3|C_out~0_combout\,
	combout => \P|Adder_comp|S4|C_out~0_combout\);

-- Location: LCCOMB_X50_Y31_N6
\P|Adder_comp|S5|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S5|C_out~0_combout\ = (\P|Adder_comp|S4|C_out~0_combout\ & ((\P|PC|bit5|Q~q\) # ((\P|IMME|Mux10~0_combout\ & !\P|CU|INC_select~0_combout\)))) # (!\P|Adder_comp|S4|C_out~0_combout\ & (\P|IMME|Mux10~0_combout\ & (!\P|CU|INC_select~0_combout\ & 
-- \P|PC|bit5|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux10~0_combout\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|Adder_comp|S4|C_out~0_combout\,
	datad => \P|PC|bit5|Q~q\,
	combout => \P|Adder_comp|S5|C_out~0_combout\);

-- Location: LCCOMB_X50_Y31_N28
\P|Adder_comp|S6|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S6|C_out~0_combout\ = (\P|PC|bit6|Q~q\ & ((\P|Adder_comp|S5|C_out~0_combout\) # ((\P|IMME|Mux9~0_combout\ & !\P|CU|INC_select~0_combout\)))) # (!\P|PC|bit6|Q~q\ & (\P|IMME|Mux9~0_combout\ & (!\P|CU|INC_select~0_combout\ & 
-- \P|Adder_comp|S5|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux9~0_combout\,
	datab => \P|PC|bit6|Q~q\,
	datac => \P|CU|INC_select~0_combout\,
	datad => \P|Adder_comp|S5|C_out~0_combout\,
	combout => \P|Adder_comp|S6|C_out~0_combout\);

-- Location: LCCOMB_X50_Y31_N26
\P|Adder_comp|S7|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S7|S~combout\ = \P|PC|bit7|Q~q\ $ (\P|Adder_comp|S6|C_out~0_combout\ $ (((\P|IMME|Mux8~2_combout\ & !\P|CU|INC_select~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux8~2_combout\,
	datab => \P|PC|bit7|Q~q\,
	datac => \P|CU|INC_select~0_combout\,
	datad => \P|Adder_comp|S6|C_out~0_combout\,
	combout => \P|Adder_comp|S7|S~combout\);

-- Location: LCCOMB_X54_Y31_N0
\P|PC|bit7|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit7|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S7|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit7|Q~q\,
	datab => \P|CU|PC_select[0]~3_combout\,
	datad => \P|Adder_comp|S7|S~combout\,
	combout => \P|PC|bit7|Q~0_combout\);

-- Location: FF_X54_Y31_N1
\P|PC|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit7|Q~0_combout\,
	asdata => \P|IR|bit10|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit7|Q~q\);

-- Location: LCCOMB_X52_Y33_N22
\P|PC_temp|bit7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit7|Q~feeder_combout\ = \P|PC|bit7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|PC|bit7|Q~q\,
	combout => \P|PC_temp|bit7|Q~feeder_combout\);

-- Location: FF_X52_Y33_N23
\P|PC_temp|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit7|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit7|Q~q\);

-- Location: FF_X52_Y33_N17
\P|RY|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit7|Q~0_combout\,
	asdata => \P|PC_temp|bit7|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit7|Q~q\);

-- Location: FF_X58_Y32_N7
\P|REGfile|R2|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit7|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit7|Q~q\);

-- Location: LCCOMB_X59_Y31_N6
\P|REGfile|M1|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux8~0_combout\ = (\P|IR|bit14|Q~q\ & (\P|IR|bit13|Q~q\)) # (!\P|IR|bit14|Q~q\ & ((\P|IR|bit13|Q~q\ & (\P|REGfile|R5|bit7|Q~q\)) # (!\P|IR|bit13|Q~q\ & ((\P|REGfile|R4|bit7|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit14|Q~q\,
	datab => \P|IR|bit13|Q~q\,
	datac => \P|REGfile|R5|bit7|Q~q\,
	datad => \P|REGfile|R4|bit7|Q~q\,
	combout => \P|REGfile|M1|Mux8~0_combout\);

-- Location: LCCOMB_X58_Y31_N22
\P|REGfile|M1|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux8~1_combout\ = (\P|REGfile|M1|Mux8~0_combout\ & ((\P|REGfile|R7|bit7|Q~q\) # ((!\P|IR|bit14|Q~q\)))) # (!\P|REGfile|M1|Mux8~0_combout\ & (((\P|REGfile|R6|bit7|Q~q\ & \P|IR|bit14|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux8~0_combout\,
	datab => \P|REGfile|R7|bit7|Q~q\,
	datac => \P|REGfile|R6|bit7|Q~q\,
	datad => \P|IR|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux8~1_combout\);

-- Location: LCCOMB_X58_Y32_N16
\P|REGfile|M1|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux8~2_combout\ = (\P|RA|bit6|Q~1_combout\ & (\P|RA|bit6|Q~0_combout\)) # (!\P|RA|bit6|Q~1_combout\ & ((\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|M1|Mux8~1_combout\))) # (!\P|RA|bit6|Q~0_combout\ & (\P|REGfile|R1|bit7|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~1_combout\,
	datab => \P|RA|bit6|Q~0_combout\,
	datac => \P|REGfile|R1|bit7|Q~q\,
	datad => \P|REGfile|M1|Mux8~1_combout\,
	combout => \P|REGfile|M1|Mux8~2_combout\);

-- Location: LCCOMB_X57_Y32_N4
\P|REGfile|M1|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux8~3_combout\ = (\P|REGfile|M1|Mux8~2_combout\ & (((\P|REGfile|R3|bit7|Q~q\) # (!\P|RA|bit6|Q~1_combout\)))) # (!\P|REGfile|M1|Mux8~2_combout\ & (\P|REGfile|R2|bit7|Q~q\ & ((\P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R2|bit7|Q~q\,
	datab => \P|REGfile|M1|Mux8~2_combout\,
	datac => \P|REGfile|R3|bit7|Q~q\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux8~3_combout\);

-- Location: LCCOMB_X54_Y31_N26
\P|REGfile|M1|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux8~4_combout\ = (\P|REGfile|M1|Mux8~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|RA|bit6|Q~1_combout\) # (\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|M1|Mux8~3_combout\,
	datac => \P|RA|bit6|Q~1_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux8~4_combout\);

-- Location: FF_X54_Y31_N27
\P|RA|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux8~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit7|Q~q\);

-- Location: LCCOMB_X50_Y29_N28
\P|ALU_comp|A1|S7|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S7|C_out~0_combout\ = (\P|ALU_comp|M2|result[7]~8_combout\ & ((\P|ALU_comp|A1|S6|C_out~0_combout\) # (\P|RA|bit7|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[7]~8_combout\ & (\P|ALU_comp|A1|S6|C_out~0_combout\ & 
-- (\P|RA|bit7|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit7|Q~q\,
	datab => \P|ALU_comp|M2|result[7]~8_combout\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|A1|S6|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S7|C_out~0_combout\);

-- Location: LCCOMB_X50_Y29_N6
\P|ALU_comp|A1|S8|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S8|C_out~0_combout\ = (\P|ALU_comp|M2|result[8]~7_combout\ & ((\P|ALU_comp|A1|S7|C_out~0_combout\) # (\P|RA|bit8|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[8]~7_combout\ & (\P|ALU_comp|A1|S7|C_out~0_combout\ & 
-- (\P|RA|bit8|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit8|Q~q\,
	datab => \P|ALU_comp|M2|result[8]~7_combout\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|A1|S7|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S8|C_out~0_combout\);

-- Location: LCCOMB_X49_Y29_N30
\P|ALU_comp|A1|S9|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S9|S~combout\ = \P|RA|bit9|Q~q\ $ (\P|CU|A_inv~0_combout\ $ (\P|ALU_comp|M2|result[9]~6_combout\ $ (\P|ALU_comp|A1|S8|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit9|Q~q\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|ALU_comp|M2|result[9]~6_combout\,
	datad => \P|ALU_comp|A1|S8|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S9|S~combout\);

-- Location: LCCOMB_X49_Y29_N14
\P|ALU_comp|M3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux6~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|A1|S9|S~combout\)) # (!\P|CU|ALU_op[1]~7_combout\ & ((\P|ALU_comp|M2|result[9]~6_combout\))))) # (!\P|CU|ALU_op[0]~9_combout\ & 
-- (((\P|ALU_comp|M2|result[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|A1|S9|S~combout\,
	datab => \P|ALU_comp|M2|result[9]~6_combout\,
	datac => \P|CU|ALU_op[0]~9_combout\,
	datad => \P|CU|ALU_op[1]~7_combout\,
	combout => \P|ALU_comp|M3|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y29_N20
\P|ALU_comp|M1|result[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[9]~9_combout\ = \P|RA|bit9|Q~q\ $ (((\P|CU|Equal1~0_combout\ & (\P|CU|Equal0~0_combout\ & \P|CU|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal1~0_combout\,
	datab => \P|CU|Equal0~0_combout\,
	datac => \P|CU|Equal9~0_combout\,
	datad => \P|RA|bit9|Q~q\,
	combout => \P|ALU_comp|M1|result[9]~9_combout\);

-- Location: LCCOMB_X49_Y29_N12
\P|ALU_comp|M3|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux6~1_combout\ = (\P|ALU_comp|M3|Mux6~0_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # (\P|CU|ALU_op[1]~7_combout\ $ (\P|ALU_comp|M1|result[9]~9_combout\)))) # (!\P|ALU_comp|M3|Mux6~0_combout\ & (\P|ALU_comp|M1|result[9]~9_combout\ & 
-- (\P|CU|ALU_op[1]~7_combout\ $ (\P|CU|ALU_op[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[1]~7_combout\,
	datab => \P|ALU_comp|M3|Mux6~0_combout\,
	datac => \P|CU|ALU_op[0]~9_combout\,
	datad => \P|ALU_comp|M1|result[9]~9_combout\,
	combout => \P|ALU_comp|M3|Mux6~1_combout\);

-- Location: FF_X49_Y29_N13
\P|RZ|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux6~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit9|Q~q\);

-- Location: LCCOMB_X52_Y33_N28
\P|RY|bit9|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit9|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[9]~17_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit9|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit9|Q~q\,
	datab => \P|CU|MA_select~0_combout\,
	datad => \MemIO|Data_out[9]~17_combout\,
	combout => \P|RY|bit9|Q~0_combout\);

-- Location: LCCOMB_X50_Y31_N16
\P|Adder_comp|S7|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S7|C_out~0_combout\ = (\P|PC|bit7|Q~q\ & ((\P|Adder_comp|S6|C_out~0_combout\) # ((\P|IMME|Mux8~2_combout\ & !\P|CU|INC_select~0_combout\)))) # (!\P|PC|bit7|Q~q\ & (\P|IMME|Mux8~2_combout\ & (!\P|CU|INC_select~0_combout\ & 
-- \P|Adder_comp|S6|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux8~2_combout\,
	datab => \P|PC|bit7|Q~q\,
	datac => \P|CU|INC_select~0_combout\,
	datad => \P|Adder_comp|S6|C_out~0_combout\,
	combout => \P|Adder_comp|S7|C_out~0_combout\);

-- Location: LCCOMB_X50_Y31_N30
\P|Adder_comp|S8|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S8|S~combout\ = \P|PC|bit8|Q~q\ $ (\P|Adder_comp|S7|C_out~0_combout\ $ (((\P|IMME|Mux7~1_combout\ & !\P|CU|INC_select~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux7~1_combout\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|PC|bit8|Q~q\,
	datad => \P|Adder_comp|S7|C_out~0_combout\,
	combout => \P|Adder_comp|S8|S~combout\);

-- Location: LCCOMB_X50_Y30_N26
\P|PC|bit8|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit8|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S8|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit8|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit8|Q~q\,
	datab => \P|Adder_comp|S8|S~combout\,
	datad => \P|CU|PC_select[0]~3_combout\,
	combout => \P|PC|bit8|Q~0_combout\);

-- Location: FF_X50_Y30_N27
\P|PC|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit8|Q~0_combout\,
	asdata => \P|IR|bit11|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit8|Q~q\);

-- Location: LCCOMB_X50_Y31_N0
\P|Adder_comp|S8|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S8|C_out~0_combout\ = (\P|PC|bit8|Q~q\ & ((\P|Adder_comp|S7|C_out~0_combout\) # ((\P|IMME|Mux7~1_combout\ & !\P|CU|INC_select~0_combout\)))) # (!\P|PC|bit8|Q~q\ & (\P|IMME|Mux7~1_combout\ & (!\P|CU|INC_select~0_combout\ & 
-- \P|Adder_comp|S7|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux7~1_combout\,
	datab => \P|PC|bit8|Q~q\,
	datac => \P|CU|INC_select~0_combout\,
	datad => \P|Adder_comp|S7|C_out~0_combout\,
	combout => \P|Adder_comp|S8|C_out~0_combout\);

-- Location: LCCOMB_X54_Y31_N6
\P|Adder_comp|S9|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S9|S~combout\ = \P|PC|bit9|Q~q\ $ (\P|Adder_comp|S8|C_out~0_combout\ $ (((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|INC_select~0_combout\,
	datab => \P|PC|bit9|Q~q\,
	datac => \P|Adder_comp|S8|C_out~0_combout\,
	datad => \P|IMME|Mux6~1_combout\,
	combout => \P|Adder_comp|S9|S~combout\);

-- Location: LCCOMB_X54_Y31_N2
\P|PC|bit9|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit9|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & (\P|Adder_comp|S9|S~combout\)) # (!\P|CU|PC_select[0]~3_combout\ & ((\P|RA|bit9|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|Adder_comp|S9|S~combout\,
	datab => \P|RA|bit9|Q~q\,
	datad => \P|CU|PC_select[0]~3_combout\,
	combout => \P|PC|bit9|Q~0_combout\);

-- Location: FF_X54_Y31_N3
\P|PC|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit9|Q~0_combout\,
	asdata => \P|IMME|Mux6~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit9|Q~q\);

-- Location: LCCOMB_X54_Y31_N14
\P|PC_temp|bit9|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit9|Q~feeder_combout\ = \P|PC|bit9|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|PC|bit9|Q~q\,
	combout => \P|PC_temp|bit9|Q~feeder_combout\);

-- Location: FF_X54_Y31_N15
\P|PC_temp|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit9|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit9|Q~q\);

-- Location: FF_X52_Y33_N29
\P|RY|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit9|Q~0_combout\,
	asdata => \P|PC_temp|bit9|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit9|Q~q\);

-- Location: FF_X58_Y32_N21
\P|REGfile|R2|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit9|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit9|Q~q\);

-- Location: LCCOMB_X58_Y30_N26
\P|REGfile|M1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux6~0_combout\ = (\P|IR|bit13|Q~q\ & ((\P|IR|bit14|Q~q\) # ((\P|REGfile|R5|bit9|Q~q\)))) # (!\P|IR|bit13|Q~q\ & (!\P|IR|bit14|Q~q\ & ((\P|REGfile|R4|bit9|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|IR|bit14|Q~q\,
	datac => \P|REGfile|R5|bit9|Q~q\,
	datad => \P|REGfile|R4|bit9|Q~q\,
	combout => \P|REGfile|M1|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y30_N2
\P|REGfile|M1|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux6~1_combout\ = (\P|REGfile|M1|Mux6~0_combout\ & (((\P|REGfile|R7|bit9|Q~q\)) # (!\P|IR|bit14|Q~q\))) # (!\P|REGfile|M1|Mux6~0_combout\ & (\P|IR|bit14|Q~q\ & ((\P|REGfile|R6|bit9|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux6~0_combout\,
	datab => \P|IR|bit14|Q~q\,
	datac => \P|REGfile|R7|bit9|Q~q\,
	datad => \P|REGfile|R6|bit9|Q~q\,
	combout => \P|REGfile|M1|Mux6~1_combout\);

-- Location: LCCOMB_X58_Y32_N10
\P|REGfile|M1|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux6~2_combout\ = (\P|RA|bit6|Q~1_combout\ & (\P|RA|bit6|Q~0_combout\)) # (!\P|RA|bit6|Q~1_combout\ & ((\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|M1|Mux6~1_combout\))) # (!\P|RA|bit6|Q~0_combout\ & (\P|REGfile|R1|bit9|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~1_combout\,
	datab => \P|RA|bit6|Q~0_combout\,
	datac => \P|REGfile|R1|bit9|Q~q\,
	datad => \P|REGfile|M1|Mux6~1_combout\,
	combout => \P|REGfile|M1|Mux6~2_combout\);

-- Location: LCCOMB_X57_Y32_N30
\P|REGfile|M1|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux6~3_combout\ = (\P|REGfile|M1|Mux6~2_combout\ & (((\P|REGfile|R3|bit9|Q~q\) # (!\P|RA|bit6|Q~1_combout\)))) # (!\P|REGfile|M1|Mux6~2_combout\ & (\P|REGfile|R2|bit9|Q~q\ & ((\P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R2|bit9|Q~q\,
	datab => \P|REGfile|M1|Mux6~2_combout\,
	datac => \P|REGfile|R3|bit9|Q~q\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux6~3_combout\);

-- Location: LCCOMB_X54_Y31_N16
\P|REGfile|M1|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux6~4_combout\ = (\P|REGfile|M1|Mux6~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|RA|bit6|Q~1_combout\) # (\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|REGfile|M1|Mux6~3_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux6~4_combout\);

-- Location: FF_X54_Y31_N17
\P|RA|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux6~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit9|Q~q\);

-- Location: LCCOMB_X50_Y29_N8
\P|ALU_comp|A1|S9|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S9|C_out~0_combout\ = (\P|ALU_comp|M2|result[9]~6_combout\ & ((\P|ALU_comp|A1|S8|C_out~0_combout\) # (\P|RA|bit9|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[9]~6_combout\ & (\P|ALU_comp|A1|S8|C_out~0_combout\ & 
-- (\P|RA|bit9|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit9|Q~q\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|ALU_comp|M2|result[9]~6_combout\,
	datad => \P|ALU_comp|A1|S8|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S9|C_out~0_combout\);

-- Location: LCCOMB_X51_Y29_N20
\P|ALU_comp|A1|S10|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S10|C_out~0_combout\ = (\P|ALU_comp|M2|result[10]~5_combout\ & ((\P|ALU_comp|A1|S9|C_out~0_combout\) # (\P|RA|bit10|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[10]~5_combout\ & (\P|ALU_comp|A1|S9|C_out~0_combout\ & 
-- (\P|RA|bit10|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit10|Q~q\,
	datab => \P|ALU_comp|M2|result[10]~5_combout\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|A1|S9|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S10|C_out~0_combout\);

-- Location: LCCOMB_X51_Y29_N8
\P|ALU_comp|A1|S11|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S11|S~combout\ = \P|ALU_comp|M2|result[11]~4_combout\ $ (\P|CU|A_inv~0_combout\ $ (\P|RA|bit11|Q~q\ $ (\P|ALU_comp|A1|S10|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M2|result[11]~4_combout\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|RA|bit11|Q~q\,
	datad => \P|ALU_comp|A1|S10|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S11|S~combout\);

-- Location: LCCOMB_X52_Y31_N18
\P|ALU_comp|M3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux4~0_combout\ = (\P|CU|ALU_op[1]~7_combout\ & ((\P|CU|ALU_op[0]~9_combout\ & ((\P|ALU_comp|A1|S11|S~combout\))) # (!\P|CU|ALU_op[0]~9_combout\ & (\P|ALU_comp|M2|result[11]~4_combout\)))) # (!\P|CU|ALU_op[1]~7_combout\ & 
-- (\P|ALU_comp|M2|result[11]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[1]~7_combout\,
	datab => \P|ALU_comp|M2|result[11]~4_combout\,
	datac => \P|CU|ALU_op[0]~9_combout\,
	datad => \P|ALU_comp|A1|S11|S~combout\,
	combout => \P|ALU_comp|M3|Mux4~0_combout\);

-- Location: LCCOMB_X52_Y31_N8
\P|ALU_comp|M3|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux4~1_combout\ = (\P|ALU_comp|M3|Mux4~0_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # (\P|CU|ALU_op[1]~7_combout\ $ (\P|ALU_comp|M1|result[11]~11_combout\)))) # (!\P|ALU_comp|M3|Mux4~0_combout\ & (\P|ALU_comp|M1|result[11]~11_combout\ & 
-- (\P|CU|ALU_op[1]~7_combout\ $ (\P|CU|ALU_op[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[1]~7_combout\,
	datab => \P|ALU_comp|M1|result[11]~11_combout\,
	datac => \P|CU|ALU_op[0]~9_combout\,
	datad => \P|ALU_comp|M3|Mux4~0_combout\,
	combout => \P|ALU_comp|M3|Mux4~1_combout\);

-- Location: FF_X52_Y31_N9
\P|RZ|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux4~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit11|Q~q\);

-- Location: LCCOMB_X52_Y30_N2
\P|RY|bit11|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit11|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[11]~19_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit11|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit11|Q~q\,
	datad => \MemIO|Data_out[11]~19_combout\,
	combout => \P|RY|bit11|Q~0_combout\);

-- Location: LCCOMB_X52_Y30_N22
\P|PC_temp|bit11|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit11|Q~feeder_combout\ = \P|PC|bit11|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|PC|bit11|Q~q\,
	combout => \P|PC_temp|bit11|Q~feeder_combout\);

-- Location: FF_X52_Y30_N23
\P|PC_temp|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit11|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit11|Q~q\);

-- Location: FF_X52_Y30_N3
\P|RY|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit11|Q~0_combout\,
	asdata => \P|PC_temp|bit11|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit11|Q~q\);

-- Location: FF_X59_Y30_N27
\P|REGfile|R4|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit11|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit11|Q~q\);

-- Location: LCCOMB_X58_Y30_N22
\P|REGfile|M1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux4~0_combout\ = (\P|IR|bit14|Q~q\ & (((\P|IR|bit13|Q~q\)))) # (!\P|IR|bit14|Q~q\ & ((\P|IR|bit13|Q~q\ & ((\P|REGfile|R5|bit11|Q~q\))) # (!\P|IR|bit13|Q~q\ & (\P|REGfile|R4|bit11|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R4|bit11|Q~q\,
	datab => \P|IR|bit14|Q~q\,
	datac => \P|REGfile|R5|bit11|Q~q\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux4~0_combout\);

-- Location: LCCOMB_X58_Y30_N6
\P|REGfile|M1|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux4~1_combout\ = (\P|REGfile|M1|Mux4~0_combout\ & (((\P|REGfile|R7|bit11|Q~q\)) # (!\P|IR|bit14|Q~q\))) # (!\P|REGfile|M1|Mux4~0_combout\ & (\P|IR|bit14|Q~q\ & ((\P|REGfile|R6|bit11|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux4~0_combout\,
	datab => \P|IR|bit14|Q~q\,
	datac => \P|REGfile|R7|bit11|Q~q\,
	datad => \P|REGfile|R6|bit11|Q~q\,
	combout => \P|REGfile|M1|Mux4~1_combout\);

-- Location: LCCOMB_X57_Y32_N0
\P|REGfile|M1|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux4~2_combout\ = (\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|M1|Mux4~1_combout\) # ((\P|RA|bit6|Q~1_combout\)))) # (!\P|RA|bit6|Q~0_combout\ & (((\P|REGfile|R1|bit11|Q~q\ & !\P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|M1|Mux4~1_combout\,
	datac => \P|REGfile|R1|bit11|Q~q\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux4~2_combout\);

-- Location: LCCOMB_X57_Y32_N12
\P|REGfile|M1|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux4~3_combout\ = (\P|REGfile|M1|Mux4~2_combout\ & (((\P|REGfile|R3|bit11|Q~q\) # (!\P|RA|bit6|Q~1_combout\)))) # (!\P|REGfile|M1|Mux4~2_combout\ & (\P|REGfile|R2|bit11|Q~q\ & ((\P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux4~2_combout\,
	datab => \P|REGfile|R2|bit11|Q~q\,
	datac => \P|REGfile|R3|bit11|Q~q\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux4~3_combout\);

-- Location: LCCOMB_X57_Y32_N8
\P|REGfile|M1|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux4~4_combout\ = (\P|REGfile|M1|Mux4~3_combout\ & ((\P|IR|bit13|Q~q\) # ((\P|RA|bit6|Q~1_combout\) # (\P|RA|bit6|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux4~3_combout\,
	datab => \P|IR|bit13|Q~q\,
	datac => \P|RA|bit6|Q~1_combout\,
	datad => \P|RA|bit6|Q~0_combout\,
	combout => \P|REGfile|M1|Mux4~4_combout\);

-- Location: FF_X57_Y32_N9
\P|RA|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux4~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit11|Q~q\);

-- Location: LCCOMB_X50_Y31_N10
\P|Adder_comp|S9|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S9|C_out~0_combout\ = (\P|PC|bit9|Q~q\ & ((\P|Adder_comp|S8|C_out~0_combout\) # ((\P|IMME|Mux6~1_combout\ & !\P|CU|INC_select~0_combout\)))) # (!\P|PC|bit9|Q~q\ & (\P|IMME|Mux6~1_combout\ & (!\P|CU|INC_select~0_combout\ & 
-- \P|Adder_comp|S8|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit9|Q~q\,
	datab => \P|IMME|Mux6~1_combout\,
	datac => \P|CU|INC_select~0_combout\,
	datad => \P|Adder_comp|S8|C_out~0_combout\,
	combout => \P|Adder_comp|S9|C_out~0_combout\);

-- Location: LCCOMB_X54_Y31_N28
\P|Adder_comp|S10|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S10|S~combout\ = \P|PC|bit10|Q~q\ $ (\P|Adder_comp|S9|C_out~0_combout\ $ (((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|INC_select~0_combout\,
	datab => \P|PC|bit10|Q~q\,
	datac => \P|IMME|Mux5~1_combout\,
	datad => \P|Adder_comp|S9|C_out~0_combout\,
	combout => \P|Adder_comp|S10|S~combout\);

-- Location: LCCOMB_X54_Y31_N24
\P|PC|bit10|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit10|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S10|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit10|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit10|Q~q\,
	datab => \P|CU|PC_select[0]~3_combout\,
	datad => \P|Adder_comp|S10|S~combout\,
	combout => \P|PC|bit10|Q~0_combout\);

-- Location: FF_X54_Y31_N25
\P|PC|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit10|Q~0_combout\,
	asdata => \P|IMME|Mux5~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit10|Q~q\);

-- Location: LCCOMB_X50_Y31_N20
\P|Adder_comp|S10|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S10|C_out~0_combout\ = (\P|PC|bit10|Q~q\ & ((\P|Adder_comp|S9|C_out~0_combout\) # ((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux5~1_combout\)))) # (!\P|PC|bit10|Q~q\ & (!\P|CU|INC_select~0_combout\ & (\P|IMME|Mux5~1_combout\ & 
-- \P|Adder_comp|S9|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit10|Q~q\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|IMME|Mux5~1_combout\,
	datad => \P|Adder_comp|S9|C_out~0_combout\,
	combout => \P|Adder_comp|S10|C_out~0_combout\);

-- Location: LCCOMB_X52_Y31_N24
\P|Adder_comp|S11|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S11|S~combout\ = \P|PC|bit11|Q~q\ $ (\P|Adder_comp|S10|C_out~0_combout\ $ (((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit11|Q~q\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|IMME|Mux4~2_combout\,
	datad => \P|Adder_comp|S10|C_out~0_combout\,
	combout => \P|Adder_comp|S11|S~combout\);

-- Location: LCCOMB_X52_Y31_N12
\P|PC|bit11|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit11|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S11|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit11|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit11|Q~q\,
	datab => \P|Adder_comp|S11|S~combout\,
	datad => \P|CU|PC_select[0]~3_combout\,
	combout => \P|PC|bit11|Q~0_combout\);

-- Location: FF_X52_Y31_N13
\P|PC|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit11|Q~0_combout\,
	asdata => \P|IMME|Mux4~2_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit11|Q~q\);

-- Location: LCCOMB_X50_Y31_N14
\P|Adder_comp|S11|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S11|C_out~0_combout\ = (\P|PC|bit11|Q~q\ & ((\P|Adder_comp|S10|C_out~0_combout\) # ((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux4~2_combout\)))) # (!\P|PC|bit11|Q~q\ & (!\P|CU|INC_select~0_combout\ & (\P|IMME|Mux4~2_combout\ & 
-- \P|Adder_comp|S10|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit11|Q~q\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|IMME|Mux4~2_combout\,
	datad => \P|Adder_comp|S10|C_out~0_combout\,
	combout => \P|Adder_comp|S11|C_out~0_combout\);

-- Location: LCCOMB_X52_Y31_N2
\P|Adder_comp|S12|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S12|S~combout\ = \P|PC|bit12|Q~q\ $ (\P|Adder_comp|S11|C_out~0_combout\ $ (((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit12|Q~q\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|IMME|Mux3~1_combout\,
	datad => \P|Adder_comp|S11|C_out~0_combout\,
	combout => \P|Adder_comp|S12|S~combout\);

-- Location: LCCOMB_X52_Y31_N6
\P|PC|bit12|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit12|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S12|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit12|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|PC_select[0]~3_combout\,
	datab => \P|RA|bit12|Q~q\,
	datad => \P|Adder_comp|S12|S~combout\,
	combout => \P|PC|bit12|Q~0_combout\);

-- Location: FF_X52_Y31_N7
\P|PC|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit12|Q~0_combout\,
	asdata => \P|IMME|Mux3~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit12|Q~q\);

-- Location: LCCOMB_X50_Y31_N12
\P|Adder_comp|S12|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S12|C_out~0_combout\ = (\P|PC|bit12|Q~q\ & ((\P|Adder_comp|S11|C_out~0_combout\) # ((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux3~1_combout\)))) # (!\P|PC|bit12|Q~q\ & (!\P|CU|INC_select~0_combout\ & (\P|Adder_comp|S11|C_out~0_combout\ & 
-- \P|IMME|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit12|Q~q\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|Adder_comp|S11|C_out~0_combout\,
	datad => \P|IMME|Mux3~1_combout\,
	combout => \P|Adder_comp|S12|C_out~0_combout\);

-- Location: LCCOMB_X49_Y31_N24
\P|Adder_comp|S13|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S13|S~combout\ = \P|PC|bit13|Q~q\ $ (\P|Adder_comp|S12|C_out~0_combout\ $ (((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|INC_select~0_combout\,
	datab => \P|PC|bit13|Q~q\,
	datac => \P|Adder_comp|S12|C_out~0_combout\,
	datad => \P|IMME|Mux2~1_combout\,
	combout => \P|Adder_comp|S13|S~combout\);

-- Location: LCCOMB_X49_Y31_N20
\P|PC|bit13|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit13|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S13|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit13|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit13|Q~q\,
	datab => \P|CU|PC_select[0]~3_combout\,
	datad => \P|Adder_comp|S13|S~combout\,
	combout => \P|PC|bit13|Q~0_combout\);

-- Location: FF_X49_Y31_N21
\P|PC|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit13|Q~0_combout\,
	asdata => \P|IMME|Mux2~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit13|Q~q\);

-- Location: LCCOMB_X51_Y31_N24
\P|IMME|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux2~0_combout\ = (\P|IMME|Mux4~0_combout\ & (((\P|CU|extend[1]~7_combout\)))) # (!\P|IMME|Mux4~0_combout\ & ((\P|CU|extend[1]~7_combout\ & (\P|IR|bit7|Q~q\)) # (!\P|CU|extend[1]~7_combout\ & ((\P|IMME|Mux15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit7|Q~q\,
	datab => \P|IMME|Mux4~0_combout\,
	datac => \P|CU|extend[1]~7_combout\,
	datad => \P|IMME|Mux15~1_combout\,
	combout => \P|IMME|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y31_N26
\P|IMME|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux2~1_combout\ = (\P|IMME|Mux4~0_combout\ & ((\P|IMME|Mux2~0_combout\ & (\P|IR|bit15|Q~q\)) # (!\P|IMME|Mux2~0_combout\ & ((\P|PC|bit13|Q~q\))))) # (!\P|IMME|Mux4~0_combout\ & (((\P|IMME|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit15|Q~q\,
	datab => \P|PC|bit13|Q~q\,
	datac => \P|IMME|Mux4~0_combout\,
	datad => \P|IMME|Mux2~0_combout\,
	combout => \P|IMME|Mux2~1_combout\);

-- Location: LCCOMB_X50_Y33_N6
\P|ALU_comp|M2|result[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[13]~2_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux2~1_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit13|Q~q\,
	datab => \P|CU|B_select~0_combout\,
	datac => \P|CU|B_inv~1_combout\,
	datad => \P|IMME|Mux2~1_combout\,
	combout => \P|ALU_comp|M2|result[13]~2_combout\);

-- Location: LCCOMB_X51_Y29_N14
\P|ALU_comp|M3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux2~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|CU|ALU_op[1]~7_combout\ & ((\P|ALU_comp|A1|S13|S~combout\))) # (!\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|M2|result[13]~2_combout\)))) # (!\P|CU|ALU_op[0]~9_combout\ & 
-- (((\P|ALU_comp|M2|result[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M2|result[13]~2_combout\,
	datad => \P|ALU_comp|A1|S13|S~combout\,
	combout => \P|ALU_comp|M3|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y29_N26
\P|ALU_comp|M3|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux2~1_combout\ = (\P|ALU_comp|M3|Mux2~0_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # (\P|ALU_comp|M1|result[13]~13_combout\ $ (\P|CU|ALU_op[1]~7_combout\)))) # (!\P|ALU_comp|M3|Mux2~0_combout\ & (\P|ALU_comp|M1|result[13]~13_combout\ & 
-- (\P|CU|ALU_op[1]~7_combout\ $ (\P|CU|ALU_op[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M1|result[13]~13_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|CU|ALU_op[0]~9_combout\,
	datad => \P|ALU_comp|M3|Mux2~0_combout\,
	combout => \P|ALU_comp|M3|Mux2~1_combout\);

-- Location: FF_X52_Y29_N27
\P|RZ|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux2~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit13|Q~q\);

-- Location: LCCOMB_X52_Y33_N18
\P|RY|bit13|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit13|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[13]~21_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit13|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit13|Q~q\,
	datad => \MemIO|Data_out[13]~21_combout\,
	combout => \P|RY|bit13|Q~0_combout\);

-- Location: LCCOMB_X52_Y33_N8
\P|PC_temp|bit13|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit13|Q~feeder_combout\ = \P|PC|bit13|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|PC|bit13|Q~q\,
	combout => \P|PC_temp|bit13|Q~feeder_combout\);

-- Location: FF_X52_Y33_N9
\P|PC_temp|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit13|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit13|Q~q\);

-- Location: FF_X52_Y33_N19
\P|RY|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit13|Q~0_combout\,
	asdata => \P|PC_temp|bit13|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit13|Q~q\);

-- Location: FF_X58_Y32_N23
\P|REGfile|R2|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit13|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit13|Q~q\);

-- Location: LCCOMB_X59_Y30_N6
\P|REGfile|M1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux2~0_combout\ = (\P|IR|bit13|Q~q\ & ((\P|REGfile|R5|bit13|Q~q\) # ((\P|IR|bit14|Q~q\)))) # (!\P|IR|bit13|Q~q\ & (((\P|REGfile|R4|bit13|Q~q\ & !\P|IR|bit14|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|R5|bit13|Q~q\,
	datac => \P|REGfile|R4|bit13|Q~q\,
	datad => \P|IR|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y30_N30
\P|REGfile|M1|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux2~1_combout\ = (\P|REGfile|M1|Mux2~0_combout\ & (((\P|REGfile|R7|bit13|Q~q\)) # (!\P|IR|bit14|Q~q\))) # (!\P|REGfile|M1|Mux2~0_combout\ & (\P|IR|bit14|Q~q\ & (\P|REGfile|R6|bit13|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux2~0_combout\,
	datab => \P|IR|bit14|Q~q\,
	datac => \P|REGfile|R6|bit13|Q~q\,
	datad => \P|REGfile|R7|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux2~1_combout\);

-- Location: LCCOMB_X58_Y32_N26
\P|REGfile|M1|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux2~2_combout\ = (\P|RA|bit6|Q~1_combout\ & (\P|RA|bit6|Q~0_combout\)) # (!\P|RA|bit6|Q~1_combout\ & ((\P|RA|bit6|Q~0_combout\ & (\P|REGfile|M1|Mux2~1_combout\)) # (!\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|R1|bit13|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~1_combout\,
	datab => \P|RA|bit6|Q~0_combout\,
	datac => \P|REGfile|M1|Mux2~1_combout\,
	datad => \P|REGfile|R1|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux2~2_combout\);

-- Location: LCCOMB_X57_Y32_N2
\P|REGfile|M1|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux2~3_combout\ = (\P|REGfile|M1|Mux2~2_combout\ & (((\P|REGfile|R3|bit13|Q~q\) # (!\P|RA|bit6|Q~1_combout\)))) # (!\P|REGfile|M1|Mux2~2_combout\ & (\P|REGfile|R2|bit13|Q~q\ & ((\P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R2|bit13|Q~q\,
	datab => \P|REGfile|M1|Mux2~2_combout\,
	datac => \P|REGfile|R3|bit13|Q~q\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux2~3_combout\);

-- Location: LCCOMB_X57_Y32_N20
\P|REGfile|M1|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux2~4_combout\ = (\P|REGfile|M1|Mux2~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|RA|bit6|Q~1_combout\) # (\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|M1|Mux2~3_combout\,
	datac => \P|RA|bit6|Q~1_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux2~4_combout\);

-- Location: FF_X57_Y32_N21
\P|RA|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux2~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit13|Q~q\);

-- Location: LCCOMB_X52_Y31_N28
\P|ALU_comp|M2|result[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[12]~3_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & (\P|IMME|Mux3~1_combout\)) # (!\P|CU|B_select~0_combout\ & ((\P|RB|bit12|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux3~1_combout\,
	datab => \P|RB|bit12|Q~q\,
	datac => \P|CU|B_select~0_combout\,
	datad => \P|CU|B_inv~1_combout\,
	combout => \P|ALU_comp|M2|result[12]~3_combout\);

-- Location: LCCOMB_X51_Y29_N10
\P|ALU_comp|A1|S11|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S11|C_out~0_combout\ = (\P|ALU_comp|M2|result[11]~4_combout\ & ((\P|ALU_comp|A1|S10|C_out~0_combout\) # (\P|CU|A_inv~0_combout\ $ (\P|RA|bit11|Q~q\)))) # (!\P|ALU_comp|M2|result[11]~4_combout\ & (\P|ALU_comp|A1|S10|C_out~0_combout\ & 
-- (\P|CU|A_inv~0_combout\ $ (\P|RA|bit11|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M2|result[11]~4_combout\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|RA|bit11|Q~q\,
	datad => \P|ALU_comp|A1|S10|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S11|C_out~0_combout\);

-- Location: LCCOMB_X51_Y29_N28
\P|ALU_comp|A1|S12|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S12|C_out~0_combout\ = (\P|ALU_comp|M2|result[12]~3_combout\ & ((\P|ALU_comp|A1|S11|C_out~0_combout\) # (\P|RA|bit12|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[12]~3_combout\ & (\P|ALU_comp|A1|S11|C_out~0_combout\ & 
-- (\P|RA|bit12|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit12|Q~q\,
	datab => \P|ALU_comp|M2|result[12]~3_combout\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|A1|S11|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S12|C_out~0_combout\);

-- Location: LCCOMB_X51_Y29_N6
\P|ALU_comp|A1|S13|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S13|S~combout\ = \P|RA|bit13|Q~q\ $ (\P|CU|A_inv~0_combout\ $ (\P|ALU_comp|M2|result[13]~2_combout\ $ (\P|ALU_comp|A1|S12|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit13|Q~q\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|ALU_comp|M2|result[13]~2_combout\,
	datad => \P|ALU_comp|A1|S12|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S13|S~combout\);

-- Location: LCCOMB_X51_Y30_N0
\P|ALU_comp|A1|S2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S2|S~combout\ = \P|ALU_comp|M2|result[2]~13_combout\ $ (\P|ALU_comp|A1|S1|C_out~0_combout\ $ (\P|CU|A_inv~0_combout\ $ (\P|RA|bit2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M2|result[2]~13_combout\,
	datab => \P|ALU_comp|A1|S1|C_out~0_combout\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|RA|bit2|Q~q\,
	combout => \P|ALU_comp|A1|S2|S~combout\);

-- Location: LCCOMB_X50_Y29_N0
\P|ALU_comp|M2|result[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[0]~15_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux15~0_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|B_inv~1_combout\,
	datab => \P|RB|bit0|Q~q\,
	datac => \P|CU|B_select~0_combout\,
	datad => \P|IMME|Mux15~0_combout\,
	combout => \P|ALU_comp|M2|result[0]~15_combout\);

-- Location: LCCOMB_X49_Y29_N28
\P|ALU_comp|A1|S0|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S0|S~combout\ = \P|CU|A_inv~0_combout\ $ (\P|CU|C_in~2_combout\ $ (\P|ALU_comp|M2|result[0]~15_combout\ $ (\P|RA|bit0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|A_inv~0_combout\,
	datab => \P|CU|C_in~2_combout\,
	datac => \P|ALU_comp|M2|result[0]~15_combout\,
	datad => \P|RA|bit0|Q~q\,
	combout => \P|ALU_comp|A1|S0|S~combout\);

-- Location: LCCOMB_X50_Y29_N22
\P|ALU_comp|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|Z~0_combout\ = (\P|ALU_comp|A1|S0|S~combout\) # ((\P|ALU_comp|A1|S9|S~combout\) # (\P|ALU_comp|XORout[10]~1_combout\ $ (\P|ALU_comp|A1|S9|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|XORout[10]~1_combout\,
	datab => \P|ALU_comp|A1|S0|S~combout\,
	datac => \P|ALU_comp|A1|S9|C_out~0_combout\,
	datad => \P|ALU_comp|A1|S9|S~combout\,
	combout => \P|ALU_comp|Z~0_combout\);

-- Location: LCCOMB_X51_Y29_N2
\P|ALU_comp|A1|S13|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S13|C_out~0_combout\ = (\P|ALU_comp|M2|result[13]~2_combout\ & ((\P|ALU_comp|A1|S12|C_out~0_combout\) # (\P|RA|bit13|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[13]~2_combout\ & (\P|ALU_comp|A1|S12|C_out~0_combout\ & 
-- (\P|RA|bit13|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit13|Q~q\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|ALU_comp|M2|result[13]~2_combout\,
	datad => \P|ALU_comp|A1|S12|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S13|C_out~0_combout\);

-- Location: LCCOMB_X51_Y29_N4
\P|ALU_comp|Z~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|Z~1_combout\ = (\P|ALU_comp|A1|S2|S~combout\) # ((\P|ALU_comp|Z~0_combout\) # (\P|ALU_comp|XORout[14]~0_combout\ $ (\P|ALU_comp|A1|S13|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|A1|S2|S~combout\,
	datab => \P|ALU_comp|Z~0_combout\,
	datac => \P|ALU_comp|XORout[14]~0_combout\,
	datad => \P|ALU_comp|A1|S13|C_out~0_combout\,
	combout => \P|ALU_comp|Z~1_combout\);

-- Location: LCCOMB_X47_Y29_N24
\P|ALU_comp|A1|S5|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S5|S~combout\ = \P|ALU_comp|M2|result[5]~10_combout\ $ (\P|RA|bit5|Q~q\ $ (\P|CU|A_inv~0_combout\ $ (\P|ALU_comp|A1|S4|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M2|result[5]~10_combout\,
	datab => \P|RA|bit5|Q~q\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|A1|S4|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S5|S~combout\);

-- Location: LCCOMB_X47_Y29_N22
\P|ALU_comp|A1|S4|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S4|S~combout\ = \P|ALU_comp|A1|S3|C_out~0_combout\ $ (\P|RA|bit4|Q~q\ $ (\P|CU|A_inv~0_combout\ $ (\P|ALU_comp|M2|result[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|A1|S3|C_out~0_combout\,
	datab => \P|RA|bit4|Q~q\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|M2|result[4]~11_combout\,
	combout => \P|ALU_comp|A1|S4|S~combout\);

-- Location: LCCOMB_X47_Y29_N0
\P|ALU_comp|Z~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|Z~4_combout\ = (\P|ALU_comp|A1|S5|S~combout\) # ((\P|ALU_comp|A1|S4|S~combout\) # (\P|ALU_comp|A1|S5|C_out~0_combout\ $ (\P|ALU_comp|XORout[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|A1|S5|C_out~0_combout\,
	datab => \P|ALU_comp|A1|S5|S~combout\,
	datac => \P|ALU_comp|A1|S4|S~combout\,
	datad => \P|ALU_comp|XORout[6]~4_combout\,
	combout => \P|ALU_comp|Z~4_combout\);

-- Location: LCCOMB_X50_Y29_N18
\P|ALU_comp|A1|S0|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S0|C_out~0_combout\ = (\P|CU|C_in~2_combout\ & ((\P|ALU_comp|M2|result[0]~15_combout\) # (\P|RA|bit0|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|CU|C_in~2_combout\ & (\P|ALU_comp|M2|result[0]~15_combout\ & (\P|RA|bit0|Q~q\ $ 
-- (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit0|Q~q\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|CU|C_in~2_combout\,
	datad => \P|ALU_comp|M2|result[0]~15_combout\,
	combout => \P|ALU_comp|A1|S0|C_out~0_combout\);

-- Location: FF_X57_Y32_N17
\P|REGfile|R3|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit1|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit1|Q~q\);

-- Location: FF_X58_Y34_N13
\P|REGfile|R2|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit1|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit1|Q~q\);

-- Location: FF_X59_Y31_N31
\P|REGfile|R5|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit1|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit1|Q~q\);

-- Location: FF_X59_Y31_N15
\P|REGfile|R4|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit1|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit1|Q~q\);

-- Location: LCCOMB_X59_Y31_N14
\P|REGfile|M2|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux14~0_combout\ = (\P|IR|bit10|Q~q\ & ((\P|REGfile|R5|bit1|Q~q\) # ((\P|IR|bit11|Q~q\)))) # (!\P|IR|bit10|Q~q\ & (((\P|REGfile|R4|bit1|Q~q\ & !\P|IR|bit11|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R5|bit1|Q~q\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|R4|bit1|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux14~0_combout\);

-- Location: FF_X58_Y31_N27
\P|REGfile|R7|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit1|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit1|Q~q\);

-- Location: FF_X58_Y31_N11
\P|REGfile|R6|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit1|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit1|Q~q\);

-- Location: LCCOMB_X58_Y31_N26
\P|REGfile|M2|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux14~1_combout\ = (\P|IR|bit11|Q~q\ & ((\P|REGfile|M2|Mux14~0_combout\ & (\P|REGfile|R7|bit1|Q~q\)) # (!\P|REGfile|M2|Mux14~0_combout\ & ((\P|REGfile|R6|bit1|Q~q\))))) # (!\P|IR|bit11|Q~q\ & (\P|REGfile|M2|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|REGfile|M2|Mux14~0_combout\,
	datac => \P|REGfile|R7|bit1|Q~q\,
	datad => \P|REGfile|R6|bit1|Q~q\,
	combout => \P|REGfile|M2|Mux14~1_combout\);

-- Location: LCCOMB_X58_Y34_N2
\P|REGfile|M2|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux14~2_combout\ = (\P|RB|bit15|Q~1_combout\ & (((\P|RB|bit15|Q~0_combout\)))) # (!\P|RB|bit15|Q~1_combout\ & ((\P|RB|bit15|Q~0_combout\ & (\P|REGfile|M2|Mux14~1_combout\)) # (!\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|R1|bit1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux14~1_combout\,
	datab => \P|RB|bit15|Q~1_combout\,
	datac => \P|REGfile|R1|bit1|Q~q\,
	datad => \P|RB|bit15|Q~0_combout\,
	combout => \P|REGfile|M2|Mux14~2_combout\);

-- Location: LCCOMB_X58_Y34_N12
\P|REGfile|M2|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux14~3_combout\ = (\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|M2|Mux14~2_combout\ & (\P|REGfile|R3|bit1|Q~q\)) # (!\P|REGfile|M2|Mux14~2_combout\ & ((\P|REGfile|R2|bit1|Q~q\))))) # (!\P|RB|bit15|Q~1_combout\ & 
-- (((\P|REGfile|M2|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R3|bit1|Q~q\,
	datab => \P|RB|bit15|Q~1_combout\,
	datac => \P|REGfile|R2|bit1|Q~q\,
	datad => \P|REGfile|M2|Mux14~2_combout\,
	combout => \P|REGfile|M2|Mux14~3_combout\);

-- Location: LCCOMB_X50_Y34_N26
\P|REGfile|M2|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux14~4_combout\ = (\P|REGfile|M2|Mux14~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux14~3_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|IR|bit10|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux14~4_combout\);

-- Location: FF_X51_Y32_N9
\P|RB|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|REGfile|M2|Mux14~4_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit1|Q~q\);

-- Location: LCCOMB_X51_Y32_N18
\P|ALU_comp|M2|result[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[1]~14_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux14~0_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit1|Q~q\,
	datab => \P|CU|B_select~0_combout\,
	datac => \P|CU|B_inv~1_combout\,
	datad => \P|IMME|Mux14~0_combout\,
	combout => \P|ALU_comp|M2|result[1]~14_combout\);

-- Location: LCCOMB_X52_Y29_N22
\P|ALU_comp|A1|S1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S1|S~combout\ = \P|RA|bit1|Q~q\ $ (\P|ALU_comp|A1|S0|C_out~0_combout\ $ (\P|ALU_comp|M2|result[1]~14_combout\ $ (\P|CU|A_inv~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit1|Q~q\,
	datab => \P|ALU_comp|A1|S0|C_out~0_combout\,
	datac => \P|ALU_comp|M2|result[1]~14_combout\,
	datad => \P|CU|A_inv~0_combout\,
	combout => \P|ALU_comp|A1|S1|S~combout\);

-- Location: LCCOMB_X49_Y29_N22
\P|ALU_comp|A1|S3|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S3|S~combout\ = \P|CU|A_inv~0_combout\ $ (\P|RA|bit3|Q~q\ $ (\P|ALU_comp|M2|result[3]~12_combout\ $ (\P|ALU_comp|A1|S2|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|A_inv~0_combout\,
	datab => \P|RA|bit3|Q~q\,
	datac => \P|ALU_comp|M2|result[3]~12_combout\,
	datad => \P|ALU_comp|A1|S2|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S3|S~combout\);

-- Location: LCCOMB_X52_Y29_N28
\P|ALU_comp|Z~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|Z~3_combout\ = (\P|ALU_comp|A1|S1|S~combout\) # ((\P|ALU_comp|A1|S3|S~combout\) # (\P|ALU_comp|A1|S7|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|A1|S1|S~combout\,
	datac => \P|ALU_comp|A1|S3|S~combout\,
	datad => \P|ALU_comp|A1|S7|S~combout\,
	combout => \P|ALU_comp|Z~3_combout\);

-- Location: LCCOMB_X51_Y30_N24
\P|ALU_comp|XORout[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|XORout[12]~3_combout\ = \P|RA|bit12|Q~q\ $ (\P|CU|A_inv~0_combout\ $ (\P|ALU_comp|M2|result[12]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|RA|bit12|Q~q\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|M2|result[12]~3_combout\,
	combout => \P|ALU_comp|XORout[12]~3_combout\);

-- Location: LCCOMB_X51_Y29_N30
\P|ALU_comp|Z~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|Z~2_combout\ = (\P|ALU_comp|XORout[12]~3_combout\ & ((\P|ALU_comp|A1|S7|C_out~0_combout\ $ (\P|ALU_comp|XORout[8]~2_combout\)) # (!\P|ALU_comp|A1|S11|C_out~0_combout\))) # (!\P|ALU_comp|XORout[12]~3_combout\ & 
-- ((\P|ALU_comp|A1|S11|C_out~0_combout\) # (\P|ALU_comp|A1|S7|C_out~0_combout\ $ (\P|ALU_comp|XORout[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|XORout[12]~3_combout\,
	datab => \P|ALU_comp|A1|S7|C_out~0_combout\,
	datac => \P|ALU_comp|XORout[8]~2_combout\,
	datad => \P|ALU_comp|A1|S11|C_out~0_combout\,
	combout => \P|ALU_comp|Z~2_combout\);

-- Location: LCCOMB_X51_Y29_N22
\P|ALU_comp|Z~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|Z~5_combout\ = (\P|ALU_comp|Z~4_combout\) # ((\P|ALU_comp|Z~3_combout\) # ((\P|ALU_comp|A1|S11|S~combout\) # (\P|ALU_comp|Z~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|Z~4_combout\,
	datab => \P|ALU_comp|Z~3_combout\,
	datac => \P|ALU_comp|A1|S11|S~combout\,
	datad => \P|ALU_comp|Z~2_combout\,
	combout => \P|ALU_comp|Z~5_combout\);

-- Location: LCCOMB_X50_Y31_N22
\P|Adder_comp|S13|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S13|C_out~0_combout\ = (\P|PC|bit13|Q~q\ & ((\P|Adder_comp|S12|C_out~0_combout\) # ((\P|IMME|Mux2~1_combout\ & !\P|CU|INC_select~0_combout\)))) # (!\P|PC|bit13|Q~q\ & (\P|IMME|Mux2~1_combout\ & (!\P|CU|INC_select~0_combout\ & 
-- \P|Adder_comp|S12|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux2~1_combout\,
	datab => \P|CU|INC_select~0_combout\,
	datac => \P|PC|bit13|Q~q\,
	datad => \P|Adder_comp|S12|C_out~0_combout\,
	combout => \P|Adder_comp|S13|C_out~0_combout\);

-- Location: LCCOMB_X51_Y31_N6
\P|Adder_comp|S14|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S14|S~combout\ = \P|PC|bit14|Q~q\ $ (\P|Adder_comp|S13|C_out~0_combout\ $ (((\P|IMME|Mux1~1_combout\ & !\P|CU|INC_select~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit14|Q~q\,
	datab => \P|IMME|Mux1~1_combout\,
	datac => \P|CU|INC_select~0_combout\,
	datad => \P|Adder_comp|S13|C_out~0_combout\,
	combout => \P|Adder_comp|S14|S~combout\);

-- Location: LCCOMB_X51_Y31_N12
\P|PC|bit14|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit14|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S14|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit14|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|PC_select[0]~3_combout\,
	datab => \P|RA|bit14|Q~q\,
	datad => \P|Adder_comp|S14|S~combout\,
	combout => \P|PC|bit14|Q~0_combout\);

-- Location: FF_X51_Y31_N13
\P|PC|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit14|Q~0_combout\,
	asdata => \P|IMME|Mux1~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit14|Q~q\);

-- Location: LCCOMB_X51_Y31_N2
\P|IMME|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux1~0_combout\ = (\P|CU|extend[1]~7_combout\ & ((\P|IR|bit8|Q~q\) # ((\P|IMME|Mux4~0_combout\)))) # (!\P|CU|extend[1]~7_combout\ & (((!\P|IMME|Mux4~0_combout\ & \P|IMME|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|extend[1]~7_combout\,
	datab => \P|IR|bit8|Q~q\,
	datac => \P|IMME|Mux4~0_combout\,
	datad => \P|IMME|Mux15~1_combout\,
	combout => \P|IMME|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y31_N0
\P|IMME|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux1~1_combout\ = (\P|IMME|Mux4~0_combout\ & ((\P|IMME|Mux1~0_combout\ & ((\P|IR|bit15|Q~q\))) # (!\P|IMME|Mux1~0_combout\ & (\P|PC|bit14|Q~q\)))) # (!\P|IMME|Mux4~0_combout\ & (((\P|IMME|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit14|Q~q\,
	datab => \P|IR|bit15|Q~q\,
	datac => \P|IMME|Mux4~0_combout\,
	datad => \P|IMME|Mux1~0_combout\,
	combout => \P|IMME|Mux1~1_combout\);

-- Location: LCCOMB_X50_Y33_N24
\P|ALU_comp|M2|result[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[14]~1_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & ((\P|IMME|Mux1~1_combout\))) # (!\P|CU|B_select~0_combout\ & (\P|RB|bit14|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit14|Q~q\,
	datab => \P|IMME|Mux1~1_combout\,
	datac => \P|CU|B_inv~1_combout\,
	datad => \P|CU|B_select~0_combout\,
	combout => \P|ALU_comp|M2|result[14]~1_combout\);

-- Location: LCCOMB_X51_Y29_N16
\P|ALU_comp|A1|S14|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S14|C_out~0_combout\ = (\P|ALU_comp|M2|result[14]~1_combout\ & ((\P|ALU_comp|A1|S13|C_out~0_combout\) # (\P|RA|bit14|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[14]~1_combout\ & (\P|ALU_comp|A1|S13|C_out~0_combout\ & 
-- (\P|RA|bit14|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit14|Q~q\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|ALU_comp|M2|result[14]~1_combout\,
	datad => \P|ALU_comp|A1|S13|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S14|C_out~0_combout\);

-- Location: LCCOMB_X51_Y29_N24
\P|ALU_comp|A1|S15|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S15|S~combout\ = \P|RA|bit15|Q~q\ $ (\P|CU|A_inv~0_combout\ $ (\P|ALU_comp|M2|result[15]~0_combout\ $ (\P|ALU_comp|A1|S14|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit15|Q~q\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|ALU_comp|M2|result[15]~0_combout\,
	datad => \P|ALU_comp|A1|S14|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S15|S~combout\);

-- Location: LCCOMB_X51_Y29_N12
\P|ALU_comp|Z~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|Z~6_combout\ = (!\P|ALU_comp|A1|S13|S~combout\ & (!\P|ALU_comp|Z~1_combout\ & (!\P|ALU_comp|Z~5_combout\ & !\P|ALU_comp|A1|S15|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|A1|S13|S~combout\,
	datab => \P|ALU_comp|Z~1_combout\,
	datac => \P|ALU_comp|Z~5_combout\,
	datad => \P|ALU_comp|A1|S15|S~combout\,
	combout => \P|ALU_comp|Z~6_combout\);

-- Location: LCCOMB_X50_Y32_N24
\P|CU|Status_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Status_enable~0_combout\ = (!\P|IR|bit3|Q~q\ & (\P|IR|bit6|Q~q\ & (!\P|IR|bit4|Q~q\ & !\P|IR|bit5|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit3|Q~q\,
	datab => \P|IR|bit6|Q~q\,
	datac => \P|IR|bit4|Q~q\,
	datad => \P|IR|bit5|Q~q\,
	combout => \P|CU|Status_enable~0_combout\);

-- Location: LCCOMB_X50_Y32_N30
\P|CU|Status_enable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Status_enable~1_combout\ = (\P|CU|Equal1~0_combout\ & (\P|CU|Equal0~0_combout\ & \P|CU|Status_enable~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal1~0_combout\,
	datac => \P|CU|Equal0~0_combout\,
	datad => \P|CU|Status_enable~0_combout\,
	combout => \P|CU|Status_enable~1_combout\);

-- Location: FF_X51_Y29_N13
\P|Status|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|Z~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Status_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|Status|bit0|Q~q\);

-- Location: LCCOMB_X51_Y32_N8
\P|CU|extend[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|extend[2]~3_combout\ = (!\P|IR|bit5|Q~q\ & (!\P|IR|bit4|Q~q\ & \P|Status|bit0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit5|Q~q\,
	datab => \P|IR|bit4|Q~q\,
	datad => \P|Status|bit0|Q~q\,
	combout => \P|CU|extend[2]~3_combout\);

-- Location: LCCOMB_X51_Y32_N4
\P|CU|extend~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|extend~5_combout\ = (\P|CU|extend~1_combout\) # ((\P|CU|extend[2]~2_combout\ & ((\P|CU|extend[2]~3_combout\) # (!\P|CU|extend~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|extend~1_combout\,
	datab => \P|CU|extend[2]~3_combout\,
	datac => \P|CU|extend~4_combout\,
	datad => \P|CU|extend[2]~2_combout\,
	combout => \P|CU|extend~5_combout\);

-- Location: LCCOMB_X51_Y31_N26
\P|IMME|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux0~0_combout\ = (\P|CU|extend~5_combout\ & (((\P|CU|extend[1]~7_combout\)))) # (!\P|CU|extend~5_combout\ & (\P|IR|bit9|Q~q\ & ((\P|CU|extend[1]~7_combout\) # (!\P|CU|PC_select~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit9|Q~q\,
	datab => \P|CU|PC_select~0_combout\,
	datac => \P|CU|extend~5_combout\,
	datad => \P|CU|extend[1]~7_combout\,
	combout => \P|IMME|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y31_N20
\P|Adder_comp|S14|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S14|C_out~0_combout\ = (\P|PC|bit14|Q~q\ & ((\P|Adder_comp|S13|C_out~0_combout\) # ((\P|IMME|Mux1~1_combout\ & !\P|CU|INC_select~0_combout\)))) # (!\P|PC|bit14|Q~q\ & (\P|IMME|Mux1~1_combout\ & (!\P|CU|INC_select~0_combout\ & 
-- \P|Adder_comp|S13|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit14|Q~q\,
	datab => \P|IMME|Mux1~1_combout\,
	datac => \P|CU|INC_select~0_combout\,
	datad => \P|Adder_comp|S13|C_out~0_combout\,
	combout => \P|Adder_comp|S14|C_out~0_combout\);

-- Location: LCCOMB_X51_Y31_N10
\P|Adder_comp|S15|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S15|S~combout\ = \P|PC|bit15|Q~q\ $ (\P|Adder_comp|S14|C_out~0_combout\ $ (((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|INC_select~0_combout\,
	datab => \P|PC|bit15|Q~q\,
	datac => \P|IMME|Mux0~1_combout\,
	datad => \P|Adder_comp|S14|C_out~0_combout\,
	combout => \P|Adder_comp|S15|S~combout\);

-- Location: LCCOMB_X51_Y31_N14
\P|PC|bit15|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit15|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S15|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit15|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit15|Q~q\,
	datab => \P|CU|PC_select[0]~3_combout\,
	datad => \P|Adder_comp|S15|S~combout\,
	combout => \P|PC|bit15|Q~0_combout\);

-- Location: FF_X51_Y31_N15
\P|PC|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit15|Q~0_combout\,
	asdata => \P|IMME|Mux0~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit15|Q~q\);

-- Location: LCCOMB_X51_Y31_N8
\P|IMME|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux0~1_combout\ = (\P|IMME|Mux0~0_combout\ & (((\P|IR|bit15|Q~q\)) # (!\P|IMME|Mux4~0_combout\))) # (!\P|IMME|Mux0~0_combout\ & (\P|IMME|Mux4~0_combout\ & ((\P|PC|bit15|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux0~0_combout\,
	datab => \P|IMME|Mux4~0_combout\,
	datac => \P|IR|bit15|Q~q\,
	datad => \P|PC|bit15|Q~q\,
	combout => \P|IMME|Mux0~1_combout\);

-- Location: FF_X58_Y30_N15
\P|REGfile|R7|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit15|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit15|Q~q\);

-- Location: FF_X59_Y30_N11
\P|REGfile|R6|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit15|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit15|Q~q\);

-- Location: FF_X59_Y30_N19
\P|REGfile|R4|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit15|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit15|Q~q\);

-- Location: FF_X58_Y30_N11
\P|REGfile|R5|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit15|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit15|Q~q\);

-- Location: LCCOMB_X59_Y30_N18
\P|REGfile|M2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux0~0_combout\ = (\P|IR|bit10|Q~q\ & ((\P|IR|bit11|Q~q\) # ((\P|REGfile|R5|bit15|Q~q\)))) # (!\P|IR|bit10|Q~q\ & (!\P|IR|bit11|Q~q\ & (\P|REGfile|R4|bit15|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|IR|bit11|Q~q\,
	datac => \P|REGfile|R4|bit15|Q~q\,
	datad => \P|REGfile|R5|bit15|Q~q\,
	combout => \P|REGfile|M2|Mux0~0_combout\);

-- Location: LCCOMB_X59_Y30_N10
\P|REGfile|M2|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux0~1_combout\ = (\P|IR|bit11|Q~q\ & ((\P|REGfile|M2|Mux0~0_combout\ & (\P|REGfile|R7|bit15|Q~q\)) # (!\P|REGfile|M2|Mux0~0_combout\ & ((\P|REGfile|R6|bit15|Q~q\))))) # (!\P|IR|bit11|Q~q\ & (((\P|REGfile|M2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R7|bit15|Q~q\,
	datab => \P|IR|bit11|Q~q\,
	datac => \P|REGfile|R6|bit15|Q~q\,
	datad => \P|REGfile|M2|Mux0~0_combout\,
	combout => \P|REGfile|M2|Mux0~1_combout\);

-- Location: LCCOMB_X58_Y34_N8
\P|REGfile|M2|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux0~2_combout\ = (\P|RB|bit15|Q~0_combout\ & ((\P|RB|bit15|Q~1_combout\) # ((\P|REGfile|M2|Mux0~1_combout\)))) # (!\P|RB|bit15|Q~0_combout\ & (!\P|RB|bit15|Q~1_combout\ & (\P|REGfile|R1|bit15|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|RB|bit15|Q~1_combout\,
	datac => \P|REGfile|R1|bit15|Q~q\,
	datad => \P|REGfile|M2|Mux0~1_combout\,
	combout => \P|REGfile|M2|Mux0~2_combout\);

-- Location: FF_X58_Y34_N23
\P|REGfile|R2|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit15|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit15|Q~q\);

-- Location: FF_X57_Y32_N29
\P|REGfile|R3|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit15|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit15|Q~q\);

-- Location: LCCOMB_X58_Y34_N22
\P|REGfile|M2|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux0~3_combout\ = (\P|REGfile|M2|Mux0~2_combout\ & (((\P|REGfile|R3|bit15|Q~q\)) # (!\P|RB|bit15|Q~1_combout\))) # (!\P|REGfile|M2|Mux0~2_combout\ & (\P|RB|bit15|Q~1_combout\ & (\P|REGfile|R2|bit15|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux0~2_combout\,
	datab => \P|RB|bit15|Q~1_combout\,
	datac => \P|REGfile|R2|bit15|Q~q\,
	datad => \P|REGfile|R3|bit15|Q~q\,
	combout => \P|REGfile|M2|Mux0~3_combout\);

-- Location: LCCOMB_X50_Y34_N28
\P|REGfile|M2|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux0~4_combout\ = (\P|REGfile|M2|Mux0~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux0~3_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|IR|bit10|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux0~4_combout\);

-- Location: FF_X50_Y34_N29
\P|RB|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux0~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit15|Q~q\);

-- Location: LCCOMB_X49_Y32_N14
\P|ALU_comp|M2|result[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M2|result[15]~0_combout\ = \P|CU|B_inv~1_combout\ $ (((\P|CU|B_select~0_combout\ & (\P|IMME|Mux0~1_combout\)) # (!\P|CU|B_select~0_combout\ & ((\P|RB|bit15|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|B_inv~1_combout\,
	datab => \P|IMME|Mux0~1_combout\,
	datac => \P|RB|bit15|Q~q\,
	datad => \P|CU|B_select~0_combout\,
	combout => \P|ALU_comp|M2|result[15]~0_combout\);

-- Location: LCCOMB_X51_Y29_N0
\P|ALU_comp|M3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux0~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|CU|ALU_op[1]~7_combout\ & ((\P|ALU_comp|A1|S15|S~combout\))) # (!\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|M2|result[15]~0_combout\)))) # (!\P|CU|ALU_op[0]~9_combout\ & 
-- (((\P|ALU_comp|M2|result[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M2|result[15]~0_combout\,
	datad => \P|ALU_comp|A1|S15|S~combout\,
	combout => \P|ALU_comp|M3|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y29_N26
\P|ALU_comp|M3|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux0~1_combout\ = (\P|ALU_comp|M3|Mux0~0_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # (\P|CU|ALU_op[1]~7_combout\ $ (\P|ALU_comp|M1|result[15]~15_combout\)))) # (!\P|ALU_comp|M3|Mux0~0_combout\ & (\P|ALU_comp|M1|result[15]~15_combout\ & 
-- (\P|CU|ALU_op[0]~9_combout\ $ (\P|CU|ALU_op[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M1|result[15]~15_combout\,
	datad => \P|ALU_comp|M3|Mux0~0_combout\,
	combout => \P|ALU_comp|M3|Mux0~1_combout\);

-- Location: FF_X51_Y29_N27
\P|RZ|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux0~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit15|Q~q\);

-- Location: LCCOMB_X52_Y30_N4
\P|RY|bit15|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit15|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[15]~23_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit15|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit15|Q~q\,
	datad => \MemIO|Data_out[15]~23_combout\,
	combout => \P|RY|bit15|Q~0_combout\);

-- Location: LCCOMB_X52_Y30_N26
\P|PC_temp|bit15|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit15|Q~feeder_combout\ = \P|PC|bit15|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|PC|bit15|Q~q\,
	combout => \P|PC_temp|bit15|Q~feeder_combout\);

-- Location: FF_X52_Y30_N27
\P|PC_temp|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit15|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit15|Q~q\);

-- Location: FF_X52_Y30_N5
\P|RY|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit15|Q~0_combout\,
	asdata => \P|PC_temp|bit15|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit15|Q~q\);

-- Location: FF_X58_Y34_N9
\P|REGfile|R1|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit15|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit15|Q~q\);

-- Location: LCCOMB_X58_Y30_N10
\P|REGfile|M1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux0~0_combout\ = (\P|IR|bit14|Q~q\ & (((\P|IR|bit13|Q~q\)))) # (!\P|IR|bit14|Q~q\ & ((\P|IR|bit13|Q~q\ & ((\P|REGfile|R5|bit15|Q~q\))) # (!\P|IR|bit13|Q~q\ & (\P|REGfile|R4|bit15|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R4|bit15|Q~q\,
	datab => \P|IR|bit14|Q~q\,
	datac => \P|REGfile|R5|bit15|Q~q\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y30_N14
\P|REGfile|M1|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux0~1_combout\ = (\P|IR|bit14|Q~q\ & ((\P|REGfile|M1|Mux0~0_combout\ & ((\P|REGfile|R7|bit15|Q~q\))) # (!\P|REGfile|M1|Mux0~0_combout\ & (\P|REGfile|R6|bit15|Q~q\)))) # (!\P|IR|bit14|Q~q\ & (((\P|REGfile|M1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit14|Q~q\,
	datab => \P|REGfile|R6|bit15|Q~q\,
	datac => \P|REGfile|R7|bit15|Q~q\,
	datad => \P|REGfile|M1|Mux0~0_combout\,
	combout => \P|REGfile|M1|Mux0~1_combout\);

-- Location: LCCOMB_X58_Y34_N24
\P|REGfile|M1|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux0~2_combout\ = (\P|RA|bit6|Q~0_combout\ & (((\P|RA|bit6|Q~1_combout\) # (\P|REGfile|M1|Mux0~1_combout\)))) # (!\P|RA|bit6|Q~0_combout\ & (\P|REGfile|R1|bit15|Q~q\ & (!\P|RA|bit6|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|R1|bit15|Q~q\,
	datac => \P|RA|bit6|Q~1_combout\,
	datad => \P|REGfile|M1|Mux0~1_combout\,
	combout => \P|REGfile|M1|Mux0~2_combout\);

-- Location: LCCOMB_X57_Y32_N28
\P|REGfile|M1|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux0~3_combout\ = (\P|REGfile|M1|Mux0~2_combout\ & (((\P|REGfile|R3|bit15|Q~q\) # (!\P|RA|bit6|Q~1_combout\)))) # (!\P|REGfile|M1|Mux0~2_combout\ & (\P|REGfile|R2|bit15|Q~q\ & ((\P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux0~2_combout\,
	datab => \P|REGfile|R2|bit15|Q~q\,
	datac => \P|REGfile|R3|bit15|Q~q\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux0~3_combout\);

-- Location: LCCOMB_X57_Y32_N10
\P|REGfile|M1|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux0~4_combout\ = (\P|REGfile|M1|Mux0~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|RA|bit6|Q~1_combout\) # (\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|M1|Mux0~3_combout\,
	datac => \P|RA|bit6|Q~1_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux0~4_combout\);

-- Location: FF_X57_Y32_N11
\P|RA|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux0~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit15|Q~q\);

-- Location: LCCOMB_X51_Y29_N18
\P|ALU_comp|V\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|V~combout\ = (\P|ALU_comp|M2|result[15]~0_combout\ & (!\P|ALU_comp|A1|S14|C_out~0_combout\ & (\P|RA|bit15|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[15]~0_combout\ & (\P|ALU_comp|A1|S14|C_out~0_combout\ & (\P|RA|bit15|Q~q\ $ 
-- (!\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit15|Q~q\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|ALU_comp|M2|result[15]~0_combout\,
	datad => \P|ALU_comp|A1|S14|C_out~0_combout\,
	combout => \P|ALU_comp|V~combout\);

-- Location: FF_X51_Y29_N19
\P|Status|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|V~combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Status_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|Status|bit1|Q~q\);

-- Location: FF_X51_Y29_N25
\P|Status|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|A1|S15|S~combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Status_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|Status|bit3|Q~q\);

-- Location: LCCOMB_X51_Y32_N26
\P|CU|extend~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|extend~4_combout\ = ((\P|Status|bit1|Q~q\ $ (\P|Status|bit3|Q~q\)) # (!\P|IR|bit4|Q~q\)) # (!\P|IR|bit5|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit5|Q~q\,
	datab => \P|IR|bit4|Q~q\,
	datac => \P|Status|bit1|Q~q\,
	datad => \P|Status|bit3|Q~q\,
	combout => \P|CU|extend~4_combout\);

-- Location: LCCOMB_X51_Y32_N28
\P|CU|extend~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|extend~8_combout\ = (\P|CU|Equal2~0_combout\ & (\P|IR|bit1|Q~q\ & (!\P|IR|bit0|Q~q\ & \P|CU|extend[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal2~0_combout\,
	datab => \P|IR|bit1|Q~q\,
	datac => \P|IR|bit0|Q~q\,
	datad => \P|CU|extend[1]~0_combout\,
	combout => \P|CU|extend~8_combout\);

-- Location: LCCOMB_X51_Y32_N30
\P|CU|INC_select~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|INC_select~0_combout\ = (!\P|CU|extend~8_combout\ & (((\P|CU|extend~4_combout\ & !\P|CU|extend[2]~3_combout\)) # (!\P|CU|extend[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|extend~4_combout\,
	datab => \P|CU|extend[2]~2_combout\,
	datac => \P|CU|extend[2]~3_combout\,
	datad => \P|CU|extend~8_combout\,
	combout => \P|CU|INC_select~0_combout\);

-- Location: LCCOMB_X49_Y31_N16
\P|Adder_comp|S5|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S5|S~combout\ = \P|PC|bit5|Q~q\ $ (\P|Adder_comp|S4|C_out~0_combout\ $ (((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|INC_select~0_combout\,
	datab => \P|PC|bit5|Q~q\,
	datac => \P|IMME|Mux10~0_combout\,
	datad => \P|Adder_comp|S4|C_out~0_combout\,
	combout => \P|Adder_comp|S5|S~combout\);

-- Location: LCCOMB_X49_Y31_N28
\P|PC|bit5|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit5|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S5|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit5|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit5|Q~q\,
	datab => \P|CU|PC_select[0]~3_combout\,
	datad => \P|Adder_comp|S5|S~combout\,
	combout => \P|PC|bit5|Q~0_combout\);

-- Location: FF_X49_Y31_N29
\P|PC|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit5|Q~0_combout\,
	asdata => \P|IMME|Mux10~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit5|Q~q\);

-- Location: LCCOMB_X49_Y32_N26
\P|PC_temp|bit5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit5|Q~feeder_combout\ = \P|PC|bit5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|PC|bit5|Q~q\,
	combout => \P|PC_temp|bit5|Q~feeder_combout\);

-- Location: FF_X49_Y32_N27
\P|PC_temp|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit5|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit5|Q~q\);

-- Location: FF_X52_Y32_N19
\P|RY|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit5|Q~0_combout\,
	asdata => \P|PC_temp|bit5|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit5|Q~q\);

-- Location: LCCOMB_X57_Y34_N6
\P|REGfile|R3|bit5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|R3|bit5|Q~feeder_combout\ = \P|RY|bit5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RY|bit5|Q~q\,
	combout => \P|REGfile|R3|bit5|Q~feeder_combout\);

-- Location: FF_X57_Y34_N7
\P|REGfile|R3|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|R3|bit5|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit5|Q~q\);

-- Location: LCCOMB_X59_Y31_N26
\P|REGfile|M1|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux10~0_combout\ = (\P|IR|bit14|Q~q\ & (((\P|IR|bit13|Q~q\)))) # (!\P|IR|bit14|Q~q\ & ((\P|IR|bit13|Q~q\ & ((\P|REGfile|R5|bit5|Q~q\))) # (!\P|IR|bit13|Q~q\ & (\P|REGfile|R4|bit5|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit14|Q~q\,
	datab => \P|REGfile|R4|bit5|Q~q\,
	datac => \P|REGfile|R5|bit5|Q~q\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux10~0_combout\);

-- Location: LCCOMB_X58_Y31_N30
\P|REGfile|M1|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux10~1_combout\ = (\P|IR|bit14|Q~q\ & ((\P|REGfile|M1|Mux10~0_combout\ & (\P|REGfile|R7|bit5|Q~q\)) # (!\P|REGfile|M1|Mux10~0_combout\ & ((\P|REGfile|R6|bit5|Q~q\))))) # (!\P|IR|bit14|Q~q\ & (((\P|REGfile|M1|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R7|bit5|Q~q\,
	datab => \P|IR|bit14|Q~q\,
	datac => \P|REGfile|R6|bit5|Q~q\,
	datad => \P|REGfile|M1|Mux10~0_combout\,
	combout => \P|REGfile|M1|Mux10~1_combout\);

-- Location: LCCOMB_X58_Y34_N30
\P|REGfile|M1|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux10~2_combout\ = (\P|RA|bit6|Q~0_combout\ & ((\P|RA|bit6|Q~1_combout\) # ((\P|REGfile|M1|Mux10~1_combout\)))) # (!\P|RA|bit6|Q~0_combout\ & (!\P|RA|bit6|Q~1_combout\ & ((\P|REGfile|R1|bit5|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|REGfile|M1|Mux10~1_combout\,
	datad => \P|REGfile|R1|bit5|Q~q\,
	combout => \P|REGfile|M1|Mux10~2_combout\);

-- Location: LCCOMB_X57_Y34_N22
\P|REGfile|M1|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux10~3_combout\ = (\P|REGfile|M1|Mux10~2_combout\ & ((\P|REGfile|R3|bit5|Q~q\) # ((!\P|RA|bit6|Q~1_combout\)))) # (!\P|REGfile|M1|Mux10~2_combout\ & (((\P|REGfile|R2|bit5|Q~q\ & \P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R3|bit5|Q~q\,
	datab => \P|REGfile|R2|bit5|Q~q\,
	datac => \P|REGfile|M1|Mux10~2_combout\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux10~3_combout\);

-- Location: LCCOMB_X49_Y31_N10
\P|REGfile|M1|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux10~4_combout\ = (\P|REGfile|M1|Mux10~3_combout\ & ((\P|RA|bit6|Q~1_combout\) # ((\P|IR|bit13|Q~q\) # (\P|RA|bit6|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~1_combout\,
	datab => \P|IR|bit13|Q~q\,
	datac => \P|RA|bit6|Q~0_combout\,
	datad => \P|REGfile|M1|Mux10~3_combout\,
	combout => \P|REGfile|M1|Mux10~4_combout\);

-- Location: FF_X49_Y31_N11
\P|RA|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux10~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit5|Q~q\);

-- Location: LCCOMB_X47_Y29_N4
\P|ALU_comp|M1|result[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[5]~5_combout\ = \P|RA|bit5|Q~q\ $ (((\P|CU|Equal0~0_combout\ & (\P|CU|Equal1~0_combout\ & \P|CU|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~0_combout\,
	datab => \P|CU|Equal1~0_combout\,
	datac => \P|CU|Equal9~0_combout\,
	datad => \P|RA|bit5|Q~q\,
	combout => \P|ALU_comp|M1|result[5]~5_combout\);

-- Location: LCCOMB_X47_Y29_N10
\P|ALU_comp|M3|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux10~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|CU|ALU_op[1]~7_combout\ & ((\P|ALU_comp|A1|S5|S~combout\))) # (!\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|M2|result[5]~10_combout\)))) # (!\P|CU|ALU_op[0]~9_combout\ & 
-- (((\P|ALU_comp|M2|result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M2|result[5]~10_combout\,
	datad => \P|ALU_comp|A1|S5|S~combout\,
	combout => \P|ALU_comp|M3|Mux10~0_combout\);

-- Location: LCCOMB_X47_Y29_N2
\P|ALU_comp|M3|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux10~1_combout\ = (\P|ALU_comp|M3|Mux10~0_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # (\P|ALU_comp|M1|result[5]~5_combout\ $ (\P|CU|ALU_op[1]~7_combout\)))) # (!\P|ALU_comp|M3|Mux10~0_combout\ & (\P|ALU_comp|M1|result[5]~5_combout\ & 
-- (\P|CU|ALU_op[0]~9_combout\ $ (\P|CU|ALU_op[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|ALU_comp|M1|result[5]~5_combout\,
	datac => \P|CU|ALU_op[1]~7_combout\,
	datad => \P|ALU_comp|M3|Mux10~0_combout\,
	combout => \P|ALU_comp|M3|Mux10~1_combout\);

-- Location: FF_X47_Y29_N3
\P|RZ|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux10~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit5|Q~q\);

-- Location: LCCOMB_X51_Y33_N4
\P|muxMA|result[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[5]~6_combout\ = (\P|CU|Equal0~1_combout\ & ((\P|PC|bit5|Q~q\))) # (!\P|CU|Equal0~1_combout\ & (\P|RZ|bit5|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit5|Q~q\,
	datab => \P|PC|bit5|Q~q\,
	datad => \P|CU|Equal0~1_combout\,
	combout => \P|muxMA|result[5]~6_combout\);

-- Location: LCCOMB_X51_Y33_N24
\P|muxMA|result[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[7]~5_combout\ = (\P|CU|Equal0~1_combout\ & ((\P|PC|bit7|Q~q\))) # (!\P|CU|Equal0~1_combout\ & (\P|RZ|bit7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~1_combout\,
	datab => \P|RZ|bit7|Q~q\,
	datad => \P|PC|bit7|Q~q\,
	combout => \P|muxMA|result[7]~5_combout\);

-- Location: LCCOMB_X51_Y30_N26
\P|muxMA|result[8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[8]~4_combout\ = (\P|CU|Equal0~1_combout\ & ((\P|PC|bit8|Q~q\))) # (!\P|CU|Equal0~1_combout\ & (\P|RZ|bit8|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit8|Q~q\,
	datac => \P|PC|bit8|Q~q\,
	datad => \P|CU|Equal0~1_combout\,
	combout => \P|muxMA|result[8]~4_combout\);

-- Location: LCCOMB_X51_Y33_N30
\P|muxMA|result[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[9]~3_combout\ = (\P|CU|Equal0~1_combout\ & (\P|PC|bit9|Q~q\)) # (!\P|CU|Equal0~1_combout\ & ((\P|RZ|bit9|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~1_combout\,
	datab => \P|PC|bit9|Q~q\,
	datad => \P|RZ|bit9|Q~q\,
	combout => \P|muxMA|result[9]~3_combout\);

-- Location: LCCOMB_X51_Y33_N28
\P|muxMA|result[10]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[10]~2_combout\ = (\P|CU|Equal0~1_combout\ & ((\P|PC|bit10|Q~q\))) # (!\P|CU|Equal0~1_combout\ & (\P|RZ|bit10|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~1_combout\,
	datab => \P|RZ|bit10|Q~q\,
	datad => \P|PC|bit10|Q~q\,
	combout => \P|muxMA|result[10]~2_combout\);

-- Location: LCCOMB_X52_Y31_N26
\P|muxMA|result[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[11]~1_combout\ = (\P|CU|Equal0~1_combout\ & (\P|PC|bit11|Q~q\)) # (!\P|CU|Equal0~1_combout\ & ((\P|RZ|bit11|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit11|Q~q\,
	datac => \P|RZ|bit11|Q~q\,
	datad => \P|CU|Equal0~1_combout\,
	combout => \P|muxMA|result[11]~1_combout\);

-- Location: LCCOMB_X54_Y33_N22
\P|RM|bit7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RM|bit7|Q~feeder_combout\ = \P|RB|bit7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RB|bit7|Q~q\,
	combout => \P|RM|bit7|Q~feeder_combout\);

-- Location: FF_X54_Y33_N23
\P|RM|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RM|bit7|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit7|Q~q\);

-- Location: M9K_X53_Y34_N0
\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008880",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryIOInterface:MemIO|MainMemory:Memory|altsyncram:altsyncram_component|altsyncram_71e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemIO|comb~2_combout\,
	portare => VCC,
	clk0 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y33_N24
\MemIO|Data_out[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[7]~15_combout\ = (\MemIO|SliderSwitch|bit7|Q~q\ & ((\MemIO|Data_out[9]~6_combout\) # ((\MemIO|Data_out~4_combout\ & \MemIO|Memory|altsyncram_component|auto_generated|q_a\(7))))) # (!\MemIO|SliderSwitch|bit7|Q~q\ & 
-- (\MemIO|Data_out~4_combout\ & (\MemIO|Memory|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|SliderSwitch|bit7|Q~q\,
	datab => \MemIO|Data_out~4_combout\,
	datac => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(7),
	datad => \MemIO|Data_out[9]~6_combout\,
	combout => \MemIO|Data_out[7]~15_combout\);

-- Location: FF_X52_Y33_N25
\P|IR|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[7]~15_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit7|Q~q\);

-- Location: LCCOMB_X50_Y32_N22
\P|CU|C_select[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|C_select[0]~0_combout\ = (\P|CU|Equal0~2_combout\ & ((\P|IR|bit3|Q~q\ & ((!\P|IR|bit5|Q~q\))) # (!\P|IR|bit3|Q~q\ & ((\P|IR|bit5|Q~q\) # (!\P|IR|bit4|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit4|Q~q\,
	datab => \P|CU|Equal0~2_combout\,
	datac => \P|IR|bit3|Q~q\,
	datad => \P|IR|bit5|Q~q\,
	combout => \P|CU|C_select[0]~0_combout\);

-- Location: LCCOMB_X50_Y32_N16
\P|CU|C_select[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|C_select[0]~1_combout\ = (((\P|IR|bit6|Q~q\) # (\P|IR|bit1|Q~q\)) # (!\P|CU|MEM_write~2_combout\)) # (!\P|CU|C_select[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|C_select[0]~0_combout\,
	datab => \P|CU|MEM_write~2_combout\,
	datac => \P|IR|bit6|Q~q\,
	datad => \P|IR|bit1|Q~q\,
	combout => \P|CU|C_select[0]~1_combout\);

-- Location: LCCOMB_X55_Y32_N18
\P|muxC|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxC|Mux2~0_combout\ = (\P|CU|RF_write~0_combout\ & (((\P|CU|C_select[0]~1_combout\)))) # (!\P|CU|RF_write~0_combout\ & ((\P|CU|C_select[0]~1_combout\ & (\P|IR|bit10|Q~q\)) # (!\P|CU|C_select[0]~1_combout\ & ((\P|IR|bit7|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|RF_write~0_combout\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|IR|bit7|Q~q\,
	datad => \P|CU|C_select[0]~1_combout\,
	combout => \P|muxC|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y32_N6
\P|REGfile|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|comb~0_combout\ = (\P|muxC|Mux2~0_combout\ & ((\P|CU|RF_write~0_combout\) # ((\P|CU|RF_write~2_combout\ & \P|CU|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|RF_write~0_combout\,
	datab => \P|CU|RF_write~2_combout\,
	datac => \P|CU|Equal0~2_combout\,
	datad => \P|muxC|Mux2~0_combout\,
	combout => \P|REGfile|comb~0_combout\);

-- Location: LCCOMB_X55_Y32_N0
\P|REGfile|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|comb~1_combout\ = (!\P|muxC|Mux1~0_combout\ & (!\P|muxC|Mux0~0_combout\ & \P|REGfile|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|muxC|Mux1~0_combout\,
	datac => \P|muxC|Mux0~0_combout\,
	datad => \P|REGfile|comb~0_combout\,
	combout => \P|REGfile|comb~1_combout\);

-- Location: FF_X56_Y34_N15
\P|REGfile|R1|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit6|Q~q\);

-- Location: FF_X56_Y34_N19
\P|REGfile|R2|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit6|Q~q\);

-- Location: LCCOMB_X56_Y34_N18
\P|REGfile|M1|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux9~2_combout\ = (\P|RA|bit6|Q~1_combout\ & (((\P|REGfile|R2|bit6|Q~q\) # (\P|RA|bit6|Q~0_combout\)))) # (!\P|RA|bit6|Q~1_combout\ & (\P|REGfile|R1|bit6|Q~q\ & ((!\P|RA|bit6|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~1_combout\,
	datab => \P|REGfile|R1|bit6|Q~q\,
	datac => \P|REGfile|R2|bit6|Q~q\,
	datad => \P|RA|bit6|Q~0_combout\,
	combout => \P|REGfile|M1|Mux9~2_combout\);

-- Location: FF_X59_Y31_N1
\P|REGfile|R5|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit6|Q~q\);

-- Location: FF_X58_Y31_N5
\P|REGfile|R7|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit6|Q~q\);

-- Location: FF_X59_Y31_N13
\P|REGfile|R4|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit6|Q~q\);

-- Location: FF_X58_Y31_N25
\P|REGfile|R6|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit6|Q~q\);

-- Location: LCCOMB_X58_Y31_N24
\P|REGfile|M1|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux9~0_combout\ = (\P|IR|bit13|Q~q\ & (((\P|IR|bit14|Q~q\)))) # (!\P|IR|bit13|Q~q\ & ((\P|IR|bit14|Q~q\ & ((\P|REGfile|R6|bit6|Q~q\))) # (!\P|IR|bit14|Q~q\ & (\P|REGfile|R4|bit6|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|R4|bit6|Q~q\,
	datac => \P|REGfile|R6|bit6|Q~q\,
	datad => \P|IR|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux9~0_combout\);

-- Location: LCCOMB_X58_Y31_N4
\P|REGfile|M1|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux9~1_combout\ = (\P|IR|bit13|Q~q\ & ((\P|REGfile|M1|Mux9~0_combout\ & ((\P|REGfile|R7|bit6|Q~q\))) # (!\P|REGfile|M1|Mux9~0_combout\ & (\P|REGfile|R5|bit6|Q~q\)))) # (!\P|IR|bit13|Q~q\ & (((\P|REGfile|M1|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|R5|bit6|Q~q\,
	datac => \P|REGfile|R7|bit6|Q~q\,
	datad => \P|REGfile|M1|Mux9~0_combout\,
	combout => \P|REGfile|M1|Mux9~1_combout\);

-- Location: LCCOMB_X58_Y34_N0
\P|REGfile|M1|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux9~3_combout\ = (\P|REGfile|M1|Mux9~2_combout\ & ((\P|REGfile|R3|bit6|Q~q\) # ((!\P|RA|bit6|Q~0_combout\)))) # (!\P|REGfile|M1|Mux9~2_combout\ & (((\P|RA|bit6|Q~0_combout\ & \P|REGfile|M1|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux9~2_combout\,
	datab => \P|REGfile|R3|bit6|Q~q\,
	datac => \P|RA|bit6|Q~0_combout\,
	datad => \P|REGfile|M1|Mux9~1_combout\,
	combout => \P|REGfile|M1|Mux9~3_combout\);

-- Location: LCCOMB_X49_Y31_N4
\P|REGfile|M1|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux9~4_combout\ = (\P|REGfile|M1|Mux9~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|IR|bit13|Q~q\) # (\P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|M1|Mux9~3_combout\,
	datac => \P|IR|bit13|Q~q\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux9~4_combout\);

-- Location: FF_X49_Y31_N5
\P|RA|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux9~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit6|Q~q\);

-- Location: LCCOMB_X49_Y31_N18
\P|Adder_comp|S6|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S6|S~combout\ = \P|PC|bit6|Q~q\ $ (\P|Adder_comp|S5|C_out~0_combout\ $ (((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|INC_select~0_combout\,
	datab => \P|IMME|Mux9~0_combout\,
	datac => \P|PC|bit6|Q~q\,
	datad => \P|Adder_comp|S5|C_out~0_combout\,
	combout => \P|Adder_comp|S6|S~combout\);

-- Location: LCCOMB_X49_Y31_N22
\P|PC|bit6|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit6|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S6|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit6|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~q\,
	datab => \P|CU|PC_select[0]~3_combout\,
	datad => \P|Adder_comp|S6|S~combout\,
	combout => \P|PC|bit6|Q~0_combout\);

-- Location: FF_X49_Y31_N23
\P|PC|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit6|Q~0_combout\,
	asdata => \P|IMME|Mux9~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit6|Q~q\);

-- Location: FF_X49_Y32_N13
\P|PC_temp|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|PC|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit6|Q~q\);

-- Location: FF_X54_Y32_N29
\P|RY|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit6|Q~0_combout\,
	asdata => \P|PC_temp|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit6|Q~q\);

-- Location: LCCOMB_X57_Y34_N12
\P|REGfile|R3|bit6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|R3|bit6|Q~feeder_combout\ = \P|RY|bit6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RY|bit6|Q~q\,
	combout => \P|REGfile|R3|bit6|Q~feeder_combout\);

-- Location: FF_X57_Y34_N13
\P|REGfile|R3|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|R3|bit6|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit6|Q~q\);

-- Location: LCCOMB_X59_Y31_N12
\P|REGfile|M2|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux9~0_combout\ = (\P|IR|bit11|Q~q\ & ((\P|REGfile|R6|bit6|Q~q\) # ((\P|IR|bit10|Q~q\)))) # (!\P|IR|bit11|Q~q\ & (((\P|REGfile|R4|bit6|Q~q\ & !\P|IR|bit10|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|REGfile|R6|bit6|Q~q\,
	datac => \P|REGfile|R4|bit6|Q~q\,
	datad => \P|IR|bit10|Q~q\,
	combout => \P|REGfile|M2|Mux9~0_combout\);

-- Location: LCCOMB_X59_Y31_N0
\P|REGfile|M2|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux9~1_combout\ = (\P|REGfile|M2|Mux9~0_combout\ & ((\P|REGfile|R7|bit6|Q~q\) # ((!\P|IR|bit10|Q~q\)))) # (!\P|REGfile|M2|Mux9~0_combout\ & (((\P|REGfile|R5|bit6|Q~q\ & \P|IR|bit10|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux9~0_combout\,
	datab => \P|REGfile|R7|bit6|Q~q\,
	datac => \P|REGfile|R5|bit6|Q~q\,
	datad => \P|IR|bit10|Q~q\,
	combout => \P|REGfile|M2|Mux9~1_combout\);

-- Location: LCCOMB_X56_Y34_N14
\P|REGfile|M2|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux9~2_combout\ = (\P|RB|bit15|Q~0_combout\ & (((\P|RB|bit15|Q~1_combout\)))) # (!\P|RB|bit15|Q~0_combout\ & ((\P|RB|bit15|Q~1_combout\ & (\P|REGfile|R2|bit6|Q~q\)) # (!\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|R1|bit6|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|REGfile|R2|bit6|Q~q\,
	datac => \P|REGfile|R1|bit6|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux9~2_combout\);

-- Location: LCCOMB_X57_Y34_N26
\P|REGfile|M2|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux9~3_combout\ = (\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux9~2_combout\ & (\P|REGfile|R3|bit6|Q~q\)) # (!\P|REGfile|M2|Mux9~2_combout\ & ((\P|REGfile|M2|Mux9~1_combout\))))) # (!\P|RB|bit15|Q~0_combout\ & 
-- (((\P|REGfile|M2|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R3|bit6|Q~q\,
	datab => \P|REGfile|M2|Mux9~1_combout\,
	datac => \P|RB|bit15|Q~0_combout\,
	datad => \P|REGfile|M2|Mux9~2_combout\,
	combout => \P|REGfile|M2|Mux9~3_combout\);

-- Location: LCCOMB_X50_Y34_N14
\P|REGfile|M2|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux9~4_combout\ = (\P|REGfile|M2|Mux9~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux9~3_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|IR|bit10|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux9~4_combout\);

-- Location: FF_X50_Y34_N15
\P|RB|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux9~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit6|Q~q\);

-- Location: FF_X50_Y34_N5
\P|RM|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RB|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit6|Q~q\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X52_Y36_N8
\MemIO|SliderSwitch|bit6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|SliderSwitch|bit6|Q~feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \MemIO|SliderSwitch|bit6|Q~feeder_combout\);

-- Location: FF_X52_Y36_N9
\MemIO|SliderSwitch|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|SliderSwitch|bit6|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|SliderSwitch|bit6|Q~q\);

-- Location: LCCOMB_X52_Y32_N24
\MemIO|Data_out[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[6]~14_combout\ = (\MemIO|Data_out~4_combout\ & ((\MemIO|Memory|altsyncram_component|auto_generated|q_a\(6)) # ((\MemIO|Data_out[9]~6_combout\ & \MemIO|SliderSwitch|bit6|Q~q\)))) # (!\MemIO|Data_out~4_combout\ & 
-- (\MemIO|Data_out[9]~6_combout\ & ((\MemIO|SliderSwitch|bit6|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|Data_out~4_combout\,
	datab => \MemIO|Data_out[9]~6_combout\,
	datac => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(6),
	datad => \MemIO|SliderSwitch|bit6|Q~q\,
	combout => \MemIO|Data_out[6]~14_combout\);

-- Location: FF_X52_Y32_N25
\P|IR|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[6]~14_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit6|Q~q\);

-- Location: LCCOMB_X50_Y32_N8
\P|CU|PC_select~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|PC_select~1_combout\ = (\P|IR|bit3|Q~q\ & (\P|IR|bit6|Q~q\ & (\P|IR|bit4|Q~q\ & !\P|IR|bit5|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit3|Q~q\,
	datab => \P|IR|bit6|Q~q\,
	datac => \P|IR|bit4|Q~q\,
	datad => \P|IR|bit5|Q~q\,
	combout => \P|CU|PC_select~1_combout\);

-- Location: LCCOMB_X54_Y32_N10
\P|CU|PC_select[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|PC_select[0]~2_combout\ = (!\P|CU|PC_select~0_combout\ & (((!\P|CU|Equal1~0_combout\) # (!\P|CU|Equal0~0_combout\)) # (!\P|CU|PC_select~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|PC_select~1_combout\,
	datab => \P|CU|Equal0~0_combout\,
	datac => \P|CU|PC_select~0_combout\,
	datad => \P|CU|Equal1~0_combout\,
	combout => \P|CU|PC_select[0]~2_combout\);

-- Location: LCCOMB_X54_Y32_N6
\P|CU|PC_select[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|PC_select[0]~3_combout\ = ((\P|CU|PC_select[0]~2_combout\ & \P|CU|Equal0~1_combout\)) # (!\P|CU|INC_select~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|PC_select[0]~2_combout\,
	datac => \P|CU|Equal0~1_combout\,
	datad => \P|CU|INC_select~0_combout\,
	combout => \P|CU|PC_select[0]~3_combout\);

-- Location: LCCOMB_X49_Y31_N6
\P|Adder_comp|S3|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S3|S~combout\ = \P|PC|bit3|Q~q\ $ (\P|Adder_comp|S2|C_out~0_combout\ $ (((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|INC_select~0_combout\,
	datab => \P|PC|bit3|Q~q\,
	datac => \P|IMME|Mux12~0_combout\,
	datad => \P|Adder_comp|S2|C_out~0_combout\,
	combout => \P|Adder_comp|S3|S~combout\);

-- Location: LCCOMB_X49_Y31_N14
\P|PC|bit3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit3|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S3|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit3|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit3|Q~q\,
	datab => \P|CU|PC_select[0]~3_combout\,
	datad => \P|Adder_comp|S3|S~combout\,
	combout => \P|PC|bit3|Q~0_combout\);

-- Location: FF_X49_Y31_N15
\P|PC|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit3|Q~0_combout\,
	asdata => \P|IMME|Mux12~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit3|Q~q\);

-- Location: LCCOMB_X52_Y31_N0
\P|PC_temp|bit3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit3|Q~feeder_combout\ = \P|PC|bit3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|PC|bit3|Q~q\,
	combout => \P|PC_temp|bit3|Q~feeder_combout\);

-- Location: FF_X52_Y31_N1
\P|PC_temp|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit3|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit3|Q~q\);

-- Location: FF_X54_Y32_N19
\P|RY|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit3|Q~0_combout\,
	asdata => \P|PC_temp|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit3|Q~q\);

-- Location: FF_X56_Y34_N11
\P|REGfile|R2|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit3|Q~q\);

-- Location: LCCOMB_X59_Y31_N2
\P|REGfile|M1|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux12~0_combout\ = (\P|IR|bit14|Q~q\ & (((\P|IR|bit13|Q~q\)))) # (!\P|IR|bit14|Q~q\ & ((\P|IR|bit13|Q~q\ & ((\P|REGfile|R5|bit3|Q~q\))) # (!\P|IR|bit13|Q~q\ & (\P|REGfile|R4|bit3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit14|Q~q\,
	datab => \P|REGfile|R4|bit3|Q~q\,
	datac => \P|REGfile|R5|bit3|Q~q\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux12~0_combout\);

-- Location: LCCOMB_X58_Y31_N2
\P|REGfile|M1|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux12~1_combout\ = (\P|REGfile|M1|Mux12~0_combout\ & (((\P|REGfile|R7|bit3|Q~q\)) # (!\P|IR|bit14|Q~q\))) # (!\P|REGfile|M1|Mux12~0_combout\ & (\P|IR|bit14|Q~q\ & (\P|REGfile|R6|bit3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux12~0_combout\,
	datab => \P|IR|bit14|Q~q\,
	datac => \P|REGfile|R6|bit3|Q~q\,
	datad => \P|REGfile|R7|bit3|Q~q\,
	combout => \P|REGfile|M1|Mux12~1_combout\);

-- Location: LCCOMB_X56_Y34_N8
\P|REGfile|M1|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux12~2_combout\ = (\P|RA|bit6|Q~0_combout\ & (((\P|REGfile|M1|Mux12~1_combout\) # (\P|RA|bit6|Q~1_combout\)))) # (!\P|RA|bit6|Q~0_combout\ & (\P|REGfile|R1|bit3|Q~q\ & ((!\P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R1|bit3|Q~q\,
	datab => \P|RA|bit6|Q~0_combout\,
	datac => \P|REGfile|M1|Mux12~1_combout\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux12~2_combout\);

-- Location: LCCOMB_X57_Y32_N6
\P|REGfile|M1|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux12~3_combout\ = (\P|RA|bit6|Q~1_combout\ & ((\P|REGfile|M1|Mux12~2_combout\ & ((\P|REGfile|R3|bit3|Q~q\))) # (!\P|REGfile|M1|Mux12~2_combout\ & (\P|REGfile|R2|bit3|Q~q\)))) # (!\P|RA|bit6|Q~1_combout\ & 
-- (((\P|REGfile|M1|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~1_combout\,
	datab => \P|REGfile|R2|bit3|Q~q\,
	datac => \P|REGfile|R3|bit3|Q~q\,
	datad => \P|REGfile|M1|Mux12~2_combout\,
	combout => \P|REGfile|M1|Mux12~3_combout\);

-- Location: LCCOMB_X57_Y32_N24
\P|REGfile|M1|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux12~4_combout\ = (\P|REGfile|M1|Mux12~3_combout\ & ((\P|IR|bit13|Q~q\) # ((\P|RA|bit6|Q~1_combout\) # (\P|RA|bit6|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux12~3_combout\,
	datab => \P|IR|bit13|Q~q\,
	datac => \P|RA|bit6|Q~1_combout\,
	datad => \P|RA|bit6|Q~0_combout\,
	combout => \P|REGfile|M1|Mux12~4_combout\);

-- Location: FF_X57_Y32_N25
\P|RA|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux12~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit3|Q~q\);

-- Location: LCCOMB_X49_Y29_N6
\P|ALU_comp|M1|result[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[3]~3_combout\ = \P|RA|bit3|Q~q\ $ (((\P|CU|Equal9~0_combout\ & (\P|CU|Equal0~0_combout\ & \P|CU|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal9~0_combout\,
	datab => \P|RA|bit3|Q~q\,
	datac => \P|CU|Equal0~0_combout\,
	datad => \P|CU|Equal1~0_combout\,
	combout => \P|ALU_comp|M1|result[3]~3_combout\);

-- Location: LCCOMB_X52_Y29_N12
\P|ALU_comp|M3|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux12~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|CU|ALU_op[1]~7_combout\ & ((\P|ALU_comp|A1|S3|S~combout\))) # (!\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|M2|result[3]~12_combout\)))) # (!\P|CU|ALU_op[0]~9_combout\ & 
-- (\P|ALU_comp|M2|result[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M2|result[3]~12_combout\,
	datab => \P|CU|ALU_op[0]~9_combout\,
	datac => \P|ALU_comp|A1|S3|S~combout\,
	datad => \P|CU|ALU_op[1]~7_combout\,
	combout => \P|ALU_comp|M3|Mux12~0_combout\);

-- Location: LCCOMB_X52_Y29_N4
\P|ALU_comp|M3|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux12~1_combout\ = (\P|ALU_comp|M3|Mux12~0_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # (\P|CU|ALU_op[1]~7_combout\ $ (\P|ALU_comp|M1|result[3]~3_combout\)))) # (!\P|ALU_comp|M3|Mux12~0_combout\ & (\P|ALU_comp|M1|result[3]~3_combout\ & 
-- (\P|CU|ALU_op[0]~9_combout\ $ (\P|CU|ALU_op[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M1|result[3]~3_combout\,
	datad => \P|ALU_comp|M3|Mux12~0_combout\,
	combout => \P|ALU_comp|M3|Mux12~1_combout\);

-- Location: FF_X52_Y29_N5
\P|RZ|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux12~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit3|Q~q\);

-- Location: LCCOMB_X51_Y33_N22
\P|muxMA|result[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[3]~7_combout\ = (\P|CU|Equal0~1_combout\ & ((\P|PC|bit3|Q~q\))) # (!\P|CU|Equal0~1_combout\ & (\P|RZ|bit3|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit3|Q~q\,
	datab => \P|PC|bit3|Q~q\,
	datad => \P|CU|Equal0~1_combout\,
	combout => \P|muxMA|result[3]~7_combout\);

-- Location: LCCOMB_X50_Y33_N30
\P|RM|bit5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RM|bit5|Q~feeder_combout\ = \P|RB|bit5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RB|bit5|Q~q\,
	combout => \P|RM|bit5|Q~feeder_combout\);

-- Location: FF_X50_Y33_N31
\P|RM|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RM|bit5|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit5|Q~q\);

-- Location: M9K_X53_Y28_N0
\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013490",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryIOInterface:MemIO|MainMemory:Memory|altsyncram:altsyncram_component|altsyncram_71e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemIO|comb~2_combout\,
	portare => VCC,
	clk0 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y32_N2
\MemIO|Data_out[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[5]~13_combout\ = (\MemIO|SliderSwitch|bit5|Q~q\ & ((\MemIO|Data_out[9]~6_combout\) # ((\MemIO|Memory|altsyncram_component|auto_generated|q_a\(5) & \MemIO|Data_out~4_combout\)))) # (!\MemIO|SliderSwitch|bit5|Q~q\ & 
-- (((\MemIO|Memory|altsyncram_component|auto_generated|q_a\(5) & \MemIO|Data_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|SliderSwitch|bit5|Q~q\,
	datab => \MemIO|Data_out[9]~6_combout\,
	datac => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(5),
	datad => \MemIO|Data_out~4_combout\,
	combout => \MemIO|Data_out[5]~13_combout\);

-- Location: FF_X52_Y32_N3
\P|IR|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[5]~13_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit5|Q~q\);

-- Location: LCCOMB_X51_Y32_N10
\P|IMME|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux13~0_combout\ = (\P|CU|extend[1]~7_combout\ & (((\P|IR|bit9|Q~q\ & \P|CU|extend~5_combout\)))) # (!\P|CU|extend[1]~7_combout\ & (\P|IR|bit5|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit5|Q~q\,
	datab => \P|IR|bit9|Q~q\,
	datac => \P|CU|extend~5_combout\,
	datad => \P|CU|extend[1]~7_combout\,
	combout => \P|IMME|Mux13~0_combout\);

-- Location: LCCOMB_X50_Y30_N10
\P|Adder_comp|S2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S2|S~combout\ = \P|PC|bit2|Q~q\ $ (\P|Adder_comp|S1|C_out~0_combout\ $ (((\P|IMME|Mux13~0_combout\ & !\P|CU|INC_select~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit2|Q~q\,
	datab => \P|IMME|Mux13~0_combout\,
	datac => \P|Adder_comp|S1|C_out~0_combout\,
	datad => \P|CU|INC_select~0_combout\,
	combout => \P|Adder_comp|S2|S~combout\);

-- Location: LCCOMB_X50_Y30_N6
\P|PC|bit2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit2|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & (\P|Adder_comp|S2|S~combout\)) # (!\P|CU|PC_select[0]~3_combout\ & ((\P|RA|bit2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|Adder_comp|S2|S~combout\,
	datab => \P|RA|bit2|Q~q\,
	datad => \P|CU|PC_select[0]~3_combout\,
	combout => \P|PC|bit2|Q~0_combout\);

-- Location: FF_X50_Y30_N7
\P|PC|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit2|Q~0_combout\,
	asdata => \P|IMME|Mux13~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit2|Q~q\);

-- Location: LCCOMB_X51_Y34_N16
\P|muxMA|result[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[2]~9_combout\ = (\P|CU|Equal0~1_combout\ & ((\P|PC|bit2|Q~q\))) # (!\P|CU|Equal0~1_combout\ & (\P|RZ|bit2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit2|Q~q\,
	datac => \P|PC|bit2|Q~q\,
	datad => \P|CU|Equal0~1_combout\,
	combout => \P|muxMA|result[2]~9_combout\);

-- Location: LCCOMB_X50_Y34_N12
\P|RM|bit9|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RM|bit9|Q~feeder_combout\ = \P|RB|bit9|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RB|bit9|Q~q\,
	combout => \P|RM|bit9|Q~feeder_combout\);

-- Location: FF_X50_Y34_N13
\P|RM|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RM|bit9|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit9|Q~q\);

-- Location: M9K_X53_Y33_N0
\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FA40",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryIOInterface:MemIO|MainMemory:Memory|altsyncram:altsyncram_component|altsyncram_71e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemIO|comb~2_combout\,
	portare => VCC,
	clk0 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y33_N26
\MemIO|Data_out[9]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[9]~17_combout\ = (\MemIO|SliderSwitch|bit9|Q~q\ & ((\MemIO|Data_out[9]~6_combout\) # ((\MemIO|Memory|altsyncram_component|auto_generated|q_a\(9) & \MemIO|Data_out~4_combout\)))) # (!\MemIO|SliderSwitch|bit9|Q~q\ & 
-- (((\MemIO|Memory|altsyncram_component|auto_generated|q_a\(9) & \MemIO|Data_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|SliderSwitch|bit9|Q~q\,
	datab => \MemIO|Data_out[9]~6_combout\,
	datac => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(9),
	datad => \MemIO|Data_out~4_combout\,
	combout => \MemIO|Data_out[9]~17_combout\);

-- Location: FF_X52_Y33_N27
\P|IR|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[9]~17_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit9|Q~q\);

-- Location: LCCOMB_X55_Y32_N4
\P|muxC|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxC|Mux0~0_combout\ = (\P|CU|C_select[0]~1_combout\ & (((\P|IR|bit12|Q~q\) # (\P|CU|RF_write~0_combout\)))) # (!\P|CU|C_select[0]~1_combout\ & (\P|IR|bit9|Q~q\ & ((!\P|CU|RF_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit9|Q~q\,
	datab => \P|CU|C_select[0]~1_combout\,
	datac => \P|IR|bit12|Q~q\,
	datad => \P|CU|RF_write~0_combout\,
	combout => \P|muxC|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y32_N16
\P|REGfile|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|comb~3_combout\ = (!\P|muxC|Mux0~0_combout\ & (\P|REGfile|comb~2_combout\ & \P|muxC|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|muxC|Mux0~0_combout\,
	datac => \P|REGfile|comb~2_combout\,
	datad => \P|muxC|Mux1~0_combout\,
	combout => \P|REGfile|comb~3_combout\);

-- Location: FF_X58_Y34_N5
\P|REGfile|R2|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit14|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit14|Q~q\);

-- Location: FF_X58_Y34_N27
\P|REGfile|R1|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit14|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit14|Q~q\);

-- Location: LCCOMB_X58_Y34_N4
\P|REGfile|M1|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux1~2_combout\ = (\P|RA|bit6|Q~0_combout\ & (\P|RA|bit6|Q~1_combout\)) # (!\P|RA|bit6|Q~0_combout\ & ((\P|RA|bit6|Q~1_combout\ & (\P|REGfile|R2|bit14|Q~q\)) # (!\P|RA|bit6|Q~1_combout\ & ((\P|REGfile|R1|bit14|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|REGfile|R2|bit14|Q~q\,
	datad => \P|REGfile|R1|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux1~2_combout\);

-- Location: FF_X59_Y30_N5
\P|REGfile|R4|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit14|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit14|Q~q\);

-- Location: FF_X59_Y30_N13
\P|REGfile|R6|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit14|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit14|Q~q\);

-- Location: LCCOMB_X59_Y30_N12
\P|REGfile|M1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux1~0_combout\ = (\P|IR|bit13|Q~q\ & (((\P|IR|bit14|Q~q\)))) # (!\P|IR|bit13|Q~q\ & ((\P|IR|bit14|Q~q\ & ((\P|REGfile|R6|bit14|Q~q\))) # (!\P|IR|bit14|Q~q\ & (\P|REGfile|R4|bit14|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|R4|bit14|Q~q\,
	datac => \P|REGfile|R6|bit14|Q~q\,
	datad => \P|IR|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux1~0_combout\);

-- Location: FF_X58_Y30_N25
\P|REGfile|R5|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit14|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit14|Q~q\);

-- Location: LCCOMB_X58_Y30_N20
\P|REGfile|M1|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux1~1_combout\ = (\P|IR|bit13|Q~q\ & ((\P|REGfile|M1|Mux1~0_combout\ & (\P|REGfile|R7|bit14|Q~q\)) # (!\P|REGfile|M1|Mux1~0_combout\ & ((\P|REGfile|R5|bit14|Q~q\))))) # (!\P|IR|bit13|Q~q\ & (\P|REGfile|M1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|M1|Mux1~0_combout\,
	datac => \P|REGfile|R7|bit14|Q~q\,
	datad => \P|REGfile|R5|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux1~1_combout\);

-- Location: LCCOMB_X58_Y34_N10
\P|REGfile|M1|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux1~3_combout\ = (\P|REGfile|M1|Mux1~2_combout\ & ((\P|REGfile|R3|bit14|Q~q\) # ((!\P|RA|bit6|Q~0_combout\)))) # (!\P|REGfile|M1|Mux1~2_combout\ & (((\P|RA|bit6|Q~0_combout\ & \P|REGfile|M1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R3|bit14|Q~q\,
	datab => \P|REGfile|M1|Mux1~2_combout\,
	datac => \P|RA|bit6|Q~0_combout\,
	datad => \P|REGfile|M1|Mux1~1_combout\,
	combout => \P|REGfile|M1|Mux1~3_combout\);

-- Location: LCCOMB_X54_Y31_N22
\P|REGfile|M1|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux1~4_combout\ = (\P|REGfile|M1|Mux1~3_combout\ & ((\P|IR|bit13|Q~q\) # ((\P|RA|bit6|Q~1_combout\) # (\P|RA|bit6|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|RA|bit6|Q~0_combout\,
	datad => \P|REGfile|M1|Mux1~3_combout\,
	combout => \P|REGfile|M1|Mux1~4_combout\);

-- Location: FF_X54_Y31_N23
\P|RA|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux1~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit14|Q~q\);

-- Location: LCCOMB_X49_Y29_N10
\P|ALU_comp|XORout[14]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|XORout[14]~0_combout\ = \P|CU|A_inv~0_combout\ $ (\P|RA|bit14|Q~q\ $ (\P|ALU_comp|M2|result[14]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|A_inv~0_combout\,
	datab => \P|RA|bit14|Q~q\,
	datad => \P|ALU_comp|M2|result[14]~1_combout\,
	combout => \P|ALU_comp|XORout[14]~0_combout\);

-- Location: LCCOMB_X49_Y29_N2
\P|ALU_comp|M1|result[14]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[14]~14_combout\ = \P|RA|bit14|Q~q\ $ (((\P|CU|Equal9~0_combout\ & (\P|CU|Equal1~0_combout\ & \P|CU|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal9~0_combout\,
	datab => \P|CU|Equal1~0_combout\,
	datac => \P|CU|Equal0~0_combout\,
	datad => \P|RA|bit14|Q~q\,
	combout => \P|ALU_comp|M1|result[14]~14_combout\);

-- Location: LCCOMB_X49_Y29_N4
\P|ALU_comp|M3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux1~0_combout\ = (\P|CU|ALU_op[1]~7_combout\ & (((\P|CU|ALU_op[0]~9_combout\)))) # (!\P|CU|ALU_op[1]~7_combout\ & ((\P|ALU_comp|M1|result[14]~14_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # (\P|ALU_comp|M2|result[14]~1_combout\))) # 
-- (!\P|ALU_comp|M1|result[14]~14_combout\ & (\P|CU|ALU_op[0]~9_combout\ & \P|ALU_comp|M2|result[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[1]~7_combout\,
	datab => \P|ALU_comp|M1|result[14]~14_combout\,
	datac => \P|CU|ALU_op[0]~9_combout\,
	datad => \P|ALU_comp|M2|result[14]~1_combout\,
	combout => \P|ALU_comp|M3|Mux1~0_combout\);

-- Location: LCCOMB_X52_Y29_N20
\P|ALU_comp|M3|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux1~1_combout\ = (\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|XORout[14]~0_combout\ $ (((\P|ALU_comp|M3|Mux1~0_combout\ & \P|ALU_comp|A1|S13|C_out~0_combout\))))) # (!\P|CU|ALU_op[1]~7_combout\ & (((\P|ALU_comp|M3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|XORout[14]~0_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M3|Mux1~0_combout\,
	datad => \P|ALU_comp|A1|S13|C_out~0_combout\,
	combout => \P|ALU_comp|M3|Mux1~1_combout\);

-- Location: FF_X52_Y29_N21
\P|RZ|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux1~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit14|Q~q\);

-- Location: LCCOMB_X52_Y33_N6
\P|RY|bit14|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit14|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[14]~22_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit14|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit14|Q~q\,
	datab => \P|CU|MA_select~0_combout\,
	datad => \MemIO|Data_out[14]~22_combout\,
	combout => \P|RY|bit14|Q~0_combout\);

-- Location: LCCOMB_X52_Y33_N30
\P|PC_temp|bit14|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit14|Q~feeder_combout\ = \P|PC|bit14|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|PC|bit14|Q~q\,
	combout => \P|PC_temp|bit14|Q~feeder_combout\);

-- Location: FF_X52_Y33_N31
\P|PC_temp|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit14|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit14|Q~q\);

-- Location: FF_X52_Y33_N7
\P|RY|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit14|Q~0_combout\,
	asdata => \P|PC_temp|bit14|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit14|Q~q\);

-- Location: FF_X58_Y30_N21
\P|REGfile|R7|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit14|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit14|Q~q\);

-- Location: LCCOMB_X59_Y30_N4
\P|REGfile|M2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux1~0_combout\ = (\P|IR|bit10|Q~q\ & (\P|IR|bit11|Q~q\)) # (!\P|IR|bit10|Q~q\ & ((\P|IR|bit11|Q~q\ & ((\P|REGfile|R6|bit14|Q~q\))) # (!\P|IR|bit11|Q~q\ & (\P|REGfile|R4|bit14|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|IR|bit11|Q~q\,
	datac => \P|REGfile|R4|bit14|Q~q\,
	datad => \P|REGfile|R6|bit14|Q~q\,
	combout => \P|REGfile|M2|Mux1~0_combout\);

-- Location: LCCOMB_X58_Y30_N24
\P|REGfile|M2|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux1~1_combout\ = (\P|IR|bit10|Q~q\ & ((\P|REGfile|M2|Mux1~0_combout\ & (\P|REGfile|R7|bit14|Q~q\)) # (!\P|REGfile|M2|Mux1~0_combout\ & ((\P|REGfile|R5|bit14|Q~q\))))) # (!\P|IR|bit10|Q~q\ & (((\P|REGfile|M2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|REGfile|R7|bit14|Q~q\,
	datac => \P|REGfile|R5|bit14|Q~q\,
	datad => \P|REGfile|M2|Mux1~0_combout\,
	combout => \P|REGfile|M2|Mux1~1_combout\);

-- Location: LCCOMB_X58_Y34_N26
\P|REGfile|M2|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux1~2_combout\ = (\P|RB|bit15|Q~0_combout\ & (\P|RB|bit15|Q~1_combout\)) # (!\P|RB|bit15|Q~0_combout\ & ((\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|R2|bit14|Q~q\))) # (!\P|RB|bit15|Q~1_combout\ & (\P|REGfile|R1|bit14|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|RB|bit15|Q~1_combout\,
	datac => \P|REGfile|R1|bit14|Q~q\,
	datad => \P|REGfile|R2|bit14|Q~q\,
	combout => \P|REGfile|M2|Mux1~2_combout\);

-- Location: LCCOMB_X57_Y34_N16
\P|REGfile|M2|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux1~3_combout\ = (\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux1~2_combout\ & ((\P|REGfile|R3|bit14|Q~q\))) # (!\P|REGfile|M2|Mux1~2_combout\ & (\P|REGfile|M2|Mux1~1_combout\)))) # (!\P|RB|bit15|Q~0_combout\ & 
-- (((\P|REGfile|M2|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|REGfile|M2|Mux1~1_combout\,
	datac => \P|REGfile|R3|bit14|Q~q\,
	datad => \P|REGfile|M2|Mux1~2_combout\,
	combout => \P|REGfile|M2|Mux1~3_combout\);

-- Location: LCCOMB_X50_Y34_N30
\P|REGfile|M2|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux1~4_combout\ = (\P|REGfile|M2|Mux1~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux1~3_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|IR|bit10|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux1~4_combout\);

-- Location: FF_X50_Y34_N31
\P|RB|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux1~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit14|Q~q\);

-- Location: FF_X50_Y33_N9
\P|RM|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RB|bit14|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit14|Q~q\);

-- Location: FF_X49_Y32_N3
\P|RM|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RB|bit15|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit15|Q~q\);

-- Location: M9K_X53_Y29_N0
\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001D000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryIOInterface:MemIO|MainMemory:Memory|altsyncram:altsyncram_component|altsyncram_71e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemIO|comb~2_combout\,
	portare => VCC,
	clk0 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y30_N20
\MemIO|Data_out[15]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[15]~23_combout\ = (\MemIO|Data_out~4_combout\ & \MemIO|Memory|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemIO|Data_out~4_combout\,
	datad => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(15),
	combout => \MemIO|Data_out[15]~23_combout\);

-- Location: LCCOMB_X52_Y30_N6
\P|IR|bit15|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IR|bit15|Q~feeder_combout\ = \MemIO|Data_out[15]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemIO|Data_out[15]~23_combout\,
	combout => \P|IR|bit15|Q~feeder_combout\);

-- Location: FF_X52_Y30_N7
\P|IR|bit15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|IR|bit15|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit15|Q~q\);

-- Location: LCCOMB_X54_Y31_N4
\P|RA|bit6|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RA|bit6|Q~1_combout\ = (!\P|IR|bit15|Q~q\ & \P|IR|bit14|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|IR|bit15|Q~q\,
	datad => \P|IR|bit14|Q~q\,
	combout => \P|RA|bit6|Q~1_combout\);

-- Location: FF_X56_Y34_N13
\P|REGfile|R1|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit8|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit8|Q~q\);

-- Location: FF_X56_Y34_N1
\P|REGfile|R2|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit8|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit8|Q~q\);

-- Location: LCCOMB_X56_Y34_N0
\P|REGfile|M1|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux7~2_combout\ = (\P|RA|bit6|Q~1_combout\ & (((\P|REGfile|R2|bit8|Q~q\) # (\P|RA|bit6|Q~0_combout\)))) # (!\P|RA|bit6|Q~1_combout\ & (\P|REGfile|R1|bit8|Q~q\ & ((!\P|RA|bit6|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R1|bit8|Q~q\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|REGfile|R2|bit8|Q~q\,
	datad => \P|RA|bit6|Q~0_combout\,
	combout => \P|REGfile|M1|Mux7~2_combout\);

-- Location: FF_X58_Y30_N9
\P|REGfile|R5|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit8|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit8|Q~q\);

-- Location: FF_X58_Y30_N17
\P|REGfile|R7|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit8|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit8|Q~q\);

-- Location: FF_X59_Y30_N25
\P|REGfile|R4|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit8|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit8|Q~q\);

-- Location: FF_X59_Y30_N17
\P|REGfile|R6|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit8|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit8|Q~q\);

-- Location: LCCOMB_X59_Y30_N16
\P|REGfile|M1|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux7~0_combout\ = (\P|IR|bit13|Q~q\ & (((\P|IR|bit14|Q~q\)))) # (!\P|IR|bit13|Q~q\ & ((\P|IR|bit14|Q~q\ & ((\P|REGfile|R6|bit8|Q~q\))) # (!\P|IR|bit14|Q~q\ & (\P|REGfile|R4|bit8|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|R4|bit8|Q~q\,
	datac => \P|REGfile|R6|bit8|Q~q\,
	datad => \P|IR|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux7~0_combout\);

-- Location: LCCOMB_X58_Y30_N16
\P|REGfile|M1|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux7~1_combout\ = (\P|IR|bit13|Q~q\ & ((\P|REGfile|M1|Mux7~0_combout\ & ((\P|REGfile|R7|bit8|Q~q\))) # (!\P|REGfile|M1|Mux7~0_combout\ & (\P|REGfile|R5|bit8|Q~q\)))) # (!\P|IR|bit13|Q~q\ & (((\P|REGfile|M1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|R5|bit8|Q~q\,
	datac => \P|REGfile|R7|bit8|Q~q\,
	datad => \P|REGfile|M1|Mux7~0_combout\,
	combout => \P|REGfile|M1|Mux7~1_combout\);

-- Location: LCCOMB_X57_Y30_N22
\P|REGfile|M1|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux7~3_combout\ = (\P|REGfile|M1|Mux7~2_combout\ & (((\P|REGfile|R3|bit8|Q~q\)) # (!\P|RA|bit6|Q~0_combout\))) # (!\P|REGfile|M1|Mux7~2_combout\ & (\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|M1|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux7~2_combout\,
	datab => \P|RA|bit6|Q~0_combout\,
	datac => \P|REGfile|R3|bit8|Q~q\,
	datad => \P|REGfile|M1|Mux7~1_combout\,
	combout => \P|REGfile|M1|Mux7~3_combout\);

-- Location: LCCOMB_X50_Y30_N30
\P|REGfile|M1|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux7~4_combout\ = (\P|REGfile|M1|Mux7~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|RA|bit6|Q~1_combout\) # (\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|REGfile|M1|Mux7~3_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux7~4_combout\);

-- Location: FF_X50_Y30_N31
\P|RA|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux7~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit8|Q~q\);

-- Location: LCCOMB_X51_Y30_N30
\P|ALU_comp|XORout[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|XORout[8]~2_combout\ = \P|RA|bit8|Q~q\ $ (\P|CU|A_inv~0_combout\ $ (\P|ALU_comp|M2|result[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|RA|bit8|Q~q\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|M2|result[8]~7_combout\,
	combout => \P|ALU_comp|XORout[8]~2_combout\);

-- Location: LCCOMB_X51_Y30_N14
\P|ALU_comp|M1|result[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[8]~8_combout\ = \P|RA|bit8|Q~q\ $ (((\P|CU|Equal1~0_combout\ & (\P|CU|Equal0~0_combout\ & \P|CU|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal1~0_combout\,
	datab => \P|CU|Equal0~0_combout\,
	datac => \P|CU|Equal9~0_combout\,
	datad => \P|RA|bit8|Q~q\,
	combout => \P|ALU_comp|M1|result[8]~8_combout\);

-- Location: LCCOMB_X51_Y30_N8
\P|ALU_comp|M3|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux7~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|CU|ALU_op[1]~7_combout\) # ((\P|ALU_comp|M1|result[8]~8_combout\) # (\P|ALU_comp|M2|result[8]~7_combout\)))) # (!\P|CU|ALU_op[0]~9_combout\ & (!\P|CU|ALU_op[1]~7_combout\ & 
-- (\P|ALU_comp|M1|result[8]~8_combout\ & \P|ALU_comp|M2|result[8]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M1|result[8]~8_combout\,
	datad => \P|ALU_comp|M2|result[8]~7_combout\,
	combout => \P|ALU_comp|M3|Mux7~0_combout\);

-- Location: LCCOMB_X51_Y30_N12
\P|ALU_comp|M3|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux7~1_combout\ = (\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|XORout[8]~2_combout\ $ (((\P|ALU_comp|M3|Mux7~0_combout\ & \P|ALU_comp|A1|S7|C_out~0_combout\))))) # (!\P|CU|ALU_op[1]~7_combout\ & (((\P|ALU_comp|M3|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|XORout[8]~2_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M3|Mux7~0_combout\,
	datad => \P|ALU_comp|A1|S7|C_out~0_combout\,
	combout => \P|ALU_comp|M3|Mux7~1_combout\);

-- Location: FF_X51_Y30_N13
\P|RZ|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux7~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit8|Q~q\);

-- Location: LCCOMB_X52_Y33_N4
\P|RY|bit8|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit8|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[8]~16_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit8|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit8|Q~q\,
	datab => \P|CU|MA_select~0_combout\,
	datad => \MemIO|Data_out[8]~16_combout\,
	combout => \P|RY|bit8|Q~0_combout\);

-- Location: LCCOMB_X52_Y33_N14
\P|PC_temp|bit8|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit8|Q~feeder_combout\ = \P|PC|bit8|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|PC|bit8|Q~q\,
	combout => \P|PC_temp|bit8|Q~feeder_combout\);

-- Location: FF_X52_Y33_N15
\P|PC_temp|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit8|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit8|Q~q\);

-- Location: FF_X52_Y33_N5
\P|RY|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit8|Q~0_combout\,
	asdata => \P|PC_temp|bit8|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit8|Q~q\);

-- Location: LCCOMB_X57_Y34_N18
\P|REGfile|R3|bit8|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|R3|bit8|Q~feeder_combout\ = \P|RY|bit8|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RY|bit8|Q~q\,
	combout => \P|REGfile|R3|bit8|Q~feeder_combout\);

-- Location: FF_X57_Y34_N19
\P|REGfile|R3|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|R3|bit8|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit8|Q~q\);

-- Location: LCCOMB_X59_Y30_N24
\P|REGfile|M2|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux7~0_combout\ = (\P|IR|bit10|Q~q\ & (((\P|IR|bit11|Q~q\)))) # (!\P|IR|bit10|Q~q\ & ((\P|IR|bit11|Q~q\ & (\P|REGfile|R6|bit8|Q~q\)) # (!\P|IR|bit11|Q~q\ & ((\P|REGfile|R4|bit8|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|REGfile|R6|bit8|Q~q\,
	datac => \P|REGfile|R4|bit8|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux7~0_combout\);

-- Location: LCCOMB_X58_Y30_N8
\P|REGfile|M2|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux7~1_combout\ = (\P|IR|bit10|Q~q\ & ((\P|REGfile|M2|Mux7~0_combout\ & (\P|REGfile|R7|bit8|Q~q\)) # (!\P|REGfile|M2|Mux7~0_combout\ & ((\P|REGfile|R5|bit8|Q~q\))))) # (!\P|IR|bit10|Q~q\ & (((\P|REGfile|M2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|REGfile|R7|bit8|Q~q\,
	datac => \P|REGfile|R5|bit8|Q~q\,
	datad => \P|REGfile|M2|Mux7~0_combout\,
	combout => \P|REGfile|M2|Mux7~1_combout\);

-- Location: LCCOMB_X56_Y34_N12
\P|REGfile|M2|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux7~2_combout\ = (\P|RB|bit15|Q~1_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|REGfile|R2|bit8|Q~q\)))) # (!\P|RB|bit15|Q~1_combout\ & (!\P|RB|bit15|Q~0_combout\ & (\P|REGfile|R1|bit8|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|REGfile|R1|bit8|Q~q\,
	datad => \P|REGfile|R2|bit8|Q~q\,
	combout => \P|REGfile|M2|Mux7~2_combout\);

-- Location: LCCOMB_X57_Y34_N8
\P|REGfile|M2|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux7~3_combout\ = (\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux7~2_combout\ & (\P|REGfile|R3|bit8|Q~q\)) # (!\P|REGfile|M2|Mux7~2_combout\ & ((\P|REGfile|M2|Mux7~1_combout\))))) # (!\P|RB|bit15|Q~0_combout\ & 
-- (((\P|REGfile|M2|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R3|bit8|Q~q\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|REGfile|M2|Mux7~1_combout\,
	datad => \P|REGfile|M2|Mux7~2_combout\,
	combout => \P|REGfile|M2|Mux7~3_combout\);

-- Location: LCCOMB_X50_Y34_N16
\P|REGfile|M2|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux7~4_combout\ = (\P|REGfile|M2|Mux7~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux7~3_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|IR|bit10|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux7~4_combout\);

-- Location: FF_X50_Y34_N17
\P|RB|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux7~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit8|Q~q\);

-- Location: LCCOMB_X50_Y34_N6
\P|RM|bit8|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RM|bit8|Q~feeder_combout\ = \P|RB|bit8|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RB|bit8|Q~q\,
	combout => \P|RM|bit8|Q~feeder_combout\);

-- Location: FF_X50_Y34_N7
\P|RM|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RM|bit8|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit8|Q~q\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X56_Y36_N19
\MemIO|SliderSwitch|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|SliderSwitch|bit8|Q~q\);

-- Location: LCCOMB_X52_Y33_N12
\MemIO|Data_out[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[8]~16_combout\ = (\MemIO|Memory|altsyncram_component|auto_generated|q_a\(8) & ((\MemIO|Data_out~4_combout\) # ((\MemIO|Data_out[9]~6_combout\ & \MemIO|SliderSwitch|bit8|Q~q\)))) # (!\MemIO|Memory|altsyncram_component|auto_generated|q_a\(8) 
-- & (\MemIO|Data_out[9]~6_combout\ & (\MemIO|SliderSwitch|bit8|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(8),
	datab => \MemIO|Data_out[9]~6_combout\,
	datac => \MemIO|SliderSwitch|bit8|Q~q\,
	datad => \MemIO|Data_out~4_combout\,
	combout => \MemIO|Data_out[8]~16_combout\);

-- Location: FF_X52_Y33_N13
\P|IR|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[8]~16_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit8|Q~q\);

-- Location: LCCOMB_X51_Y32_N20
\P|IMME|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IMME|Mux14~0_combout\ = (\P|CU|extend[1]~7_combout\ & (\P|IR|bit8|Q~q\ & ((\P|CU|extend~5_combout\)))) # (!\P|CU|extend[1]~7_combout\ & (((\P|IR|bit4|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit8|Q~q\,
	datab => \P|IR|bit4|Q~q\,
	datac => \P|CU|extend~5_combout\,
	datad => \P|CU|extend[1]~7_combout\,
	combout => \P|IMME|Mux14~0_combout\);

-- Location: LCCOMB_X49_Y31_N12
\P|Adder_comp|S1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S1|S~combout\ = \P|Adder_comp|S0|C_out~0_combout\ $ (\P|PC|bit1|Q~q\ $ (((\P|IMME|Mux14~0_combout\ & !\P|CU|INC_select~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IMME|Mux14~0_combout\,
	datab => \P|Adder_comp|S0|C_out~0_combout\,
	datac => \P|PC|bit1|Q~q\,
	datad => \P|CU|INC_select~0_combout\,
	combout => \P|Adder_comp|S1|S~combout\);

-- Location: LCCOMB_X49_Y31_N8
\P|PC|bit1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit1|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & (\P|Adder_comp|S1|S~combout\)) # (!\P|CU|PC_select[0]~3_combout\ & ((\P|RA|bit1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|Adder_comp|S1|S~combout\,
	datab => \P|CU|PC_select[0]~3_combout\,
	datad => \P|RA|bit1|Q~q\,
	combout => \P|PC|bit1|Q~0_combout\);

-- Location: FF_X49_Y31_N9
\P|PC|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit1|Q~0_combout\,
	asdata => \P|IMME|Mux14~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit1|Q~q\);

-- Location: LCCOMB_X51_Y34_N26
\P|muxMA|result[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[1]~10_combout\ = (\P|CU|Equal0~1_combout\ & ((\P|PC|bit1|Q~q\))) # (!\P|CU|Equal0~1_combout\ & (\P|RZ|bit1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|RZ|bit1|Q~q\,
	datac => \P|PC|bit1|Q~q\,
	datad => \P|CU|Equal0~1_combout\,
	combout => \P|muxMA|result[1]~10_combout\);

-- Location: LCCOMB_X52_Y31_N16
\P|RM|bit11|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RM|bit11|Q~feeder_combout\ = \P|RB|bit11|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RB|bit11|Q~q\,
	combout => \P|RM|bit11|Q~feeder_combout\);

-- Location: FF_X52_Y31_N17
\P|RM|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RM|bit11|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit11|Q~q\);

-- Location: M9K_X53_Y30_N0
\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000383A4",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryIOInterface:MemIO|MainMemory:Memory|altsyncram:altsyncram_component|altsyncram_71e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemIO|comb~2_combout\,
	portare => VCC,
	clk0 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y30_N18
\MemIO|Data_out[11]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[11]~19_combout\ = (\MemIO|Data_out~4_combout\ & \MemIO|Memory|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemIO|Data_out~4_combout\,
	datad => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(11),
	combout => \MemIO|Data_out[11]~19_combout\);

-- Location: LCCOMB_X52_Y30_N30
\P|IR|bit11|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IR|bit11|Q~feeder_combout\ = \MemIO|Data_out[11]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemIO|Data_out[11]~19_combout\,
	combout => \P|IR|bit11|Q~feeder_combout\);

-- Location: FF_X52_Y30_N31
\P|IR|bit11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|IR|bit11|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit11|Q~q\);

-- Location: LCCOMB_X55_Y32_N10
\P|muxC|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxC|Mux1~0_combout\ = (\P|CU|C_select[0]~1_combout\ & ((\P|IR|bit11|Q~q\) # ((\P|CU|RF_write~0_combout\)))) # (!\P|CU|C_select[0]~1_combout\ & (((\P|IR|bit8|Q~q\ & !\P|CU|RF_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|CU|C_select[0]~1_combout\,
	datac => \P|IR|bit8|Q~q\,
	datad => \P|CU|RF_write~0_combout\,
	combout => \P|muxC|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y32_N26
\P|REGfile|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|comb~4_combout\ = (\P|muxC|Mux1~0_combout\ & (!\P|muxC|Mux0~0_combout\ & \P|REGfile|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|muxC|Mux1~0_combout\,
	datac => \P|muxC|Mux0~0_combout\,
	datad => \P|REGfile|comb~0_combout\,
	combout => \P|REGfile|comb~4_combout\);

-- Location: FF_X57_Y34_N11
\P|REGfile|R3|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit12|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit12|Q~q\);

-- Location: FF_X56_Y34_N31
\P|REGfile|R1|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit12|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit12|Q~q\);

-- Location: FF_X56_Y34_N7
\P|REGfile|R2|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit12|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit12|Q~q\);

-- Location: LCCOMB_X56_Y34_N6
\P|REGfile|M1|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux3~2_combout\ = (\P|RA|bit6|Q~1_combout\ & (((\P|REGfile|R2|bit12|Q~q\) # (\P|RA|bit6|Q~0_combout\)))) # (!\P|RA|bit6|Q~1_combout\ & (\P|REGfile|R1|bit12|Q~q\ & ((!\P|RA|bit6|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~1_combout\,
	datab => \P|REGfile|R1|bit12|Q~q\,
	datac => \P|REGfile|R2|bit12|Q~q\,
	datad => \P|RA|bit6|Q~0_combout\,
	combout => \P|REGfile|M1|Mux3~2_combout\);

-- Location: FF_X58_Y30_N1
\P|REGfile|R5|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit12|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit12|Q~q\);

-- Location: FF_X58_Y30_N13
\P|REGfile|R7|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit12|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit12|Q~q\);

-- Location: FF_X59_Y30_N9
\P|REGfile|R4|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit12|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit12|Q~q\);

-- Location: LCCOMB_X59_Y30_N28
\P|REGfile|M1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux3~0_combout\ = (\P|IR|bit13|Q~q\ & (((\P|IR|bit14|Q~q\)))) # (!\P|IR|bit13|Q~q\ & ((\P|IR|bit14|Q~q\ & ((\P|REGfile|R6|bit12|Q~q\))) # (!\P|IR|bit14|Q~q\ & (\P|REGfile|R4|bit12|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|R4|bit12|Q~q\,
	datac => \P|REGfile|R6|bit12|Q~q\,
	datad => \P|IR|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux3~0_combout\);

-- Location: LCCOMB_X58_Y30_N12
\P|REGfile|M1|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux3~1_combout\ = (\P|IR|bit13|Q~q\ & ((\P|REGfile|M1|Mux3~0_combout\ & ((\P|REGfile|R7|bit12|Q~q\))) # (!\P|REGfile|M1|Mux3~0_combout\ & (\P|REGfile|R5|bit12|Q~q\)))) # (!\P|IR|bit13|Q~q\ & (((\P|REGfile|M1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|R5|bit12|Q~q\,
	datac => \P|REGfile|R7|bit12|Q~q\,
	datad => \P|REGfile|M1|Mux3~0_combout\,
	combout => \P|REGfile|M1|Mux3~1_combout\);

-- Location: LCCOMB_X57_Y32_N22
\P|REGfile|M1|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux3~3_combout\ = (\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|M1|Mux3~2_combout\ & (\P|REGfile|R3|bit12|Q~q\)) # (!\P|REGfile|M1|Mux3~2_combout\ & ((\P|REGfile|M1|Mux3~1_combout\))))) # (!\P|RA|bit6|Q~0_combout\ & 
-- (((\P|REGfile|M1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|R3|bit12|Q~q\,
	datac => \P|REGfile|M1|Mux3~2_combout\,
	datad => \P|REGfile|M1|Mux3~1_combout\,
	combout => \P|REGfile|M1|Mux3~3_combout\);

-- Location: LCCOMB_X57_Y32_N26
\P|REGfile|M1|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux3~4_combout\ = (\P|REGfile|M1|Mux3~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|IR|bit13|Q~q\) # (\P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|IR|bit13|Q~q\,
	datac => \P|REGfile|M1|Mux3~3_combout\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux3~4_combout\);

-- Location: FF_X57_Y32_N27
\P|RA|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux3~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit12|Q~q\);

-- Location: LCCOMB_X51_Y30_N18
\P|ALU_comp|M1|result[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[12]~12_combout\ = \P|RA|bit12|Q~q\ $ (((\P|CU|Equal1~0_combout\ & (\P|CU|Equal9~0_combout\ & \P|CU|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal1~0_combout\,
	datab => \P|RA|bit12|Q~q\,
	datac => \P|CU|Equal9~0_combout\,
	datad => \P|CU|Equal0~0_combout\,
	combout => \P|ALU_comp|M1|result[12]~12_combout\);

-- Location: LCCOMB_X51_Y30_N28
\P|ALU_comp|M3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux3~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|ALU_comp|M1|result[12]~12_combout\) # ((\P|CU|ALU_op[1]~7_combout\) # (\P|ALU_comp|M2|result[12]~3_combout\)))) # (!\P|CU|ALU_op[0]~9_combout\ & (\P|ALU_comp|M1|result[12]~12_combout\ & 
-- (!\P|CU|ALU_op[1]~7_combout\ & \P|ALU_comp|M2|result[12]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|ALU_comp|M1|result[12]~12_combout\,
	datac => \P|CU|ALU_op[1]~7_combout\,
	datad => \P|ALU_comp|M2|result[12]~3_combout\,
	combout => \P|ALU_comp|M3|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y29_N0
\P|ALU_comp|M3|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux3~1_combout\ = (\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|XORout[12]~3_combout\ $ (((\P|ALU_comp|M3|Mux3~0_combout\ & \P|ALU_comp|A1|S11|C_out~0_combout\))))) # (!\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|M3|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M3|Mux3~0_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|XORout[12]~3_combout\,
	datad => \P|ALU_comp|A1|S11|C_out~0_combout\,
	combout => \P|ALU_comp|M3|Mux3~1_combout\);

-- Location: FF_X52_Y29_N1
\P|RZ|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux3~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit12|Q~q\);

-- Location: LCCOMB_X52_Y30_N14
\P|RY|bit12|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit12|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[12]~20_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit12|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit12|Q~q\,
	datad => \MemIO|Data_out[12]~20_combout\,
	combout => \P|RY|bit12|Q~0_combout\);

-- Location: LCCOMB_X52_Y31_N30
\P|PC_temp|bit12|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit12|Q~feeder_combout\ = \P|PC|bit12|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|PC|bit12|Q~q\,
	combout => \P|PC_temp|bit12|Q~feeder_combout\);

-- Location: FF_X52_Y31_N31
\P|PC_temp|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit12|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit12|Q~q\);

-- Location: FF_X52_Y30_N15
\P|RY|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit12|Q~0_combout\,
	asdata => \P|PC_temp|bit12|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit12|Q~q\);

-- Location: FF_X59_Y30_N29
\P|REGfile|R6|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit12|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit12|Q~q\);

-- Location: LCCOMB_X59_Y30_N8
\P|REGfile|M2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux3~0_combout\ = (\P|IR|bit10|Q~q\ & (((\P|IR|bit11|Q~q\)))) # (!\P|IR|bit10|Q~q\ & ((\P|IR|bit11|Q~q\ & (\P|REGfile|R6|bit12|Q~q\)) # (!\P|IR|bit11|Q~q\ & ((\P|REGfile|R4|bit12|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|REGfile|R6|bit12|Q~q\,
	datac => \P|REGfile|R4|bit12|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux3~0_combout\);

-- Location: LCCOMB_X58_Y30_N0
\P|REGfile|M2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux3~1_combout\ = (\P|IR|bit10|Q~q\ & ((\P|REGfile|M2|Mux3~0_combout\ & ((\P|REGfile|R7|bit12|Q~q\))) # (!\P|REGfile|M2|Mux3~0_combout\ & (\P|REGfile|R5|bit12|Q~q\)))) # (!\P|IR|bit10|Q~q\ & (\P|REGfile|M2|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|REGfile|M2|Mux3~0_combout\,
	datac => \P|REGfile|R5|bit12|Q~q\,
	datad => \P|REGfile|R7|bit12|Q~q\,
	combout => \P|REGfile|M2|Mux3~1_combout\);

-- Location: LCCOMB_X56_Y34_N30
\P|REGfile|M2|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux3~2_combout\ = (\P|RB|bit15|Q~1_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|REGfile|R2|bit12|Q~q\)))) # (!\P|RB|bit15|Q~1_combout\ & (!\P|RB|bit15|Q~0_combout\ & (\P|REGfile|R1|bit12|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|REGfile|R1|bit12|Q~q\,
	datad => \P|REGfile|R2|bit12|Q~q\,
	combout => \P|REGfile|M2|Mux3~2_combout\);

-- Location: LCCOMB_X57_Y34_N10
\P|REGfile|M2|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux3~3_combout\ = (\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux3~2_combout\ & ((\P|REGfile|R3|bit12|Q~q\))) # (!\P|REGfile|M2|Mux3~2_combout\ & (\P|REGfile|M2|Mux3~1_combout\)))) # (!\P|RB|bit15|Q~0_combout\ & 
-- (((\P|REGfile|M2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux3~1_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|REGfile|R3|bit12|Q~q\,
	datad => \P|REGfile|M2|Mux3~2_combout\,
	combout => \P|REGfile|M2|Mux3~3_combout\);

-- Location: LCCOMB_X50_Y34_N8
\P|REGfile|M2|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux3~4_combout\ = (\P|REGfile|M2|Mux3~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|RB|bit15|Q~1_combout\) # (\P|IR|bit10|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux3~3_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|RB|bit15|Q~1_combout\,
	datad => \P|IR|bit10|Q~q\,
	combout => \P|REGfile|M2|Mux3~4_combout\);

-- Location: FF_X50_Y34_N9
\P|RB|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux3~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit12|Q~q\);

-- Location: LCCOMB_X52_Y31_N10
\P|RM|bit12|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RM|bit12|Q~feeder_combout\ = \P|RB|bit12|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RB|bit12|Q~q\,
	combout => \P|RM|bit12|Q~feeder_combout\);

-- Location: FF_X52_Y31_N11
\P|RM|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RM|bit12|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit12|Q~q\);

-- Location: LCCOMB_X52_Y31_N20
\P|RM|bit13|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RM|bit13|Q~feeder_combout\ = \P|RB|bit13|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RB|bit13|Q~q\,
	combout => \P|RM|bit13|Q~feeder_combout\);

-- Location: FF_X52_Y31_N21
\P|RM|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RM|bit13|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit13|Q~q\);

-- Location: M9K_X53_Y31_N0
\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031E80",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryIOInterface:MemIO|MainMemory:Memory|altsyncram:altsyncram_component|altsyncram_71e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemIO|comb~2_combout\,
	portare => VCC,
	clk0 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y33_N20
\MemIO|Data_out[13]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[13]~21_combout\ = (\MemIO|Data_out~4_combout\ & \MemIO|Memory|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemIO|Data_out~4_combout\,
	datad => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(13),
	combout => \MemIO|Data_out[13]~21_combout\);

-- Location: FF_X52_Y33_N21
\P|IR|bit13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[13]~21_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit13|Q~q\);

-- Location: FF_X58_Y30_N5
\P|REGfile|R5|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit10|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit10|Q~q\);

-- Location: FF_X58_Y30_N29
\P|REGfile|R7|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit10|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit10|Q~q\);

-- Location: FF_X59_Y30_N1
\P|REGfile|R4|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit10|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit10|Q~q\);

-- Location: LCCOMB_X59_Y30_N20
\P|REGfile|M1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux5~0_combout\ = (\P|IR|bit13|Q~q\ & (((\P|IR|bit14|Q~q\)))) # (!\P|IR|bit13|Q~q\ & ((\P|IR|bit14|Q~q\ & ((\P|REGfile|R6|bit10|Q~q\))) # (!\P|IR|bit14|Q~q\ & (\P|REGfile|R4|bit10|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|R4|bit10|Q~q\,
	datac => \P|REGfile|R6|bit10|Q~q\,
	datad => \P|IR|bit14|Q~q\,
	combout => \P|REGfile|M1|Mux5~0_combout\);

-- Location: LCCOMB_X58_Y30_N28
\P|REGfile|M1|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux5~1_combout\ = (\P|IR|bit13|Q~q\ & ((\P|REGfile|M1|Mux5~0_combout\ & ((\P|REGfile|R7|bit10|Q~q\))) # (!\P|REGfile|M1|Mux5~0_combout\ & (\P|REGfile|R5|bit10|Q~q\)))) # (!\P|IR|bit13|Q~q\ & (((\P|REGfile|M1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit13|Q~q\,
	datab => \P|REGfile|R5|bit10|Q~q\,
	datac => \P|REGfile|R7|bit10|Q~q\,
	datad => \P|REGfile|M1|Mux5~0_combout\,
	combout => \P|REGfile|M1|Mux5~1_combout\);

-- Location: LCCOMB_X57_Y34_N4
\P|REGfile|R3|bit10|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|R3|bit10|Q~feeder_combout\ = \P|RY|bit10|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RY|bit10|Q~q\,
	combout => \P|REGfile|R3|bit10|Q~feeder_combout\);

-- Location: FF_X57_Y34_N5
\P|REGfile|R3|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|R3|bit10|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit10|Q~q\);

-- Location: FF_X58_Y32_N19
\P|REGfile|R2|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit10|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit10|Q~q\);

-- Location: FF_X58_Y32_N25
\P|REGfile|R1|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit10|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit10|Q~q\);

-- Location: LCCOMB_X58_Y32_N18
\P|REGfile|M1|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux5~2_combout\ = (\P|RA|bit6|Q~1_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|REGfile|R2|bit10|Q~q\)))) # (!\P|RA|bit6|Q~1_combout\ & (!\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|R1|bit10|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~1_combout\,
	datab => \P|RA|bit6|Q~0_combout\,
	datac => \P|REGfile|R2|bit10|Q~q\,
	datad => \P|REGfile|R1|bit10|Q~q\,
	combout => \P|REGfile|M1|Mux5~2_combout\);

-- Location: LCCOMB_X58_Y32_N28
\P|REGfile|M1|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux5~3_combout\ = (\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|M1|Mux5~2_combout\ & ((\P|REGfile|R3|bit10|Q~q\))) # (!\P|REGfile|M1|Mux5~2_combout\ & (\P|REGfile|M1|Mux5~1_combout\)))) # (!\P|RA|bit6|Q~0_combout\ & 
-- (((\P|REGfile|M1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux5~1_combout\,
	datab => \P|REGfile|R3|bit10|Q~q\,
	datac => \P|RA|bit6|Q~0_combout\,
	datad => \P|REGfile|M1|Mux5~2_combout\,
	combout => \P|REGfile|M1|Mux5~3_combout\);

-- Location: LCCOMB_X57_Y32_N14
\P|REGfile|M1|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux5~4_combout\ = (\P|REGfile|M1|Mux5~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|RA|bit6|Q~1_combout\) # (\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|M1|Mux5~3_combout\,
	datac => \P|RA|bit6|Q~1_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux5~4_combout\);

-- Location: FF_X57_Y32_N15
\P|RA|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux5~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit10|Q~q\);

-- Location: LCCOMB_X49_Y29_N16
\P|ALU_comp|XORout[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|XORout[10]~1_combout\ = \P|CU|A_inv~0_combout\ $ (\P|RA|bit10|Q~q\ $ (\P|ALU_comp|M2|result[10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|A_inv~0_combout\,
	datac => \P|RA|bit10|Q~q\,
	datad => \P|ALU_comp|M2|result[10]~5_combout\,
	combout => \P|ALU_comp|XORout[10]~1_combout\);

-- Location: LCCOMB_X47_Y29_N18
\P|ALU_comp|M1|result[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[10]~10_combout\ = \P|RA|bit10|Q~q\ $ (((\P|CU|Equal9~0_combout\ & (\P|CU|Equal1~0_combout\ & \P|CU|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal9~0_combout\,
	datab => \P|CU|Equal1~0_combout\,
	datac => \P|RA|bit10|Q~q\,
	datad => \P|CU|Equal0~0_combout\,
	combout => \P|ALU_comp|M1|result[10]~10_combout\);

-- Location: LCCOMB_X47_Y29_N12
\P|ALU_comp|M3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux5~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|ALU_comp|M1|result[10]~10_combout\) # ((\P|CU|ALU_op[1]~7_combout\) # (\P|ALU_comp|M2|result[10]~5_combout\)))) # (!\P|CU|ALU_op[0]~9_combout\ & (\P|ALU_comp|M1|result[10]~10_combout\ & 
-- (!\P|CU|ALU_op[1]~7_combout\ & \P|ALU_comp|M2|result[10]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|ALU_comp|M1|result[10]~10_combout\,
	datac => \P|CU|ALU_op[1]~7_combout\,
	datad => \P|ALU_comp|M2|result[10]~5_combout\,
	combout => \P|ALU_comp|M3|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y29_N26
\P|ALU_comp|M3|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux5~1_combout\ = (\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|XORout[10]~1_combout\ $ (((\P|ALU_comp|A1|S9|C_out~0_combout\ & \P|ALU_comp|M3|Mux5~0_combout\))))) # (!\P|CU|ALU_op[1]~7_combout\ & (((\P|ALU_comp|M3|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[1]~7_combout\,
	datab => \P|ALU_comp|XORout[10]~1_combout\,
	datac => \P|ALU_comp|A1|S9|C_out~0_combout\,
	datad => \P|ALU_comp|M3|Mux5~0_combout\,
	combout => \P|ALU_comp|M3|Mux5~1_combout\);

-- Location: FF_X49_Y29_N27
\P|RZ|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux5~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit10|Q~q\);

-- Location: LCCOMB_X52_Y30_N28
\P|RY|bit10|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit10|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[10]~18_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit10|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit10|Q~q\,
	datad => \MemIO|Data_out[10]~18_combout\,
	combout => \P|RY|bit10|Q~0_combout\);

-- Location: LCCOMB_X52_Y30_N8
\P|PC_temp|bit10|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit10|Q~feeder_combout\ = \P|PC|bit10|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|PC|bit10|Q~q\,
	combout => \P|PC_temp|bit10|Q~feeder_combout\);

-- Location: FF_X52_Y30_N9
\P|PC_temp|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit10|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit10|Q~q\);

-- Location: FF_X52_Y30_N29
\P|RY|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit10|Q~0_combout\,
	asdata => \P|PC_temp|bit10|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit10|Q~q\);

-- Location: FF_X59_Y30_N21
\P|REGfile|R6|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit10|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit10|Q~q\);

-- Location: LCCOMB_X59_Y30_N0
\P|REGfile|M2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux5~0_combout\ = (\P|IR|bit10|Q~q\ & (((\P|IR|bit11|Q~q\)))) # (!\P|IR|bit10|Q~q\ & ((\P|IR|bit11|Q~q\ & (\P|REGfile|R6|bit10|Q~q\)) # (!\P|IR|bit11|Q~q\ & ((\P|REGfile|R4|bit10|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|REGfile|R6|bit10|Q~q\,
	datac => \P|REGfile|R4|bit10|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux5~0_combout\);

-- Location: LCCOMB_X58_Y30_N4
\P|REGfile|M2|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux5~1_combout\ = (\P|IR|bit10|Q~q\ & ((\P|REGfile|M2|Mux5~0_combout\ & ((\P|REGfile|R7|bit10|Q~q\))) # (!\P|REGfile|M2|Mux5~0_combout\ & (\P|REGfile|R5|bit10|Q~q\)))) # (!\P|IR|bit10|Q~q\ & (\P|REGfile|M2|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit10|Q~q\,
	datab => \P|REGfile|M2|Mux5~0_combout\,
	datac => \P|REGfile|R5|bit10|Q~q\,
	datad => \P|REGfile|R7|bit10|Q~q\,
	combout => \P|REGfile|M2|Mux5~1_combout\);

-- Location: LCCOMB_X58_Y32_N24
\P|REGfile|M2|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux5~2_combout\ = (\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|R2|bit10|Q~q\) # ((\P|RB|bit15|Q~0_combout\)))) # (!\P|RB|bit15|Q~1_combout\ & (((\P|REGfile|R1|bit10|Q~q\ & !\P|RB|bit15|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~1_combout\,
	datab => \P|REGfile|R2|bit10|Q~q\,
	datac => \P|REGfile|R1|bit10|Q~q\,
	datad => \P|RB|bit15|Q~0_combout\,
	combout => \P|REGfile|M2|Mux5~2_combout\);

-- Location: LCCOMB_X57_Y34_N30
\P|REGfile|M2|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux5~3_combout\ = (\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux5~2_combout\ & ((\P|REGfile|R3|bit10|Q~q\))) # (!\P|REGfile|M2|Mux5~2_combout\ & (\P|REGfile|M2|Mux5~1_combout\)))) # (!\P|RB|bit15|Q~0_combout\ & 
-- (((\P|REGfile|M2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux5~1_combout\,
	datab => \P|REGfile|R3|bit10|Q~q\,
	datac => \P|RB|bit15|Q~0_combout\,
	datad => \P|REGfile|M2|Mux5~2_combout\,
	combout => \P|REGfile|M2|Mux5~3_combout\);

-- Location: LCCOMB_X50_Y34_N10
\P|REGfile|M2|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux5~4_combout\ = (\P|REGfile|M2|Mux5~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|RB|bit15|Q~1_combout\) # (\P|IR|bit10|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux5~3_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|RB|bit15|Q~1_combout\,
	datad => \P|IR|bit10|Q~q\,
	combout => \P|REGfile|M2|Mux5~4_combout\);

-- Location: FF_X50_Y34_N11
\P|RB|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux5~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit10|Q~q\);

-- Location: LCCOMB_X52_Y30_N16
\P|RM|bit10|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RM|bit10|Q~feeder_combout\ = \P|RB|bit10|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RB|bit10|Q~q\,
	combout => \P|RM|bit10|Q~feeder_combout\);

-- Location: FF_X52_Y30_N17
\P|RM|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RM|bit10|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit10|Q~q\);

-- Location: LCCOMB_X52_Y30_N10
\MemIO|Data_out[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[10]~18_combout\ = (\MemIO|Data_out~4_combout\ & \MemIO|Memory|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemIO|Data_out~4_combout\,
	datad => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(10),
	combout => \MemIO|Data_out[10]~18_combout\);

-- Location: LCCOMB_X52_Y30_N12
\P|IR|bit10|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IR|bit10|Q~feeder_combout\ = \MemIO|Data_out[10]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemIO|Data_out[10]~18_combout\,
	combout => \P|IR|bit10|Q~feeder_combout\);

-- Location: FF_X52_Y30_N13
\P|IR|bit10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|IR|bit10|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit10|Q~q\);

-- Location: LCCOMB_X47_Y29_N26
\P|ALU_comp|XORout[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|XORout[4]~7_combout\ = \P|RA|bit4|Q~q\ $ (\P|CU|A_inv~0_combout\ $ (\P|ALU_comp|M2|result[4]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|RA|bit4|Q~q\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|ALU_comp|M2|result[4]~11_combout\,
	combout => \P|ALU_comp|XORout[4]~7_combout\);

-- Location: LCCOMB_X47_Y29_N30
\P|ALU_comp|M1|result[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[4]~4_combout\ = \P|RA|bit4|Q~q\ $ (((\P|CU|Equal0~0_combout\ & (\P|CU|Equal1~0_combout\ & \P|CU|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~0_combout\,
	datab => \P|CU|Equal1~0_combout\,
	datac => \P|CU|Equal9~0_combout\,
	datad => \P|RA|bit4|Q~q\,
	combout => \P|ALU_comp|M1|result[4]~4_combout\);

-- Location: LCCOMB_X47_Y29_N20
\P|ALU_comp|M3|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux11~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|CU|ALU_op[1]~7_combout\) # ((\P|ALU_comp|M1|result[4]~4_combout\) # (\P|ALU_comp|M2|result[4]~11_combout\)))) # (!\P|CU|ALU_op[0]~9_combout\ & (!\P|CU|ALU_op[1]~7_combout\ & 
-- (\P|ALU_comp|M1|result[4]~4_combout\ & \P|ALU_comp|M2|result[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M1|result[4]~4_combout\,
	datad => \P|ALU_comp|M2|result[4]~11_combout\,
	combout => \P|ALU_comp|M3|Mux11~0_combout\);

-- Location: LCCOMB_X47_Y29_N8
\P|ALU_comp|M3|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux11~1_combout\ = (\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|XORout[4]~7_combout\ $ (((\P|ALU_comp|A1|S3|C_out~0_combout\ & \P|ALU_comp|M3|Mux11~0_combout\))))) # (!\P|CU|ALU_op[1]~7_combout\ & (((\P|ALU_comp|M3|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|A1|S3|C_out~0_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|XORout[4]~7_combout\,
	datad => \P|ALU_comp|M3|Mux11~0_combout\,
	combout => \P|ALU_comp|M3|Mux11~1_combout\);

-- Location: FF_X47_Y29_N9
\P|RZ|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux11~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit4|Q~q\);

-- Location: LCCOMB_X52_Y32_N28
\P|RY|bit4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit4|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[4]~12_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit4|Q~q\,
	datad => \MemIO|Data_out[4]~12_combout\,
	combout => \P|RY|bit4|Q~0_combout\);

-- Location: LCCOMB_X51_Y34_N22
\P|PC_temp|bit4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit4|Q~feeder_combout\ = \P|PC|bit4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|PC|bit4|Q~q\,
	combout => \P|PC_temp|bit4|Q~feeder_combout\);

-- Location: FF_X51_Y34_N23
\P|PC_temp|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit4|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit4|Q~q\);

-- Location: FF_X52_Y32_N29
\P|RY|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit4|Q~0_combout\,
	asdata => \P|PC_temp|bit4|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit4|Q~q\);

-- Location: FF_X56_Y34_N21
\P|REGfile|R2|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit4|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit4|Q~q\);

-- Location: FF_X56_Y34_N17
\P|REGfile|R1|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit4|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit4|Q~q\);

-- Location: LCCOMB_X56_Y34_N16
\P|REGfile|M2|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux11~2_combout\ = (\P|RB|bit15|Q~0_combout\ & (((\P|RB|bit15|Q~1_combout\)))) # (!\P|RB|bit15|Q~0_combout\ & ((\P|RB|bit15|Q~1_combout\ & (\P|REGfile|R2|bit4|Q~q\)) # (!\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|R1|bit4|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|REGfile|R2|bit4|Q~q\,
	datac => \P|REGfile|R1|bit4|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux11~2_combout\);

-- Location: LCCOMB_X57_Y34_N24
\P|REGfile|R3|bit4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|R3|bit4|Q~feeder_combout\ = \P|RY|bit4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RY|bit4|Q~q\,
	combout => \P|REGfile|R3|bit4|Q~feeder_combout\);

-- Location: FF_X57_Y34_N25
\P|REGfile|R3|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|R3|bit4|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|REGfile|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R3|bit4|Q~q\);

-- Location: FF_X58_Y31_N13
\P|REGfile|R7|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit4|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R7|bit4|Q~q\);

-- Location: FF_X58_Y31_N17
\P|REGfile|R6|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit4|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R6|bit4|Q~q\);

-- Location: FF_X59_Y31_N5
\P|REGfile|R4|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit4|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R4|bit4|Q~q\);

-- Location: LCCOMB_X59_Y31_N4
\P|REGfile|M2|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux11~0_combout\ = (\P|IR|bit10|Q~q\ & (((\P|IR|bit11|Q~q\)))) # (!\P|IR|bit10|Q~q\ & ((\P|IR|bit11|Q~q\ & (\P|REGfile|R6|bit4|Q~q\)) # (!\P|IR|bit11|Q~q\ & ((\P|REGfile|R4|bit4|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R6|bit4|Q~q\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|R4|bit4|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux11~0_combout\);

-- Location: FF_X59_Y31_N29
\P|REGfile|R5|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit4|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R5|bit4|Q~q\);

-- Location: LCCOMB_X59_Y31_N28
\P|REGfile|M2|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux11~1_combout\ = (\P|REGfile|M2|Mux11~0_combout\ & ((\P|REGfile|R7|bit4|Q~q\) # ((!\P|IR|bit10|Q~q\)))) # (!\P|REGfile|M2|Mux11~0_combout\ & (((\P|REGfile|R5|bit4|Q~q\ & \P|IR|bit10|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R7|bit4|Q~q\,
	datab => \P|REGfile|M2|Mux11~0_combout\,
	datac => \P|REGfile|R5|bit4|Q~q\,
	datad => \P|IR|bit10|Q~q\,
	combout => \P|REGfile|M2|Mux11~1_combout\);

-- Location: LCCOMB_X57_Y34_N28
\P|REGfile|M2|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux11~3_combout\ = (\P|REGfile|M2|Mux11~2_combout\ & (((\P|REGfile|R3|bit4|Q~q\)) # (!\P|RB|bit15|Q~0_combout\))) # (!\P|REGfile|M2|Mux11~2_combout\ & (\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux11~2_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|REGfile|R3|bit4|Q~q\,
	datad => \P|REGfile|M2|Mux11~1_combout\,
	combout => \P|REGfile|M2|Mux11~3_combout\);

-- Location: LCCOMB_X50_Y33_N4
\P|REGfile|M2|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux11~4_combout\ = (\P|REGfile|M2|Mux11~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|M2|Mux11~3_combout\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux11~4_combout\);

-- Location: FF_X50_Y33_N5
\P|RB|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux11~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit4|Q~q\);

-- Location: FF_X50_Y33_N13
\P|RM|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RB|bit4|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit4|Q~q\);

-- Location: LCCOMB_X52_Y32_N12
\MemIO|Data_out[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[4]~12_combout\ = (\MemIO|Data_out~4_combout\ & ((\MemIO|Memory|altsyncram_component|auto_generated|q_a\(4)) # ((\MemIO|Data_out[9]~6_combout\ & \MemIO|SliderSwitch|bit4|Q~q\)))) # (!\MemIO|Data_out~4_combout\ & 
-- (\MemIO|Data_out[9]~6_combout\ & (\MemIO|SliderSwitch|bit4|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|Data_out~4_combout\,
	datab => \MemIO|Data_out[9]~6_combout\,
	datac => \MemIO|SliderSwitch|bit4|Q~q\,
	datad => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(4),
	combout => \MemIO|Data_out[4]~12_combout\);

-- Location: FF_X52_Y32_N13
\P|IR|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[4]~12_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit4|Q~q\);

-- Location: LCCOMB_X50_Y32_N12
\P|CU|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|Equal9~0_combout\ = (\P|IR|bit4|Q~q\ & (!\P|IR|bit6|Q~q\ & (!\P|IR|bit3|Q~q\ & \P|IR|bit5|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit4|Q~q\,
	datab => \P|IR|bit6|Q~q\,
	datac => \P|IR|bit3|Q~q\,
	datad => \P|IR|bit5|Q~q\,
	combout => \P|CU|Equal9~0_combout\);

-- Location: LCCOMB_X50_Y32_N2
\P|CU|A_inv~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|A_inv~0_combout\ = (\P|CU|Equal9~0_combout\ & (!\P|IR|bit1|Q~q\ & (\P|CU|Equal0~0_combout\ & \P|CU|MEM_write~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal9~0_combout\,
	datab => \P|IR|bit1|Q~q\,
	datac => \P|CU|Equal0~0_combout\,
	datad => \P|CU|MEM_write~2_combout\,
	combout => \P|CU|A_inv~0_combout\);

-- Location: LCCOMB_X47_Y29_N6
\P|ALU_comp|XORout[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|XORout[6]~4_combout\ = \P|CU|A_inv~0_combout\ $ (\P|RA|bit6|Q~q\ $ (\P|ALU_comp|M2|result[6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|RA|bit6|Q~q\,
	datad => \P|ALU_comp|M2|result[6]~9_combout\,
	combout => \P|ALU_comp|XORout[6]~4_combout\);

-- Location: LCCOMB_X47_Y29_N14
\P|ALU_comp|M1|result[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[6]~6_combout\ = \P|RA|bit6|Q~q\ $ (((\P|CU|Equal0~0_combout\ & (\P|CU|Equal9~0_combout\ & \P|CU|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~0_combout\,
	datab => \P|RA|bit6|Q~q\,
	datac => \P|CU|Equal9~0_combout\,
	datad => \P|CU|Equal1~0_combout\,
	combout => \P|ALU_comp|M1|result[6]~6_combout\);

-- Location: LCCOMB_X47_Y29_N28
\P|ALU_comp|M3|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux9~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|ALU_comp|M1|result[6]~6_combout\) # ((\P|CU|ALU_op[1]~7_combout\) # (\P|ALU_comp|M2|result[6]~9_combout\)))) # (!\P|CU|ALU_op[0]~9_combout\ & (\P|ALU_comp|M1|result[6]~6_combout\ & 
-- (!\P|CU|ALU_op[1]~7_combout\ & \P|ALU_comp|M2|result[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|ALU_comp|M1|result[6]~6_combout\,
	datac => \P|CU|ALU_op[1]~7_combout\,
	datad => \P|ALU_comp|M2|result[6]~9_combout\,
	combout => \P|ALU_comp|M3|Mux9~0_combout\);

-- Location: LCCOMB_X47_Y29_N16
\P|ALU_comp|M3|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux9~1_combout\ = (\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|XORout[6]~4_combout\ $ (((\P|ALU_comp|A1|S5|C_out~0_combout\ & \P|ALU_comp|M3|Mux9~0_combout\))))) # (!\P|CU|ALU_op[1]~7_combout\ & (((\P|ALU_comp|M3|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|XORout[6]~4_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|A1|S5|C_out~0_combout\,
	datad => \P|ALU_comp|M3|Mux9~0_combout\,
	combout => \P|ALU_comp|M3|Mux9~1_combout\);

-- Location: FF_X47_Y29_N17
\P|RZ|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux9~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit6|Q~q\);

-- Location: LCCOMB_X51_Y33_N14
\P|muxMA|result[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[6]~12_combout\ = (\P|CU|Equal0~1_combout\ & ((\P|PC|bit6|Q~q\))) # (!\P|CU|Equal0~1_combout\ & (\P|RZ|bit6|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit6|Q~q\,
	datab => \P|PC|bit6|Q~q\,
	datad => \P|CU|Equal0~1_combout\,
	combout => \P|muxMA|result[6]~12_combout\);

-- Location: LCCOMB_X52_Y29_N14
\MemIO|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Equal0~0_combout\ = (!\P|RZ|bit13|Q~q\ & !\P|RZ|bit14|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RZ|bit13|Q~q\,
	datad => \P|RZ|bit14|Q~q\,
	combout => \MemIO|Equal0~0_combout\);

-- Location: LCCOMB_X51_Y33_N12
\MemIO|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Equal0~1_combout\ = (\P|CU|Equal0~1_combout\ & (!\P|PC|bit14|Q~q\ & (!\P|PC|bit13|Q~q\))) # (!\P|CU|Equal0~1_combout\ & (((\MemIO|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit14|Q~q\,
	datab => \P|PC|bit13|Q~q\,
	datac => \MemIO|Equal0~0_combout\,
	datad => \P|CU|Equal0~1_combout\,
	combout => \MemIO|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y33_N6
\MemIO|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Equal0~2_combout\ = (\MemIO|Equal0~1_combout\ & ((\P|CU|Equal0~1_combout\ & (!\P|PC|bit15|Q~q\)) # (!\P|CU|Equal0~1_combout\ & ((!\P|RZ|bit15|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~1_combout\,
	datab => \P|PC|bit15|Q~q\,
	datac => \P|RZ|bit15|Q~q\,
	datad => \MemIO|Equal0~1_combout\,
	combout => \MemIO|Equal0~2_combout\);

-- Location: LCCOMB_X51_Y33_N26
\P|muxMA|result[12]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[12]~0_combout\ = (\P|CU|Equal0~1_combout\ & (\P|PC|bit12|Q~q\)) # (!\P|CU|Equal0~1_combout\ & ((\P|RZ|bit12|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|PC|bit12|Q~q\,
	datab => \P|RZ|bit12|Q~q\,
	datad => \P|CU|Equal0~1_combout\,
	combout => \P|muxMA|result[12]~0_combout\);

-- Location: LCCOMB_X51_Y33_N8
\MemIO|Data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out~0_combout\ = (\P|muxMA|result[12]~0_combout\ & (!\P|muxMA|result[10]~2_combout\ & (!\P|muxMA|result[9]~3_combout\ & !\P|muxMA|result[11]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|muxMA|result[12]~0_combout\,
	datab => \P|muxMA|result[10]~2_combout\,
	datac => \P|muxMA|result[9]~3_combout\,
	datad => \P|muxMA|result[11]~1_combout\,
	combout => \MemIO|Data_out~0_combout\);

-- Location: LCCOMB_X51_Y34_N12
\MemIO|Data_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out~2_combout\ = (!\P|muxMA|result[0]~8_combout\ & (!\P|muxMA|result[1]~10_combout\ & !\P|muxMA|result[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|muxMA|result[0]~8_combout\,
	datac => \P|muxMA|result[1]~10_combout\,
	datad => \P|muxMA|result[2]~9_combout\,
	combout => \MemIO|Data_out~2_combout\);

-- Location: LCCOMB_X51_Y33_N2
\MemIO|Data_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out~1_combout\ = (!\P|muxMA|result[3]~7_combout\ & (!\P|muxMA|result[7]~5_combout\ & (!\P|muxMA|result[5]~6_combout\ & !\P|muxMA|result[8]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|muxMA|result[3]~7_combout\,
	datab => \P|muxMA|result[7]~5_combout\,
	datac => \P|muxMA|result[5]~6_combout\,
	datad => \P|muxMA|result[8]~4_combout\,
	combout => \MemIO|Data_out~1_combout\);

-- Location: LCCOMB_X51_Y33_N16
\MemIO|Data_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out~3_combout\ = (\MemIO|Equal0~2_combout\ & (\MemIO|Data_out~0_combout\ & (\MemIO|Data_out~2_combout\ & \MemIO|Data_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|Equal0~2_combout\,
	datab => \MemIO|Data_out~0_combout\,
	datac => \MemIO|Data_out~2_combout\,
	datad => \MemIO|Data_out~1_combout\,
	combout => \MemIO|Data_out~3_combout\);

-- Location: LCCOMB_X52_Y33_N0
\MemIO|Data_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out~5_combout\ = (\P|muxMA|result[6]~12_combout\ & (\MemIO|Data_out~3_combout\ & ((\P|CU|MA_select~0_combout\) # (\P|CU|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|muxMA|result[6]~12_combout\,
	datac => \P|CU|Equal0~1_combout\,
	datad => \MemIO|Data_out~3_combout\,
	combout => \MemIO|Data_out~5_combout\);

-- Location: LCCOMB_X51_Y35_N8
\MemIO|Data_out[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[1]~8_combout\ = (\MemIO|Data_out~5_combout\ & ((\P|muxMA|result[4]~11_combout\ & (\MemIO|PushButton|bit1|Q~q\)) # (!\P|muxMA|result[4]~11_combout\ & ((\MemIO|SliderSwitch|bit1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|muxMA|result[4]~11_combout\,
	datab => \MemIO|PushButton|bit1|Q~q\,
	datac => \MemIO|SliderSwitch|bit1|Q~q\,
	datad => \MemIO|Data_out~5_combout\,
	combout => \MemIO|Data_out[1]~8_combout\);

-- Location: LCCOMB_X54_Y33_N12
\P|RM|bit1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RM|bit1|Q~feeder_combout\ = \P|RB|bit1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RB|bit1|Q~q\,
	combout => \P|RM|bit1|Q~feeder_combout\);

-- Location: FF_X54_Y33_N13
\P|RM|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RM|bit1|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit1|Q~q\);

-- Location: M9K_X53_Y35_N0
\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryIOInterface:MemIO|MainMemory:Memory|altsyncram:altsyncram_component|altsyncram_71e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemIO|comb~2_combout\,
	portare => VCC,
	clk0 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y32_N16
\MemIO|Data_out[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[1]~9_combout\ = (\MemIO|Data_out~4_combout\ & ((\MemIO|Memory|altsyncram_component|auto_generated|q_a\(1)))) # (!\MemIO|Data_out~4_combout\ & (\MemIO|Data_out[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|Data_out~4_combout\,
	datac => \MemIO|Data_out[1]~8_combout\,
	datad => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(1),
	combout => \MemIO|Data_out[1]~9_combout\);

-- Location: FF_X54_Y32_N17
\P|IR|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[1]~9_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit1|Q~q\);

-- Location: LCCOMB_X50_Y32_N20
\P|CU|ALU_op[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|ALU_op[0]~4_combout\ = (!\P|IR|bit5|Q~q\ & ((\P|IR|bit3|Q~q\ & (!\P|IR|bit6|Q~q\)) # (!\P|IR|bit3|Q~q\ & ((!\P|IR|bit4|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit3|Q~q\,
	datab => \P|IR|bit6|Q~q\,
	datac => \P|IR|bit4|Q~q\,
	datad => \P|IR|bit5|Q~q\,
	combout => \P|CU|ALU_op[0]~4_combout\);

-- Location: LCCOMB_X54_Y32_N12
\P|CU|ALU_op[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|ALU_op[0]~8_combout\ = (\P|IR|bit1|Q~q\ & (((!\P|IR|bit2|Q~q\)))) # (!\P|IR|bit1|Q~q\ & ((\P|CU|ALU_op[0]~4_combout\) # ((\P|IR|bit2|Q~q\) # (\P|IR|bit0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit1|Q~q\,
	datab => \P|CU|ALU_op[0]~4_combout\,
	datac => \P|IR|bit2|Q~q\,
	datad => \P|IR|bit0|Q~q\,
	combout => \P|CU|ALU_op[0]~8_combout\);

-- Location: LCCOMB_X50_Y30_N22
\P|CU|ALU_op[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|ALU_op[0]~9_combout\ = (\P|CU|ALU_op[0]~8_combout\ & (\P|CU|current_state\(1) & (!\P|CU|current_state\(2) & \P|CU|current_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~8_combout\,
	datab => \P|CU|current_state\(1),
	datac => \P|CU|current_state\(2),
	datad => \P|CU|current_state\(0),
	combout => \P|CU|ALU_op[0]~9_combout\);

-- Location: LCCOMB_X51_Y30_N10
\P|ALU_comp|M1|result[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[1]~1_combout\ = \P|RA|bit1|Q~q\ $ (((\P|CU|Equal1~0_combout\ & (\P|CU|Equal9~0_combout\ & \P|CU|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal1~0_combout\,
	datab => \P|CU|Equal9~0_combout\,
	datac => \P|RA|bit1|Q~q\,
	datad => \P|CU|Equal0~0_combout\,
	combout => \P|ALU_comp|M1|result[1]~1_combout\);

-- Location: LCCOMB_X52_Y29_N18
\P|ALU_comp|M3|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux14~0_combout\ = (\P|CU|ALU_op[0]~9_combout\ & ((\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|A1|S1|S~combout\)) # (!\P|CU|ALU_op[1]~7_combout\ & ((\P|ALU_comp|M2|result[1]~14_combout\))))) # (!\P|CU|ALU_op[0]~9_combout\ & 
-- (((\P|ALU_comp|M2|result[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|A1|S1|S~combout\,
	datab => \P|CU|ALU_op[0]~9_combout\,
	datac => \P|ALU_comp|M2|result[1]~14_combout\,
	datad => \P|CU|ALU_op[1]~7_combout\,
	combout => \P|ALU_comp|M3|Mux14~0_combout\);

-- Location: LCCOMB_X51_Y30_N20
\P|ALU_comp|M3|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux14~1_combout\ = (\P|ALU_comp|M3|Mux14~0_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # (\P|CU|ALU_op[1]~7_combout\ $ (\P|ALU_comp|M1|result[1]~1_combout\)))) # (!\P|ALU_comp|M3|Mux14~0_combout\ & (\P|ALU_comp|M1|result[1]~1_combout\ & 
-- (\P|CU|ALU_op[0]~9_combout\ $ (\P|CU|ALU_op[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[0]~9_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M1|result[1]~1_combout\,
	datad => \P|ALU_comp|M3|Mux14~0_combout\,
	combout => \P|ALU_comp|M3|Mux14~1_combout\);

-- Location: FF_X51_Y30_N21
\P|RZ|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux14~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit1|Q~q\);

-- Location: LCCOMB_X54_Y32_N4
\P|RY|bit1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit1|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[1]~9_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MA_select~0_combout\,
	datab => \P|RZ|bit1|Q~q\,
	datad => \MemIO|Data_out[1]~9_combout\,
	combout => \P|RY|bit1|Q~0_combout\);

-- Location: LCCOMB_X54_Y32_N22
\P|PC_temp|bit1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit1|Q~feeder_combout\ = \P|PC|bit1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|PC|bit1|Q~q\,
	combout => \P|PC_temp|bit1|Q~feeder_combout\);

-- Location: FF_X54_Y32_N23
\P|PC_temp|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit1|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit1|Q~q\);

-- Location: FF_X54_Y32_N5
\P|RY|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit1|Q~0_combout\,
	asdata => \P|PC_temp|bit1|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit1|Q~q\);

-- Location: FF_X58_Y34_N3
\P|REGfile|R1|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit1|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R1|bit1|Q~q\);

-- Location: LCCOMB_X59_Y31_N30
\P|REGfile|M1|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux14~0_combout\ = (\P|IR|bit14|Q~q\ & (((\P|IR|bit13|Q~q\)))) # (!\P|IR|bit14|Q~q\ & ((\P|IR|bit13|Q~q\ & ((\P|REGfile|R5|bit1|Q~q\))) # (!\P|IR|bit13|Q~q\ & (\P|REGfile|R4|bit1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit14|Q~q\,
	datab => \P|REGfile|R4|bit1|Q~q\,
	datac => \P|REGfile|R5|bit1|Q~q\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux14~0_combout\);

-- Location: LCCOMB_X58_Y31_N10
\P|REGfile|M1|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux14~1_combout\ = (\P|REGfile|M1|Mux14~0_combout\ & (((\P|REGfile|R7|bit1|Q~q\)) # (!\P|IR|bit14|Q~q\))) # (!\P|REGfile|M1|Mux14~0_combout\ & (\P|IR|bit14|Q~q\ & (\P|REGfile|R6|bit1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux14~0_combout\,
	datab => \P|IR|bit14|Q~q\,
	datac => \P|REGfile|R6|bit1|Q~q\,
	datad => \P|REGfile|R7|bit1|Q~q\,
	combout => \P|REGfile|M1|Mux14~1_combout\);

-- Location: LCCOMB_X58_Y34_N20
\P|REGfile|M1|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux14~2_combout\ = (\P|RA|bit6|Q~1_combout\ & (((\P|RA|bit6|Q~0_combout\)))) # (!\P|RA|bit6|Q~1_combout\ & ((\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|M1|Mux14~1_combout\))) # (!\P|RA|bit6|Q~0_combout\ & (\P|REGfile|R1|bit1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R1|bit1|Q~q\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|RA|bit6|Q~0_combout\,
	datad => \P|REGfile|M1|Mux14~1_combout\,
	combout => \P|REGfile|M1|Mux14~2_combout\);

-- Location: LCCOMB_X57_Y32_N16
\P|REGfile|M1|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux14~3_combout\ = (\P|REGfile|M1|Mux14~2_combout\ & (((\P|REGfile|R3|bit1|Q~q\) # (!\P|RA|bit6|Q~1_combout\)))) # (!\P|REGfile|M1|Mux14~2_combout\ & (\P|REGfile|R2|bit1|Q~q\ & ((\P|RA|bit6|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M1|Mux14~2_combout\,
	datab => \P|REGfile|R2|bit1|Q~q\,
	datac => \P|REGfile|R3|bit1|Q~q\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux14~3_combout\);

-- Location: LCCOMB_X57_Y32_N18
\P|REGfile|M1|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux14~4_combout\ = (\P|REGfile|M1|Mux14~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|RA|bit6|Q~1_combout\) # (\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|M1|Mux14~3_combout\,
	datac => \P|RA|bit6|Q~1_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux14~4_combout\);

-- Location: FF_X57_Y32_N19
\P|RA|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux14~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit1|Q~q\);

-- Location: LCCOMB_X50_Y29_N12
\P|ALU_comp|A1|S1|C_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|A1|S1|C_out~0_combout\ = (\P|ALU_comp|M2|result[1]~14_combout\ & ((\P|ALU_comp|A1|S0|C_out~0_combout\) # (\P|RA|bit1|Q~q\ $ (\P|CU|A_inv~0_combout\)))) # (!\P|ALU_comp|M2|result[1]~14_combout\ & (\P|ALU_comp|A1|S0|C_out~0_combout\ & 
-- (\P|RA|bit1|Q~q\ $ (\P|CU|A_inv~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit1|Q~q\,
	datab => \P|CU|A_inv~0_combout\,
	datac => \P|ALU_comp|M2|result[1]~14_combout\,
	datad => \P|ALU_comp|A1|S0|C_out~0_combout\,
	combout => \P|ALU_comp|A1|S1|C_out~0_combout\);

-- Location: LCCOMB_X51_Y30_N4
\P|ALU_comp|M1|result[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[2]~2_combout\ = \P|RA|bit2|Q~q\ $ (((\P|CU|Equal9~0_combout\ & (\P|CU|Equal1~0_combout\ & \P|CU|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit2|Q~q\,
	datab => \P|CU|Equal9~0_combout\,
	datac => \P|CU|Equal1~0_combout\,
	datad => \P|CU|Equal0~0_combout\,
	combout => \P|ALU_comp|M1|result[2]~2_combout\);

-- Location: LCCOMB_X51_Y30_N22
\P|ALU_comp|M3|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux13~0_combout\ = (\P|ALU_comp|M2|result[2]~13_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # ((\P|ALU_comp|M1|result[2]~2_combout\ & !\P|CU|ALU_op[1]~7_combout\)))) # (!\P|ALU_comp|M2|result[2]~13_combout\ & (\P|CU|ALU_op[0]~9_combout\ & 
-- ((\P|ALU_comp|M1|result[2]~2_combout\) # (\P|CU|ALU_op[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M2|result[2]~13_combout\,
	datab => \P|CU|ALU_op[0]~9_combout\,
	datac => \P|ALU_comp|M1|result[2]~2_combout\,
	datad => \P|CU|ALU_op[1]~7_combout\,
	combout => \P|ALU_comp|M3|Mux13~0_combout\);

-- Location: LCCOMB_X51_Y30_N16
\P|ALU_comp|XORout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|XORout[2]~6_combout\ = \P|ALU_comp|M2|result[2]~13_combout\ $ (\P|CU|A_inv~0_combout\ $ (\P|RA|bit2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|M2|result[2]~13_combout\,
	datac => \P|CU|A_inv~0_combout\,
	datad => \P|RA|bit2|Q~q\,
	combout => \P|ALU_comp|XORout[2]~6_combout\);

-- Location: LCCOMB_X51_Y30_N6
\P|ALU_comp|M3|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux13~1_combout\ = (\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|XORout[2]~6_combout\ $ (((\P|ALU_comp|A1|S1|C_out~0_combout\ & \P|ALU_comp|M3|Mux13~0_combout\))))) # (!\P|CU|ALU_op[1]~7_combout\ & (((\P|ALU_comp|M3|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|ALU_comp|A1|S1|C_out~0_combout\,
	datab => \P|CU|ALU_op[1]~7_combout\,
	datac => \P|ALU_comp|M3|Mux13~0_combout\,
	datad => \P|ALU_comp|XORout[2]~6_combout\,
	combout => \P|ALU_comp|M3|Mux13~1_combout\);

-- Location: FF_X51_Y30_N7
\P|RZ|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux13~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit2|Q~q\);

-- Location: LCCOMB_X51_Y34_N8
\P|RY|bit2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RY|bit2|Q~0_combout\ = (\P|CU|MA_select~0_combout\ & ((\MemIO|Data_out[2]~10_combout\))) # (!\P|CU|MA_select~0_combout\ & (\P|RZ|bit2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit2|Q~q\,
	datab => \P|CU|MA_select~0_combout\,
	datad => \MemIO|Data_out[2]~10_combout\,
	combout => \P|RY|bit2|Q~0_combout\);

-- Location: LCCOMB_X51_Y34_N4
\P|PC_temp|bit2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC_temp|bit2|Q~feeder_combout\ = \P|PC|bit2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|PC|bit2|Q~q\,
	combout => \P|PC_temp|bit2|Q~feeder_combout\);

-- Location: FF_X51_Y34_N5
\P|PC_temp|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC_temp|bit2|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC_temp|bit2|Q~q\);

-- Location: FF_X51_Y34_N9
\P|RY|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RY|bit2|Q~0_combout\,
	asdata => \P|PC_temp|bit2|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|Y_select~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RY|bit2|Q~q\);

-- Location: FF_X56_Y34_N29
\P|REGfile|R2|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RY|bit2|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \P|REGfile|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|REGfile|R2|bit2|Q~q\);

-- Location: LCCOMB_X56_Y34_N26
\P|REGfile|M2|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux13~2_combout\ = (\P|RB|bit15|Q~0_combout\ & (((\P|RB|bit15|Q~1_combout\)))) # (!\P|RB|bit15|Q~0_combout\ & ((\P|RB|bit15|Q~1_combout\ & (\P|REGfile|R2|bit2|Q~q\)) # (!\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|R1|bit2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|REGfile|R2|bit2|Q~q\,
	datac => \P|REGfile|R1|bit2|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux13~2_combout\);

-- Location: LCCOMB_X59_Y31_N8
\P|REGfile|M2|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux13~0_combout\ = (\P|IR|bit10|Q~q\ & (((\P|IR|bit11|Q~q\)))) # (!\P|IR|bit10|Q~q\ & ((\P|IR|bit11|Q~q\ & (\P|REGfile|R6|bit2|Q~q\)) # (!\P|IR|bit11|Q~q\ & ((\P|REGfile|R4|bit2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R6|bit2|Q~q\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|R4|bit2|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|REGfile|M2|Mux13~0_combout\);

-- Location: LCCOMB_X59_Y31_N20
\P|REGfile|M2|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux13~1_combout\ = (\P|REGfile|M2|Mux13~0_combout\ & ((\P|REGfile|R7|bit2|Q~q\) # ((!\P|IR|bit10|Q~q\)))) # (!\P|REGfile|M2|Mux13~0_combout\ & (((\P|REGfile|R5|bit2|Q~q\ & \P|IR|bit10|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R7|bit2|Q~q\,
	datab => \P|REGfile|M2|Mux13~0_combout\,
	datac => \P|REGfile|R5|bit2|Q~q\,
	datad => \P|IR|bit10|Q~q\,
	combout => \P|REGfile|M2|Mux13~1_combout\);

-- Location: LCCOMB_X57_Y34_N2
\P|REGfile|M2|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux13~3_combout\ = (\P|REGfile|M2|Mux13~2_combout\ & ((\P|REGfile|R3|bit2|Q~q\) # ((!\P|RB|bit15|Q~0_combout\)))) # (!\P|REGfile|M2|Mux13~2_combout\ & (((\P|RB|bit15|Q~0_combout\ & \P|REGfile|M2|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux13~2_combout\,
	datab => \P|REGfile|R3|bit2|Q~q\,
	datac => \P|RB|bit15|Q~0_combout\,
	datad => \P|REGfile|M2|Mux13~1_combout\,
	combout => \P|REGfile|M2|Mux13~3_combout\);

-- Location: LCCOMB_X50_Y34_N2
\P|REGfile|M2|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux13~4_combout\ = (\P|REGfile|M2|Mux13~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux13~3_combout\,
	datab => \P|RB|bit15|Q~0_combout\,
	datac => \P|IR|bit10|Q~q\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux13~4_combout\);

-- Location: FF_X50_Y34_N3
\P|RB|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux13~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit2|Q~q\);

-- Location: LCCOMB_X50_Y34_N18
\P|RM|bit2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RM|bit2|Q~feeder_combout\ = \P|RB|bit2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RB|bit2|Q~q\,
	combout => \P|RM|bit2|Q~feeder_combout\);

-- Location: FF_X50_Y34_N19
\P|RM|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|RM|bit2|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit2|Q~q\);

-- Location: FF_X49_Y32_N1
\P|RM|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RB|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit3|Q~q\);

-- Location: M9K_X53_Y32_N0
\MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000038818",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitialization.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryIOInterface:MemIO|MainMemory:Memory|altsyncram:altsyncram_component|altsyncram_71e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemIO|comb~2_combout\,
	portare => VCC,
	clk0 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemIO|Memory|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y32_N10
\MemIO|Data_out[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[3]~11_combout\ = (\MemIO|Data_out~4_combout\ & ((\MemIO|Memory|altsyncram_component|auto_generated|q_a\(3)) # ((\MemIO|Data_out[9]~6_combout\ & \MemIO|SliderSwitch|bit3|Q~q\)))) # (!\MemIO|Data_out~4_combout\ & 
-- (\MemIO|Data_out[9]~6_combout\ & (\MemIO|SliderSwitch|bit3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|Data_out~4_combout\,
	datab => \MemIO|Data_out[9]~6_combout\,
	datac => \MemIO|SliderSwitch|bit3|Q~q\,
	datad => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(3),
	combout => \MemIO|Data_out[3]~11_combout\);

-- Location: FF_X52_Y32_N11
\P|IR|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[3]~11_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit3|Q~q\);

-- Location: LCCOMB_X50_Y32_N10
\P|CU|ALU_op[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|ALU_op[1]~5_combout\ = (!\P|IR|bit4|Q~q\ & ((\P|IR|bit3|Q~q\ & (!\P|IR|bit6|Q~q\ & !\P|IR|bit5|Q~q\)) # (!\P|IR|bit3|Q~q\ & ((!\P|IR|bit5|Q~q\) # (!\P|IR|bit6|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit3|Q~q\,
	datab => \P|IR|bit6|Q~q\,
	datac => \P|IR|bit4|Q~q\,
	datad => \P|IR|bit5|Q~q\,
	combout => \P|CU|ALU_op[1]~5_combout\);

-- Location: LCCOMB_X50_Y32_N28
\P|CU|ALU_op[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|ALU_op[1]~6_combout\ = (\P|IR|bit1|Q~q\) # (\P|IR|bit0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|IR|bit1|Q~q\,
	datad => \P|IR|bit0|Q~q\,
	combout => \P|CU|ALU_op[1]~6_combout\);

-- Location: LCCOMB_X50_Y32_N18
\P|CU|ALU_op[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|ALU_op[1]~7_combout\ = (!\P|IR|bit2|Q~q\ & (\P|CU|Equal0~0_combout\ & ((\P|CU|ALU_op[1]~5_combout\) # (\P|CU|ALU_op[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[1]~5_combout\,
	datab => \P|IR|bit2|Q~q\,
	datac => \P|CU|Equal0~0_combout\,
	datad => \P|CU|ALU_op[1]~6_combout\,
	combout => \P|CU|ALU_op[1]~7_combout\);

-- Location: LCCOMB_X49_Y29_N24
\P|ALU_comp|M1|result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M1|result[0]~0_combout\ = \P|RA|bit0|Q~q\ $ (((\P|CU|Equal9~0_combout\ & (\P|CU|Equal1~0_combout\ & \P|CU|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal9~0_combout\,
	datab => \P|CU|Equal1~0_combout\,
	datac => \P|CU|Equal0~0_combout\,
	datad => \P|RA|bit0|Q~q\,
	combout => \P|ALU_comp|M1|result[0]~0_combout\);

-- Location: LCCOMB_X49_Y29_N18
\P|ALU_comp|M3|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux15~0_combout\ = (\P|CU|ALU_op[1]~7_combout\ & (((\P|CU|ALU_op[0]~9_combout\)))) # (!\P|CU|ALU_op[1]~7_combout\ & ((\P|ALU_comp|M2|result[0]~15_combout\ & ((\P|CU|ALU_op[0]~9_combout\) # (\P|ALU_comp|M1|result[0]~0_combout\))) # 
-- (!\P|ALU_comp|M2|result[0]~15_combout\ & (\P|CU|ALU_op[0]~9_combout\ & \P|ALU_comp|M1|result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[1]~7_combout\,
	datab => \P|ALU_comp|M2|result[0]~15_combout\,
	datac => \P|CU|ALU_op[0]~9_combout\,
	datad => \P|ALU_comp|M1|result[0]~0_combout\,
	combout => \P|ALU_comp|M3|Mux15~0_combout\);

-- Location: LCCOMB_X49_Y29_N0
\P|ALU_comp|XORout[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|XORout[0]~5_combout\ = \P|RA|bit0|Q~q\ $ (\P|ALU_comp|M2|result[0]~15_combout\ $ (\P|CU|A_inv~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit0|Q~q\,
	datac => \P|ALU_comp|M2|result[0]~15_combout\,
	datad => \P|CU|A_inv~0_combout\,
	combout => \P|ALU_comp|XORout[0]~5_combout\);

-- Location: LCCOMB_X50_Y30_N18
\P|ALU_comp|M3|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|ALU_comp|M3|Mux15~1_combout\ = (\P|CU|ALU_op[1]~7_combout\ & (\P|ALU_comp|XORout[0]~5_combout\ $ (((\P|CU|C_in~2_combout\ & \P|ALU_comp|M3|Mux15~0_combout\))))) # (!\P|CU|ALU_op[1]~7_combout\ & (((\P|ALU_comp|M3|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|ALU_op[1]~7_combout\,
	datab => \P|CU|C_in~2_combout\,
	datac => \P|ALU_comp|M3|Mux15~0_combout\,
	datad => \P|ALU_comp|XORout[0]~5_combout\,
	combout => \P|ALU_comp|M3|Mux15~1_combout\);

-- Location: FF_X50_Y30_N19
\P|RZ|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|ALU_comp|M3|Mux15~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RZ|bit0|Q~q\);

-- Location: LCCOMB_X51_Y34_N18
\P|muxMA|result[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[0]~8_combout\ = (\P|CU|Equal0~1_combout\ & ((\P|PC|bit0|Q~q\))) # (!\P|CU|Equal0~1_combout\ & (\P|RZ|bit0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RZ|bit0|Q~q\,
	datac => \P|PC|bit0|Q~q\,
	datad => \P|CU|Equal0~1_combout\,
	combout => \P|muxMA|result[0]~8_combout\);

-- Location: LCCOMB_X54_Y32_N24
\MemIO|Data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[0]~7_combout\ = (\MemIO|Data_out~4_combout\ & ((\MemIO|Memory|altsyncram_component|auto_generated|q_a\(0)) # ((\MemIO|SliderSwitch|bit0|Q~q\ & \MemIO|Data_out[9]~6_combout\)))) # (!\MemIO|Data_out~4_combout\ & 
-- (\MemIO|SliderSwitch|bit0|Q~q\ & (\MemIO|Data_out[9]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|Data_out~4_combout\,
	datab => \MemIO|SliderSwitch|bit0|Q~q\,
	datac => \MemIO|Data_out[9]~6_combout\,
	datad => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(0),
	combout => \MemIO|Data_out[0]~7_combout\);

-- Location: FF_X54_Y32_N25
\P|IR|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[0]~7_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit0|Q~q\);

-- Location: LCCOMB_X54_Y32_N0
\P|CU|MEM_write~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|MEM_write~3_combout\ = (!\P|IR|bit0|Q~q\ & (\P|CU|Y_select~0_combout\ & (\P|IR|bit1|Q~q\ & !\P|IR|bit2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit0|Q~q\,
	datab => \P|CU|Y_select~0_combout\,
	datac => \P|IR|bit1|Q~q\,
	datad => \P|IR|bit2|Q~q\,
	combout => \P|CU|MEM_write~3_combout\);

-- Location: LCCOMB_X51_Y33_N20
\MemIO|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|comb~2_combout\ = (\P|CU|MEM_write~3_combout\ & (!\P|muxMA|result[12]~0_combout\ & \MemIO|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|MEM_write~3_combout\,
	datab => \P|muxMA|result[12]~0_combout\,
	datad => \MemIO|Equal0~2_combout\,
	combout => \MemIO|comb~2_combout\);

-- Location: LCCOMB_X52_Y33_N10
\MemIO|Data_out[14]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[14]~22_combout\ = (\MemIO|Data_out~4_combout\ & \MemIO|Memory|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemIO|Data_out~4_combout\,
	datad => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(14),
	combout => \MemIO|Data_out[14]~22_combout\);

-- Location: FF_X52_Y33_N11
\P|IR|bit14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[14]~22_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit14|Q~q\);

-- Location: LCCOMB_X54_Y31_N30
\P|RA|bit6|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RA|bit6|Q~0_combout\ = (\P|IR|bit15|Q~q\) # ((\P|IR|bit14|Q~q\ & \P|IR|bit13|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P|IR|bit14|Q~q\,
	datac => \P|IR|bit15|Q~q\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|RA|bit6|Q~0_combout\);

-- Location: LCCOMB_X56_Y34_N20
\P|REGfile|M1|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux11~2_combout\ = (\P|RA|bit6|Q~0_combout\ & (((\P|RA|bit6|Q~1_combout\)))) # (!\P|RA|bit6|Q~0_combout\ & ((\P|RA|bit6|Q~1_combout\ & ((\P|REGfile|R2|bit4|Q~q\))) # (!\P|RA|bit6|Q~1_combout\ & (\P|REGfile|R1|bit4|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|REGfile|R1|bit4|Q~q\,
	datac => \P|REGfile|R2|bit4|Q~q\,
	datad => \P|RA|bit6|Q~1_combout\,
	combout => \P|REGfile|M1|Mux11~2_combout\);

-- Location: LCCOMB_X58_Y31_N16
\P|REGfile|M1|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux11~0_combout\ = (\P|IR|bit14|Q~q\ & (((\P|REGfile|R6|bit4|Q~q\) # (\P|IR|bit13|Q~q\)))) # (!\P|IR|bit14|Q~q\ & (\P|REGfile|R4|bit4|Q~q\ & ((!\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R4|bit4|Q~q\,
	datab => \P|IR|bit14|Q~q\,
	datac => \P|REGfile|R6|bit4|Q~q\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux11~0_combout\);

-- Location: LCCOMB_X58_Y31_N12
\P|REGfile|M1|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux11~1_combout\ = (\P|IR|bit13|Q~q\ & ((\P|REGfile|M1|Mux11~0_combout\ & ((\P|REGfile|R7|bit4|Q~q\))) # (!\P|REGfile|M1|Mux11~0_combout\ & (\P|REGfile|R5|bit4|Q~q\)))) # (!\P|IR|bit13|Q~q\ & (((\P|REGfile|M1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R5|bit4|Q~q\,
	datab => \P|IR|bit13|Q~q\,
	datac => \P|REGfile|R7|bit4|Q~q\,
	datad => \P|REGfile|M1|Mux11~0_combout\,
	combout => \P|REGfile|M1|Mux11~1_combout\);

-- Location: LCCOMB_X55_Y34_N16
\P|REGfile|M1|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux11~3_combout\ = (\P|RA|bit6|Q~0_combout\ & ((\P|REGfile|M1|Mux11~2_combout\ & (\P|REGfile|R3|bit4|Q~q\)) # (!\P|REGfile|M1|Mux11~2_combout\ & ((\P|REGfile|M1|Mux11~1_combout\))))) # (!\P|RA|bit6|Q~0_combout\ & 
-- (((\P|REGfile|M1|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|R3|bit4|Q~q\,
	datab => \P|RA|bit6|Q~0_combout\,
	datac => \P|REGfile|M1|Mux11~2_combout\,
	datad => \P|REGfile|M1|Mux11~1_combout\,
	combout => \P|REGfile|M1|Mux11~3_combout\);

-- Location: LCCOMB_X50_Y30_N20
\P|REGfile|M1|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M1|Mux11~4_combout\ = (\P|REGfile|M1|Mux11~3_combout\ & ((\P|RA|bit6|Q~0_combout\) # ((\P|RA|bit6|Q~1_combout\) # (\P|IR|bit13|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit6|Q~0_combout\,
	datab => \P|RA|bit6|Q~1_combout\,
	datac => \P|REGfile|M1|Mux11~3_combout\,
	datad => \P|IR|bit13|Q~q\,
	combout => \P|REGfile|M1|Mux11~4_combout\);

-- Location: FF_X50_Y30_N21
\P|RA|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M1|Mux11~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RA|bit4|Q~q\);

-- Location: LCCOMB_X50_Y30_N0
\P|Adder_comp|S4|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|Adder_comp|S4|S~combout\ = \P|Adder_comp|S3|C_out~0_combout\ $ (\P|PC|bit4|Q~q\ $ (((!\P|CU|INC_select~0_combout\ & \P|IMME|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|INC_select~0_combout\,
	datab => \P|IMME|Mux11~0_combout\,
	datac => \P|Adder_comp|S3|C_out~0_combout\,
	datad => \P|PC|bit4|Q~q\,
	combout => \P|Adder_comp|S4|S~combout\);

-- Location: LCCOMB_X50_Y30_N28
\P|PC|bit4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|PC|bit4|Q~0_combout\ = (\P|CU|PC_select[0]~3_combout\ & ((\P|Adder_comp|S4|S~combout\))) # (!\P|CU|PC_select[0]~3_combout\ & (\P|RA|bit4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RA|bit4|Q~q\,
	datab => \P|CU|PC_select[0]~3_combout\,
	datad => \P|Adder_comp|S4|S~combout\,
	combout => \P|PC|bit4|Q~0_combout\);

-- Location: FF_X50_Y30_N29
\P|PC|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|PC|bit4|Q~0_combout\,
	asdata => \P|IMME|Mux11~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \P|CU|PC_select~0_combout\,
	ena => \P|CU|PC_select[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|PC|bit4|Q~q\);

-- Location: LCCOMB_X51_Y34_N30
\P|muxMA|result[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|muxMA|result[4]~11_combout\ = (\P|CU|Equal0~1_combout\ & (\P|PC|bit4|Q~q\)) # (!\P|CU|Equal0~1_combout\ & ((\P|RZ|bit4|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~1_combout\,
	datac => \P|PC|bit4|Q~q\,
	datad => \P|RZ|bit4|Q~q\,
	combout => \P|muxMA|result[4]~11_combout\);

-- Location: LCCOMB_X52_Y33_N2
\MemIO|Data_out[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[9]~6_combout\ = (!\MemIO|Data_out~4_combout\ & (!\P|muxMA|result[4]~11_combout\ & \MemIO|Data_out~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemIO|Data_out~4_combout\,
	datac => \P|muxMA|result[4]~11_combout\,
	datad => \MemIO|Data_out~5_combout\,
	combout => \MemIO|Data_out[9]~6_combout\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X52_Y36_N13
\MemIO|SliderSwitch|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|SliderSwitch|bit2|Q~q\);

-- Location: LCCOMB_X52_Y32_N0
\MemIO|Data_out[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[2]~10_combout\ = (\MemIO|Data_out~4_combout\ & ((\MemIO|Memory|altsyncram_component|auto_generated|q_a\(2)) # ((\MemIO|Data_out[9]~6_combout\ & \MemIO|SliderSwitch|bit2|Q~q\)))) # (!\MemIO|Data_out~4_combout\ & 
-- (\MemIO|Data_out[9]~6_combout\ & (\MemIO|SliderSwitch|bit2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|Data_out~4_combout\,
	datab => \MemIO|Data_out[9]~6_combout\,
	datac => \MemIO|SliderSwitch|bit2|Q~q\,
	datad => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(2),
	combout => \MemIO|Data_out[2]~10_combout\);

-- Location: FF_X52_Y32_N1
\P|IR|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MemIO|Data_out[2]~10_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit2|Q~q\);

-- Location: LCCOMB_X54_Y32_N26
\P|CU|MA_select~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|CU|MA_select~0_combout\ = (!\P|IR|bit2|Q~q\ & (\P|CU|Y_select~0_combout\ & (!\P|IR|bit1|Q~q\ & \P|IR|bit0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit2|Q~q\,
	datab => \P|CU|Y_select~0_combout\,
	datac => \P|IR|bit1|Q~q\,
	datad => \P|IR|bit0|Q~q\,
	combout => \P|CU|MA_select~0_combout\);

-- Location: LCCOMB_X51_Y33_N18
\MemIO|Data_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out~4_combout\ = (!\P|muxMA|result[12]~0_combout\ & (\MemIO|Equal0~2_combout\ & ((\P|CU|Equal0~1_combout\) # (\P|CU|MA_select~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|CU|Equal0~1_combout\,
	datab => \P|CU|MA_select~0_combout\,
	datac => \P|muxMA|result[12]~0_combout\,
	datad => \MemIO|Equal0~2_combout\,
	combout => \MemIO|Data_out~4_combout\);

-- Location: LCCOMB_X52_Y30_N0
\MemIO|Data_out[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|Data_out[12]~20_combout\ = (\MemIO|Data_out~4_combout\ & \MemIO|Memory|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemIO|Data_out~4_combout\,
	datac => \MemIO|Memory|altsyncram_component|auto_generated|q_a\(12),
	combout => \MemIO|Data_out[12]~20_combout\);

-- Location: LCCOMB_X52_Y30_N24
\P|IR|bit12|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|IR|bit12|Q~feeder_combout\ = \MemIO|Data_out[12]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemIO|Data_out[12]~20_combout\,
	combout => \P|IR|bit12|Q~feeder_combout\);

-- Location: FF_X52_Y30_N25
\P|IR|bit12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|IR|bit12|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \P|CU|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|IR|bit12|Q~q\);

-- Location: LCCOMB_X56_Y34_N2
\P|RB|bit15|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|RB|bit15|Q~0_combout\ = (\P|IR|bit12|Q~q\) # ((\P|IR|bit10|Q~q\ & \P|IR|bit11|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit12|Q~q\,
	datac => \P|IR|bit10|Q~q\,
	datad => \P|IR|bit11|Q~q\,
	combout => \P|RB|bit15|Q~0_combout\);

-- Location: LCCOMB_X59_Y31_N16
\P|REGfile|M2|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux15~0_combout\ = (\P|IR|bit11|Q~q\ & (\P|IR|bit10|Q~q\)) # (!\P|IR|bit11|Q~q\ & ((\P|IR|bit10|Q~q\ & ((\P|REGfile|R5|bit0|Q~q\))) # (!\P|IR|bit10|Q~q\ & (\P|REGfile|R4|bit0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|R4|bit0|Q~q\,
	datad => \P|REGfile|R5|bit0|Q~q\,
	combout => \P|REGfile|M2|Mux15~0_combout\);

-- Location: LCCOMB_X58_Y31_N28
\P|REGfile|M2|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux15~1_combout\ = (\P|IR|bit11|Q~q\ & ((\P|REGfile|M2|Mux15~0_combout\ & (\P|REGfile|R7|bit0|Q~q\)) # (!\P|REGfile|M2|Mux15~0_combout\ & ((\P|REGfile|R6|bit0|Q~q\))))) # (!\P|IR|bit11|Q~q\ & (((\P|REGfile|M2|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|IR|bit11|Q~q\,
	datab => \P|REGfile|R7|bit0|Q~q\,
	datac => \P|REGfile|R6|bit0|Q~q\,
	datad => \P|REGfile|M2|Mux15~0_combout\,
	combout => \P|REGfile|M2|Mux15~1_combout\);

-- Location: LCCOMB_X58_Y34_N6
\P|REGfile|M2|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux15~2_combout\ = (\P|RB|bit15|Q~0_combout\ & (\P|RB|bit15|Q~1_combout\)) # (!\P|RB|bit15|Q~0_combout\ & ((\P|RB|bit15|Q~1_combout\ & (\P|REGfile|R2|bit0|Q~q\)) # (!\P|RB|bit15|Q~1_combout\ & ((\P|REGfile|R1|bit0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|RB|bit15|Q~1_combout\,
	datac => \P|REGfile|R2|bit0|Q~q\,
	datad => \P|REGfile|R1|bit0|Q~q\,
	combout => \P|REGfile|M2|Mux15~2_combout\);

-- Location: LCCOMB_X57_Y34_N0
\P|REGfile|M2|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux15~3_combout\ = (\P|RB|bit15|Q~0_combout\ & ((\P|REGfile|M2|Mux15~2_combout\ & ((\P|REGfile|R3|bit0|Q~q\))) # (!\P|REGfile|M2|Mux15~2_combout\ & (\P|REGfile|M2|Mux15~1_combout\)))) # (!\P|RB|bit15|Q~0_combout\ & 
-- (((\P|REGfile|M2|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|REGfile|M2|Mux15~1_combout\,
	datab => \P|REGfile|R3|bit0|Q~q\,
	datac => \P|RB|bit15|Q~0_combout\,
	datad => \P|REGfile|M2|Mux15~2_combout\,
	combout => \P|REGfile|M2|Mux15~3_combout\);

-- Location: LCCOMB_X50_Y33_N14
\P|REGfile|M2|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P|REGfile|M2|Mux15~4_combout\ = (\P|REGfile|M2|Mux15~3_combout\ & ((\P|RB|bit15|Q~0_combout\) # ((\P|IR|bit10|Q~q\) # (\P|RB|bit15|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RB|bit15|Q~0_combout\,
	datab => \P|IR|bit10|Q~q\,
	datac => \P|REGfile|M2|Mux15~3_combout\,
	datad => \P|RB|bit15|Q~1_combout\,
	combout => \P|REGfile|M2|Mux15~4_combout\);

-- Location: FF_X50_Y33_N15
\P|RB|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \P|REGfile|M2|Mux15~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RB|bit0|Q~q\);

-- Location: FF_X50_Y33_N23
\P|RM|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \P|RB|bit0|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P|RM|bit0|Q~q\);

-- Location: LCCOMB_X50_Y34_N0
\MemIO|LEDRed|bit0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|LEDRed|bit0|Q~feeder_combout\ = \P|RM|bit0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RM|bit0|Q~q\,
	combout => \MemIO|LEDRed|bit0|Q~feeder_combout\);

-- Location: LCCOMB_X51_Y33_N10
\MemIO|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|comb~0_combout\ = (!\P|muxMA|result[4]~11_combout\ & (!\P|muxMA|result[6]~12_combout\ & (\P|CU|MEM_write~3_combout\ & \MemIO|Data_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|muxMA|result[4]~11_combout\,
	datab => \P|muxMA|result[6]~12_combout\,
	datac => \P|CU|MEM_write~3_combout\,
	datad => \MemIO|Data_out~3_combout\,
	combout => \MemIO|comb~0_combout\);

-- Location: FF_X50_Y34_N1
\MemIO|LEDRed|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|LEDRed|bit0|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \MemIO|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|LEDRed|bit0|Q~q\);

-- Location: LCCOMB_X54_Y33_N20
\MemIO|LEDRed|bit1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|LEDRed|bit1|Q~feeder_combout\ = \P|RM|bit1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RM|bit1|Q~q\,
	combout => \MemIO|LEDRed|bit1|Q~feeder_combout\);

-- Location: FF_X54_Y33_N21
\MemIO|LEDRed|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|LEDRed|bit1|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \MemIO|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|LEDRed|bit1|Q~q\);

-- Location: FF_X51_Y33_N29
\MemIO|LEDRed|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \P|RM|bit2|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \MemIO|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|LEDRed|bit2|Q~q\);

-- Location: FF_X51_Y33_N23
\MemIO|LEDRed|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \P|RM|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \MemIO|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|LEDRed|bit3|Q~q\);

-- Location: LCCOMB_X54_Y33_N6
\MemIO|LEDRed|bit4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|LEDRed|bit4|Q~feeder_combout\ = \P|RM|bit4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RM|bit4|Q~q\,
	combout => \MemIO|LEDRed|bit4|Q~feeder_combout\);

-- Location: FF_X54_Y33_N7
\MemIO|LEDRed|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|LEDRed|bit4|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \MemIO|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|LEDRed|bit4|Q~q\);

-- Location: LCCOMB_X54_Y33_N8
\MemIO|LEDRed|bit5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|LEDRed|bit5|Q~feeder_combout\ = \P|RM|bit5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P|RM|bit5|Q~q\,
	combout => \MemIO|LEDRed|bit5|Q~feeder_combout\);

-- Location: FF_X54_Y33_N9
\MemIO|LEDRed|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|LEDRed|bit5|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \MemIO|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|LEDRed|bit5|Q~q\);

-- Location: FF_X51_Y33_N5
\MemIO|LEDRed|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \P|RM|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \MemIO|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|LEDRed|bit6|Q~q\);

-- Location: LCCOMB_X54_Y33_N10
\MemIO|LEDRed|bit7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|LEDRed|bit7|Q~feeder_combout\ = \P|RM|bit7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RM|bit7|Q~q\,
	combout => \MemIO|LEDRed|bit7|Q~feeder_combout\);

-- Location: FF_X54_Y33_N11
\MemIO|LEDRed|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|LEDRed|bit7|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \MemIO|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|LEDRed|bit7|Q~q\);

-- Location: LCCOMB_X50_Y34_N22
\MemIO|LEDRed|bit8|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|LEDRed|bit8|Q~feeder_combout\ = \P|RM|bit8|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RM|bit8|Q~q\,
	combout => \MemIO|LEDRed|bit8|Q~feeder_combout\);

-- Location: FF_X50_Y34_N23
\MemIO|LEDRed|bit8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|LEDRed|bit8|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \MemIO|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|LEDRed|bit8|Q~q\);

-- Location: LCCOMB_X50_Y34_N24
\MemIO|LEDRed|bit9|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|LEDRed|bit9|Q~feeder_combout\ = \P|RM|bit9|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RM|bit9|Q~q\,
	combout => \MemIO|LEDRed|bit9|Q~feeder_combout\);

-- Location: FF_X50_Y34_N25
\MemIO|LEDRed|bit9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|LEDRed|bit9|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \MemIO|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|LEDRed|bit9|Q~q\);

-- Location: LCCOMB_X50_Y33_N0
\MemIO|HEX_Display|bit0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|HEX_Display|bit0|Q~feeder_combout\ = \P|RM|bit0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RM|bit0|Q~q\,
	combout => \MemIO|HEX_Display|bit0|Q~feeder_combout\);

-- Location: LCCOMB_X51_Y33_N0
\MemIO|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|comb~1_combout\ = (\P|muxMA|result[4]~11_combout\ & (!\P|muxMA|result[6]~12_combout\ & (\P|CU|MEM_write~3_combout\ & \MemIO|Data_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|muxMA|result[4]~11_combout\,
	datab => \P|muxMA|result[6]~12_combout\,
	datac => \P|CU|MEM_write~3_combout\,
	datad => \MemIO|Data_out~3_combout\,
	combout => \MemIO|comb~1_combout\);

-- Location: FF_X50_Y33_N1
\MemIO|HEX_Display|bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|HEX_Display|bit0|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \MemIO|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|HEX_Display|bit0|Q~q\);

-- Location: LCCOMB_X50_Y33_N26
\MemIO|HEX_Display|bit1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|HEX_Display|bit1|Q~feeder_combout\ = \P|RM|bit1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P|RM|bit1|Q~q\,
	combout => \MemIO|HEX_Display|bit1|Q~feeder_combout\);

-- Location: FF_X50_Y33_N27
\MemIO|HEX_Display|bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|HEX_Display|bit1|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \MemIO|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|HEX_Display|bit1|Q~q\);

-- Location: FF_X51_Y33_N31
\MemIO|HEX_Display|bit2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \P|RM|bit2|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \MemIO|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|HEX_Display|bit2|Q~q\);

-- Location: FF_X51_Y33_N25
\MemIO|HEX_Display|bit3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \P|RM|bit3|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \MemIO|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|HEX_Display|bit3|Q~q\);

-- Location: FF_X51_Y33_N15
\MemIO|HEX_Display|bit4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \P|RM|bit4|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \MemIO|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|HEX_Display|bit4|Q~q\);

-- Location: LCCOMB_X50_Y33_N20
\MemIO|HEX_Display|bit5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemIO|HEX_Display|bit5|Q~feeder_combout\ = \P|RM|bit5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P|RM|bit5|Q~q\,
	combout => \MemIO|HEX_Display|bit5|Q~feeder_combout\);

-- Location: FF_X50_Y33_N21
\MemIO|HEX_Display|bit5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \MemIO|HEX_Display|bit5|Q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \MemIO|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|HEX_Display|bit5|Q~q\);

-- Location: FF_X51_Y33_N21
\MemIO|HEX_Display|bit6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \P|RM|bit6|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \MemIO|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|HEX_Display|bit6|Q~q\);

-- Location: FF_X51_Y33_N27
\MemIO|HEX_Display|bit7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \P|RM|bit7|Q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \MemIO|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemIO|HEX_Display|bit7|Q~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX_DP(0) <= \HEX_DP[0]~output_o\;

ww_HEX_DP(1) <= \HEX_DP[1]~output_o\;

ww_HEX_DP(2) <= \HEX_DP[2]~output_o\;

ww_HEX_DP(3) <= \HEX_DP[3]~output_o\;

ww_HEX_DP(4) <= \HEX_DP[4]~output_o\;

ww_HEX_DP(5) <= \HEX_DP[5]~output_o\;

ww_HEX_DP(6) <= \HEX_DP[6]~output_o\;

ww_HEX_DP(7) <= \HEX_DP[7]~output_o\;

ww_debug_PC(0) <= \debug_PC[0]~output_o\;

ww_debug_PC(1) <= \debug_PC[1]~output_o\;

ww_debug_PC(2) <= \debug_PC[2]~output_o\;

ww_debug_PC(3) <= \debug_PC[3]~output_o\;

ww_debug_PC(4) <= \debug_PC[4]~output_o\;

ww_debug_PC(5) <= \debug_PC[5]~output_o\;

ww_debug_PC(6) <= \debug_PC[6]~output_o\;

ww_debug_PC(7) <= \debug_PC[7]~output_o\;

ww_debug_PC(8) <= \debug_PC[8]~output_o\;

ww_debug_PC(9) <= \debug_PC[9]~output_o\;

ww_debug_PC(10) <= \debug_PC[10]~output_o\;

ww_debug_PC(11) <= \debug_PC[11]~output_o\;

ww_debug_PC(12) <= \debug_PC[12]~output_o\;

ww_debug_PC(13) <= \debug_PC[13]~output_o\;

ww_debug_PC(14) <= \debug_PC[14]~output_o\;

ww_debug_PC(15) <= \debug_PC[15]~output_o\;

ww_debug_IR(0) <= \debug_IR[0]~output_o\;

ww_debug_IR(1) <= \debug_IR[1]~output_o\;

ww_debug_IR(2) <= \debug_IR[2]~output_o\;

ww_debug_IR(3) <= \debug_IR[3]~output_o\;

ww_debug_IR(4) <= \debug_IR[4]~output_o\;

ww_debug_IR(5) <= \debug_IR[5]~output_o\;

ww_debug_IR(6) <= \debug_IR[6]~output_o\;

ww_debug_IR(7) <= \debug_IR[7]~output_o\;

ww_debug_IR(8) <= \debug_IR[8]~output_o\;

ww_debug_IR(9) <= \debug_IR[9]~output_o\;

ww_debug_IR(10) <= \debug_IR[10]~output_o\;

ww_debug_IR(11) <= \debug_IR[11]~output_o\;

ww_debug_IR(12) <= \debug_IR[12]~output_o\;

ww_debug_IR(13) <= \debug_IR[13]~output_o\;

ww_debug_IR(14) <= \debug_IR[14]~output_o\;

ww_debug_IR(15) <= \debug_IR[15]~output_o\;

ww_debug_state(0) <= \debug_state[0]~output_o\;

ww_debug_state(1) <= \debug_state[1]~output_o\;

ww_debug_state(2) <= \debug_state[2]~output_o\;

ww_debug_r1(0) <= \debug_r1[0]~output_o\;

ww_debug_r1(1) <= \debug_r1[1]~output_o\;

ww_debug_r1(2) <= \debug_r1[2]~output_o\;

ww_debug_r1(3) <= \debug_r1[3]~output_o\;

ww_debug_r1(4) <= \debug_r1[4]~output_o\;

ww_debug_r1(5) <= \debug_r1[5]~output_o\;

ww_debug_r1(6) <= \debug_r1[6]~output_o\;

ww_debug_r1(7) <= \debug_r1[7]~output_o\;

ww_debug_r1(8) <= \debug_r1[8]~output_o\;

ww_debug_r1(9) <= \debug_r1[9]~output_o\;

ww_debug_r1(10) <= \debug_r1[10]~output_o\;

ww_debug_r1(11) <= \debug_r1[11]~output_o\;

ww_debug_r1(12) <= \debug_r1[12]~output_o\;

ww_debug_r1(13) <= \debug_r1[13]~output_o\;

ww_debug_r1(14) <= \debug_r1[14]~output_o\;

ww_debug_r1(15) <= \debug_r1[15]~output_o\;

ww_debug_r2(0) <= \debug_r2[0]~output_o\;

ww_debug_r2(1) <= \debug_r2[1]~output_o\;

ww_debug_r2(2) <= \debug_r2[2]~output_o\;

ww_debug_r2(3) <= \debug_r2[3]~output_o\;

ww_debug_r2(4) <= \debug_r2[4]~output_o\;

ww_debug_r2(5) <= \debug_r2[5]~output_o\;

ww_debug_r2(6) <= \debug_r2[6]~output_o\;

ww_debug_r2(7) <= \debug_r2[7]~output_o\;

ww_debug_r2(8) <= \debug_r2[8]~output_o\;

ww_debug_r2(9) <= \debug_r2[9]~output_o\;

ww_debug_r2(10) <= \debug_r2[10]~output_o\;

ww_debug_r2(11) <= \debug_r2[11]~output_o\;

ww_debug_r2(12) <= \debug_r2[12]~output_o\;

ww_debug_r2(13) <= \debug_r2[13]~output_o\;

ww_debug_r2(14) <= \debug_r2[14]~output_o\;

ww_debug_r2(15) <= \debug_r2[15]~output_o\;

ww_debug_r3(0) <= \debug_r3[0]~output_o\;

ww_debug_r3(1) <= \debug_r3[1]~output_o\;

ww_debug_r3(2) <= \debug_r3[2]~output_o\;

ww_debug_r3(3) <= \debug_r3[3]~output_o\;

ww_debug_r3(4) <= \debug_r3[4]~output_o\;

ww_debug_r3(5) <= \debug_r3[5]~output_o\;

ww_debug_r3(6) <= \debug_r3[6]~output_o\;

ww_debug_r3(7) <= \debug_r3[7]~output_o\;

ww_debug_r3(8) <= \debug_r3[8]~output_o\;

ww_debug_r3(9) <= \debug_r3[9]~output_o\;

ww_debug_r3(10) <= \debug_r3[10]~output_o\;

ww_debug_r3(11) <= \debug_r3[11]~output_o\;

ww_debug_r3(12) <= \debug_r3[12]~output_o\;

ww_debug_r3(13) <= \debug_r3[13]~output_o\;

ww_debug_r3(14) <= \debug_r3[14]~output_o\;

ww_debug_r3(15) <= \debug_r3[15]~output_o\;

ww_debug_r4(0) <= \debug_r4[0]~output_o\;

ww_debug_r4(1) <= \debug_r4[1]~output_o\;

ww_debug_r4(2) <= \debug_r4[2]~output_o\;

ww_debug_r4(3) <= \debug_r4[3]~output_o\;

ww_debug_r4(4) <= \debug_r4[4]~output_o\;

ww_debug_r4(5) <= \debug_r4[5]~output_o\;

ww_debug_r4(6) <= \debug_r4[6]~output_o\;

ww_debug_r4(7) <= \debug_r4[7]~output_o\;

ww_debug_r4(8) <= \debug_r4[8]~output_o\;

ww_debug_r4(9) <= \debug_r4[9]~output_o\;

ww_debug_r4(10) <= \debug_r4[10]~output_o\;

ww_debug_r4(11) <= \debug_r4[11]~output_o\;

ww_debug_r4(12) <= \debug_r4[12]~output_o\;

ww_debug_r4(13) <= \debug_r4[13]~output_o\;

ww_debug_r4(14) <= \debug_r4[14]~output_o\;

ww_debug_r4(15) <= \debug_r4[15]~output_o\;

ww_debug_r5(0) <= \debug_r5[0]~output_o\;

ww_debug_r5(1) <= \debug_r5[1]~output_o\;

ww_debug_r5(2) <= \debug_r5[2]~output_o\;

ww_debug_r5(3) <= \debug_r5[3]~output_o\;

ww_debug_r5(4) <= \debug_r5[4]~output_o\;

ww_debug_r5(5) <= \debug_r5[5]~output_o\;

ww_debug_r5(6) <= \debug_r5[6]~output_o\;

ww_debug_r5(7) <= \debug_r5[7]~output_o\;

ww_debug_r5(8) <= \debug_r5[8]~output_o\;

ww_debug_r5(9) <= \debug_r5[9]~output_o\;

ww_debug_r5(10) <= \debug_r5[10]~output_o\;

ww_debug_r5(11) <= \debug_r5[11]~output_o\;

ww_debug_r5(12) <= \debug_r5[12]~output_o\;

ww_debug_r5(13) <= \debug_r5[13]~output_o\;

ww_debug_r5(14) <= \debug_r5[14]~output_o\;

ww_debug_r5(15) <= \debug_r5[15]~output_o\;

ww_debug_r6(0) <= \debug_r6[0]~output_o\;

ww_debug_r6(1) <= \debug_r6[1]~output_o\;

ww_debug_r6(2) <= \debug_r6[2]~output_o\;

ww_debug_r6(3) <= \debug_r6[3]~output_o\;

ww_debug_r6(4) <= \debug_r6[4]~output_o\;

ww_debug_r6(5) <= \debug_r6[5]~output_o\;

ww_debug_r6(6) <= \debug_r6[6]~output_o\;

ww_debug_r6(7) <= \debug_r6[7]~output_o\;

ww_debug_r6(8) <= \debug_r6[8]~output_o\;

ww_debug_r6(9) <= \debug_r6[9]~output_o\;

ww_debug_r6(10) <= \debug_r6[10]~output_o\;

ww_debug_r6(11) <= \debug_r6[11]~output_o\;

ww_debug_r6(12) <= \debug_r6[12]~output_o\;

ww_debug_r6(13) <= \debug_r6[13]~output_o\;

ww_debug_r6(14) <= \debug_r6[14]~output_o\;

ww_debug_r6(15) <= \debug_r6[15]~output_o\;

ww_debug_r7(0) <= \debug_r7[0]~output_o\;

ww_debug_r7(1) <= \debug_r7[1]~output_o\;

ww_debug_r7(2) <= \debug_r7[2]~output_o\;

ww_debug_r7(3) <= \debug_r7[3]~output_o\;

ww_debug_r7(4) <= \debug_r7[4]~output_o\;

ww_debug_r7(5) <= \debug_r7[5]~output_o\;

ww_debug_r7(6) <= \debug_r7[6]~output_o\;

ww_debug_r7(7) <= \debug_r7[7]~output_o\;

ww_debug_r7(8) <= \debug_r7[8]~output_o\;

ww_debug_r7(9) <= \debug_r7[9]~output_o\;

ww_debug_r7(10) <= \debug_r7[10]~output_o\;

ww_debug_r7(11) <= \debug_r7[11]~output_o\;

ww_debug_r7(12) <= \debug_r7[12]~output_o\;

ww_debug_r7(13) <= \debug_r7[13]~output_o\;

ww_debug_r7(14) <= \debug_r7[14]~output_o\;

ww_debug_r7(15) <= \debug_r7[15]~output_o\;

ww_debug_RA(0) <= \debug_RA[0]~output_o\;

ww_debug_RA(1) <= \debug_RA[1]~output_o\;

ww_debug_RA(2) <= \debug_RA[2]~output_o\;

ww_debug_RA(3) <= \debug_RA[3]~output_o\;

ww_debug_RA(4) <= \debug_RA[4]~output_o\;

ww_debug_RA(5) <= \debug_RA[5]~output_o\;

ww_debug_RA(6) <= \debug_RA[6]~output_o\;

ww_debug_RA(7) <= \debug_RA[7]~output_o\;

ww_debug_RA(8) <= \debug_RA[8]~output_o\;

ww_debug_RA(9) <= \debug_RA[9]~output_o\;

ww_debug_RA(10) <= \debug_RA[10]~output_o\;

ww_debug_RA(11) <= \debug_RA[11]~output_o\;

ww_debug_RA(12) <= \debug_RA[12]~output_o\;

ww_debug_RA(13) <= \debug_RA[13]~output_o\;

ww_debug_RA(14) <= \debug_RA[14]~output_o\;

ww_debug_RA(15) <= \debug_RA[15]~output_o\;

ww_debug_RB(0) <= \debug_RB[0]~output_o\;

ww_debug_RB(1) <= \debug_RB[1]~output_o\;

ww_debug_RB(2) <= \debug_RB[2]~output_o\;

ww_debug_RB(3) <= \debug_RB[3]~output_o\;

ww_debug_RB(4) <= \debug_RB[4]~output_o\;

ww_debug_RB(5) <= \debug_RB[5]~output_o\;

ww_debug_RB(6) <= \debug_RB[6]~output_o\;

ww_debug_RB(7) <= \debug_RB[7]~output_o\;

ww_debug_RB(8) <= \debug_RB[8]~output_o\;

ww_debug_RB(9) <= \debug_RB[9]~output_o\;

ww_debug_RB(10) <= \debug_RB[10]~output_o\;

ww_debug_RB(11) <= \debug_RB[11]~output_o\;

ww_debug_RB(12) <= \debug_RB[12]~output_o\;

ww_debug_RB(13) <= \debug_RB[13]~output_o\;

ww_debug_RB(14) <= \debug_RB[14]~output_o\;

ww_debug_RB(15) <= \debug_RB[15]~output_o\;

ww_debug_Extension(0) <= \debug_Extension[0]~output_o\;

ww_debug_Extension(1) <= \debug_Extension[1]~output_o\;

ww_debug_Extension(2) <= \debug_Extension[2]~output_o\;

ww_debug_Extension(3) <= \debug_Extension[3]~output_o\;

ww_debug_Extension(4) <= \debug_Extension[4]~output_o\;

ww_debug_Extension(5) <= \debug_Extension[5]~output_o\;

ww_debug_Extension(6) <= \debug_Extension[6]~output_o\;

ww_debug_Extension(7) <= \debug_Extension[7]~output_o\;

ww_debug_Extension(8) <= \debug_Extension[8]~output_o\;

ww_debug_Extension(9) <= \debug_Extension[9]~output_o\;

ww_debug_Extension(10) <= \debug_Extension[10]~output_o\;

ww_debug_Extension(11) <= \debug_Extension[11]~output_o\;

ww_debug_Extension(12) <= \debug_Extension[12]~output_o\;

ww_debug_Extension(13) <= \debug_Extension[13]~output_o\;

ww_debug_Extension(14) <= \debug_Extension[14]~output_o\;

ww_debug_Extension(15) <= \debug_Extension[15]~output_o\;

ww_debug_RZ(0) <= \debug_RZ[0]~output_o\;

ww_debug_RZ(1) <= \debug_RZ[1]~output_o\;

ww_debug_RZ(2) <= \debug_RZ[2]~output_o\;

ww_debug_RZ(3) <= \debug_RZ[3]~output_o\;

ww_debug_RZ(4) <= \debug_RZ[4]~output_o\;

ww_debug_RZ(5) <= \debug_RZ[5]~output_o\;

ww_debug_RZ(6) <= \debug_RZ[6]~output_o\;

ww_debug_RZ(7) <= \debug_RZ[7]~output_o\;

ww_debug_RZ(8) <= \debug_RZ[8]~output_o\;

ww_debug_RZ(9) <= \debug_RZ[9]~output_o\;

ww_debug_RZ(10) <= \debug_RZ[10]~output_o\;

ww_debug_RZ(11) <= \debug_RZ[11]~output_o\;

ww_debug_RZ(12) <= \debug_RZ[12]~output_o\;

ww_debug_RZ(13) <= \debug_RZ[13]~output_o\;

ww_debug_RZ(14) <= \debug_RZ[14]~output_o\;

ww_debug_RZ(15) <= \debug_RZ[15]~output_o\;

ww_debug_RY(0) <= \debug_RY[0]~output_o\;

ww_debug_RY(1) <= \debug_RY[1]~output_o\;

ww_debug_RY(2) <= \debug_RY[2]~output_o\;

ww_debug_RY(3) <= \debug_RY[3]~output_o\;

ww_debug_RY(4) <= \debug_RY[4]~output_o\;

ww_debug_RY(5) <= \debug_RY[5]~output_o\;

ww_debug_RY(6) <= \debug_RY[6]~output_o\;

ww_debug_RY(7) <= \debug_RY[7]~output_o\;

ww_debug_RY(8) <= \debug_RY[8]~output_o\;

ww_debug_RY(9) <= \debug_RY[9]~output_o\;

ww_debug_RY(10) <= \debug_RY[10]~output_o\;

ww_debug_RY(11) <= \debug_RY[11]~output_o\;

ww_debug_RY(12) <= \debug_RY[12]~output_o\;

ww_debug_RY(13) <= \debug_RY[13]~output_o\;

ww_debug_RY(14) <= \debug_RY[14]~output_o\;

ww_debug_RY(15) <= \debug_RY[15]~output_o\;
END structure;


