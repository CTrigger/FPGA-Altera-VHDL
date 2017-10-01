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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "10/01/2017 14:34:59"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	Projeto_Base IS
    PORT (
	CLOCK_25 : IN STD.STANDARD.bit_vector(0 TO 1);
	CLOCK_27 : IN STD.STANDARD.bit_vector(0 TO 1);
	CLOCK_50 : IN std_logic;
	SRAM_ADDR : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_WE_N : OUT STD.STANDARD.bit;
	SRAM_OE_N : OUT STD.STANDARD.bit;
	SRAM_UB_N : OUT STD.STANDARD.bit;
	SRAM_LB_N : OUT STD.STANDARD.bit;
	SRAM_CE_N : OUT STD.STANDARD.bit;
	fl_addr : OUT std_logic_vector(21 DOWNTO 0);
	fl_dq : INOUT std_logic_vector(7 DOWNTO 0);
	fl_oe_n : OUT STD.STANDARD.bit;
	fl_rst_n : OUT STD.STANDARD.bit;
	fl_we_n : OUT STD.STANDARD.bit;
	HEX0 : OUT STD.STANDARD.bit_vector(0 TO 6);
	HEX1 : OUT STD.STANDARD.bit_vector(0 TO 6);
	HEX2 : OUT STD.STANDARD.bit_vector(0 TO 6);
	HEX3 : OUT STD.STANDARD.bit_vector(0 TO 6);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN STD.STANDARD.bit_vector(0 TO 3)
	);
END Projeto_Base;

-- Design Ports Information
-- fl_dq[0]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_dq[1]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_dq[2]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_dq[3]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_dq[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_dq[5]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_dq[6]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_dq[7]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[0]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[1]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[2]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[3]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[4]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[5]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[6]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[7]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[8]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[9]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[10]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[11]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[12]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[13]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[14]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[15]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_25[1]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_25[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_27[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_27[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRAM_ADDR[0]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[1]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[2]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[3]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[4]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[5]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[6]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[7]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[8]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[9]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[10]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[11]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[12]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[13]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[14]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[15]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[16]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[17]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[0]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[1]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[2]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[3]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[4]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[5]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[6]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[7]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[8]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[10]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[11]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[12]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[13]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[14]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[15]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[16]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[17]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[18]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[19]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[20]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_addr[21]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_oe_n	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_rst_n	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fl_we_n	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Projeto_Base IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_25 : std_logic_vector(0 TO 1);
SIGNAL ww_CLOCK_27 : std_logic_vector(0 TO 1);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_fl_addr : std_logic_vector(21 DOWNTO 0);
SIGNAL ww_fl_oe_n : std_logic;
SIGNAL ww_fl_rst_n : std_logic;
SIGNAL ww_fl_we_n : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 TO 3);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \button3~regout\ : std_logic;
SIGNAL \button3~0_combout\ : std_logic;
SIGNAL \SRAM_DQ[0]~0\ : std_logic;
SIGNAL \SRAM_DQ[1]~1\ : std_logic;
SIGNAL \SRAM_DQ[2]~2\ : std_logic;
SIGNAL \SRAM_DQ[3]~3\ : std_logic;
SIGNAL \SRAM_DQ[4]~4\ : std_logic;
SIGNAL \SRAM_DQ[5]~5\ : std_logic;
SIGNAL \SRAM_DQ[6]~6\ : std_logic;
SIGNAL \SRAM_DQ[7]~7\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_DQ[0]~reg0feeder_combout\ : std_logic;
SIGNAL \button1~0_combout\ : std_logic;
SIGNAL \button1~regout\ : std_logic;
SIGNAL \SRAM_DQ[15]~32_combout\ : std_logic;
SIGNAL \SRAM_DQ[0]~reg0_regout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \SRAM_DQ[0]~33_combout\ : std_logic;
SIGNAL \SRAM_DQ[0]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[1]~reg0_regout\ : std_logic;
SIGNAL \SRAM_DQ[1]~34_combout\ : std_logic;
SIGNAL \SRAM_DQ[1]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[2]~reg0feeder_combout\ : std_logic;
SIGNAL \SRAM_DQ[2]~reg0_regout\ : std_logic;
SIGNAL \SRAM_DQ[2]~35_combout\ : std_logic;
SIGNAL \SRAM_DQ[2]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[3]~reg0feeder_combout\ : std_logic;
SIGNAL \SRAM_DQ[3]~reg0_regout\ : std_logic;
SIGNAL \SRAM_DQ[3]~36_combout\ : std_logic;
SIGNAL \SRAM_DQ[3]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[4]~reg0feeder_combout\ : std_logic;
SIGNAL \SRAM_DQ[4]~reg0_regout\ : std_logic;
SIGNAL \SRAM_DQ[4]~37_combout\ : std_logic;
SIGNAL \SRAM_DQ[4]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[5]~reg0_regout\ : std_logic;
SIGNAL \SRAM_DQ[5]~38_combout\ : std_logic;
SIGNAL \SRAM_DQ[5]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[6]~reg0_regout\ : std_logic;
SIGNAL \SRAM_DQ[6]~39_combout\ : std_logic;
SIGNAL \SRAM_DQ[6]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[7]~reg0feeder_combout\ : std_logic;
SIGNAL \SRAM_DQ[7]~reg0_regout\ : std_logic;
SIGNAL \SRAM_DQ[7]~40_combout\ : std_logic;
SIGNAL \SRAM_DQ[7]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[8]~reg0_regout\ : std_logic;
SIGNAL \SRAM_DQ[8]~41_combout\ : std_logic;
SIGNAL \SRAM_DQ[8]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[9]~reg0feeder_combout\ : std_logic;
SIGNAL \SRAM_DQ[9]~reg0_regout\ : std_logic;
SIGNAL \SRAM_DQ[9]~42_combout\ : std_logic;
SIGNAL \SRAM_DQ[9]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[10]~43_combout\ : std_logic;
SIGNAL \SRAM_DQ[10]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[11]~44_combout\ : std_logic;
SIGNAL \SRAM_DQ[11]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[12]~45_combout\ : std_logic;
SIGNAL \SRAM_DQ[12]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[13]~46_combout\ : std_logic;
SIGNAL \SRAM_DQ[13]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[14]~47_combout\ : std_logic;
SIGNAL \SRAM_DQ[14]~en_regout\ : std_logic;
SIGNAL \SRAM_DQ[15]~48_combout\ : std_logic;
SIGNAL \SRAM_DQ[15]~en_regout\ : std_logic;
SIGNAL \address21Bit[0]~18_combout\ : std_logic;
SIGNAL \button2~0_combout\ : std_logic;
SIGNAL \button2~regout\ : std_logic;
SIGNAL \address21Bit[0]~20_combout\ : std_logic;
SIGNAL \address21Bit[0]~21_combout\ : std_logic;
SIGNAL \address21Bit[0]~19\ : std_logic;
SIGNAL \address21Bit[1]~22_combout\ : std_logic;
SIGNAL \address21Bit[1]~23\ : std_logic;
SIGNAL \address21Bit[2]~24_combout\ : std_logic;
SIGNAL \address21Bit[2]~25\ : std_logic;
SIGNAL \address21Bit[3]~26_combout\ : std_logic;
SIGNAL \address21Bit[3]~27\ : std_logic;
SIGNAL \address21Bit[4]~28_combout\ : std_logic;
SIGNAL \address21Bit[4]~29\ : std_logic;
SIGNAL \address21Bit[5]~30_combout\ : std_logic;
SIGNAL \address21Bit[5]~31\ : std_logic;
SIGNAL \address21Bit[6]~32_combout\ : std_logic;
SIGNAL \address21Bit[6]~33\ : std_logic;
SIGNAL \address21Bit[7]~34_combout\ : std_logic;
SIGNAL \address21Bit[7]~35\ : std_logic;
SIGNAL \address21Bit[8]~36_combout\ : std_logic;
SIGNAL \address21Bit[8]~37\ : std_logic;
SIGNAL \address21Bit[9]~38_combout\ : std_logic;
SIGNAL \address21Bit[9]~39\ : std_logic;
SIGNAL \address21Bit[10]~40_combout\ : std_logic;
SIGNAL \address21Bit[10]~41\ : std_logic;
SIGNAL \address21Bit[11]~42_combout\ : std_logic;
SIGNAL \address21Bit[11]~43\ : std_logic;
SIGNAL \address21Bit[12]~44_combout\ : std_logic;
SIGNAL \address21Bit[12]~45\ : std_logic;
SIGNAL \address21Bit[13]~46_combout\ : std_logic;
SIGNAL \address21Bit[13]~47\ : std_logic;
SIGNAL \address21Bit[14]~48_combout\ : std_logic;
SIGNAL \address21Bit[14]~49\ : std_logic;
SIGNAL \address21Bit[15]~50_combout\ : std_logic;
SIGNAL \address21Bit[15]~51\ : std_logic;
SIGNAL \address21Bit[16]~52_combout\ : std_logic;
SIGNAL \address21Bit[16]~53\ : std_logic;
SIGNAL \address21Bit[17]~54_combout\ : std_logic;
SIGNAL \SRAM_WE_N~reg0feeder_combout\ : std_logic;
SIGNAL \SRAM_WE_N~0_combout\ : std_logic;
SIGNAL \SRAM_WE_N~reg0_regout\ : std_logic;
SIGNAL \SRAM_OE_N~reg0feeder_combout\ : std_logic;
SIGNAL \SRAM_OE_N~reg0_regout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0feeder_combout\ : std_logic;
SIGNAL \button0~0_combout\ : std_logic;
SIGNAL \button0~regout\ : std_logic;
SIGNAL \LEDG[0]~0_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0_regout\ : std_logic;
SIGNAL \LEDG[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[1]~reg0_regout\ : std_logic;
SIGNAL \LEDG[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[2]~reg0_regout\ : std_logic;
SIGNAL \LEDG[3]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[3]~reg0_regout\ : std_logic;
SIGNAL \LEDG[4]~reg0_regout\ : std_logic;
SIGNAL \LEDG[5]~reg0_regout\ : std_logic;
SIGNAL \LEDG[6]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[6]~reg0_regout\ : std_logic;
SIGNAL \LEDG[7]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[7]~reg0_regout\ : std_logic;
SIGNAL address21Bit : std_logic_vector(21 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 TO 3);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SRAM_DQ[15]~en_regout\ : std_logic;
SIGNAL \ALT_INV_SRAM_DQ[14]~en_regout\ : std_logic;
SIGNAL \ALT_INV_SRAM_DQ[13]~en_regout\ : std_logic;
SIGNAL \ALT_INV_SRAM_DQ[12]~en_regout\ : std_logic;
SIGNAL \ALT_INV_SRAM_DQ[11]~en_regout\ : std_logic;
SIGNAL \ALT_INV_SRAM_DQ[10]~en_regout\ : std_logic;

BEGIN

ww_CLOCK_25 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(CLOCK_25);
ww_CLOCK_27 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(CLOCK_27);
ww_CLOCK_50 <= CLOCK_50;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_WE_N <= IEEE.STD_LOGIC_1164.TO_BIT(ww_SRAM_WE_N);
SRAM_OE_N <= IEEE.STD_LOGIC_1164.TO_BIT(ww_SRAM_OE_N);
SRAM_UB_N <= IEEE.STD_LOGIC_1164.TO_BIT(ww_SRAM_UB_N);
SRAM_LB_N <= IEEE.STD_LOGIC_1164.TO_BIT(ww_SRAM_LB_N);
SRAM_CE_N <= IEEE.STD_LOGIC_1164.TO_BIT(ww_SRAM_CE_N);
fl_addr <= ww_fl_addr;
fl_oe_n <= IEEE.STD_LOGIC_1164.TO_BIT(ww_fl_oe_n);
fl_rst_n <= IEEE.STD_LOGIC_1164.TO_BIT(ww_fl_rst_n);
fl_we_n <= IEEE.STD_LOGIC_1164.TO_BIT(ww_fl_we_n);
HEX0 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_HEX0);
HEX1 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_HEX1);
HEX2 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_HEX2);
HEX3 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_HEX3);
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_SW <= SW;
ww_KEY <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(KEY);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_CLOCK_50~clkctrl_outclk\ <= NOT \CLOCK_50~clkctrl_outclk\;
\ALT_INV_SRAM_DQ[15]~en_regout\ <= NOT \SRAM_DQ[15]~en_regout\;
\ALT_INV_SRAM_DQ[14]~en_regout\ <= NOT \SRAM_DQ[14]~en_regout\;
\ALT_INV_SRAM_DQ[13]~en_regout\ <= NOT \SRAM_DQ[13]~en_regout\;
\ALT_INV_SRAM_DQ[12]~en_regout\ <= NOT \SRAM_DQ[12]~en_regout\;
\ALT_INV_SRAM_DQ[11]~en_regout\ <= NOT \SRAM_DQ[11]~en_regout\;
\ALT_INV_SRAM_DQ[10]~en_regout\ <= NOT \SRAM_DQ[10]~en_regout\;

-- Location: LCFF_X4_Y2_N7
button3 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \button3~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \button3~regout\);

-- Location: LCCOMB_X4_Y2_N6
\button3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \button3~0_combout\ = !\KEY~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(3),
	combout => \button3~0_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[0]~reg0_regout\,
	oe => \SRAM_DQ[0]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(0),
	combout => \SRAM_DQ[0]~0\);

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[1]~reg0_regout\,
	oe => \SRAM_DQ[1]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(1),
	combout => \SRAM_DQ[1]~1\);

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[2]~reg0_regout\,
	oe => \SRAM_DQ[2]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(2),
	combout => \SRAM_DQ[2]~2\);

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[3]~reg0_regout\,
	oe => \SRAM_DQ[3]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(3),
	combout => \SRAM_DQ[3]~3\);

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[4]~reg0_regout\,
	oe => \SRAM_DQ[4]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(4),
	combout => \SRAM_DQ[4]~4\);

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[5]~reg0_regout\,
	oe => \SRAM_DQ[5]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(5),
	combout => \SRAM_DQ[5]~5\);

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[6]~reg0_regout\,
	oe => \SRAM_DQ[6]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(6),
	combout => \SRAM_DQ[6]~6\);

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[7]~reg0_regout\,
	oe => \SRAM_DQ[7]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(7),
	combout => \SRAM_DQ[7]~7\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X13_Y1_N22
\SRAM_DQ[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[0]~reg0feeder_combout\ = \SW~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(0),
	combout => \SRAM_DQ[0]~reg0feeder_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCCOMB_X14_Y1_N28
\button1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \button1~0_combout\ = (\SW~combout\(9) & (((\button1~regout\)))) # (!\SW~combout\(9) & ((\SW~combout\(8) & ((\button1~regout\))) # (!\SW~combout\(8) & (!\KEY~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \SW~combout\(9),
	datac => \button1~regout\,
	datad => \SW~combout\(8),
	combout => \button1~0_combout\);

-- Location: LCFF_X14_Y1_N29
button1 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \button1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \button1~regout\);

-- Location: LCCOMB_X14_Y1_N30
\SRAM_DQ[15]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[15]~32_combout\ = (\SW~combout\(8) & (\SW~combout\(9))) # (!\SW~combout\(8) & (!\SW~combout\(9) & (!\KEY~combout\(1) & !\button1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(9),
	datac => \KEY~combout\(1),
	datad => \button1~regout\,
	combout => \SRAM_DQ[15]~32_combout\);

-- Location: LCFF_X13_Y1_N23
\SRAM_DQ[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[0]~reg0feeder_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[0]~reg0_regout\);

-- Location: LCCOMB_X15_Y1_N6
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\SW~combout\(8) & \SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(8),
	datad => \SW~combout\(9),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X13_Y1_N8
\SRAM_DQ[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[0]~33_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[0]~33_combout\);

-- Location: LCFF_X13_Y1_N9
\SRAM_DQ[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[0]~33_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[0]~en_regout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCFF_X13_Y1_N3
\SRAM_DQ[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	sload => VCC,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[1]~reg0_regout\);

-- Location: LCCOMB_X13_Y1_N12
\SRAM_DQ[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[1]~34_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[1]~34_combout\);

-- Location: LCFF_X13_Y1_N13
\SRAM_DQ[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[1]~34_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[1]~en_regout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X15_Y1_N2
\SRAM_DQ[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[2]~reg0feeder_combout\ = \SW~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(2),
	combout => \SRAM_DQ[2]~reg0feeder_combout\);

-- Location: LCFF_X15_Y1_N3
\SRAM_DQ[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[2]~reg0feeder_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[2]~reg0_regout\);

-- Location: LCCOMB_X13_Y1_N6
\SRAM_DQ[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[2]~35_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[2]~35_combout\);

-- Location: LCFF_X13_Y1_N7
\SRAM_DQ[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[2]~35_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[2]~en_regout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCCOMB_X15_Y1_N4
\SRAM_DQ[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[3]~reg0feeder_combout\ = \SW~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(3),
	combout => \SRAM_DQ[3]~reg0feeder_combout\);

-- Location: LCFF_X15_Y1_N5
\SRAM_DQ[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[3]~reg0feeder_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[3]~reg0_regout\);

-- Location: LCCOMB_X13_Y1_N28
\SRAM_DQ[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[3]~36_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[3]~36_combout\);

-- Location: LCFF_X13_Y1_N29
\SRAM_DQ[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[3]~36_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[3]~en_regout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCCOMB_X15_Y1_N30
\SRAM_DQ[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[4]~reg0feeder_combout\ = \SW~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(4),
	combout => \SRAM_DQ[4]~reg0feeder_combout\);

-- Location: LCFF_X15_Y1_N31
\SRAM_DQ[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[4]~reg0feeder_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[4]~reg0_regout\);

-- Location: LCCOMB_X15_Y1_N0
\SRAM_DQ[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[4]~37_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[4]~37_combout\);

-- Location: LCFF_X15_Y1_N1
\SRAM_DQ[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[4]~37_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[4]~en_regout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCFF_X15_Y1_N19
\SRAM_DQ[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	sload => VCC,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[5]~reg0_regout\);

-- Location: LCCOMB_X15_Y1_N16
\SRAM_DQ[5]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[5]~38_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[5]~38_combout\);

-- Location: LCFF_X15_Y1_N17
\SRAM_DQ[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[5]~38_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[5]~en_regout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCFF_X15_Y1_N23
\SRAM_DQ[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	sload => VCC,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[6]~reg0_regout\);

-- Location: LCCOMB_X15_Y1_N20
\SRAM_DQ[6]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[6]~39_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[6]~39_combout\);

-- Location: LCFF_X15_Y1_N21
\SRAM_DQ[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[6]~39_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[6]~en_regout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCCOMB_X15_Y1_N10
\SRAM_DQ[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[7]~reg0feeder_combout\ = \SW~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(7),
	combout => \SRAM_DQ[7]~reg0feeder_combout\);

-- Location: LCFF_X15_Y1_N11
\SRAM_DQ[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[7]~reg0feeder_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[7]~reg0_regout\);

-- Location: LCCOMB_X15_Y1_N8
\SRAM_DQ[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[7]~40_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[7]~40_combout\);

-- Location: LCFF_X15_Y1_N9
\SRAM_DQ[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[7]~40_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[7]~en_regout\);

-- Location: LCFF_X15_Y1_N27
\SRAM_DQ[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(8),
	sload => VCC,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[8]~reg0_regout\);

-- Location: LCCOMB_X13_Y1_N10
\SRAM_DQ[8]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[8]~41_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[8]~41_combout\);

-- Location: LCFF_X13_Y1_N11
\SRAM_DQ[8]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[8]~41_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[8]~en_regout\);

-- Location: LCCOMB_X15_Y1_N28
\SRAM_DQ[9]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[9]~reg0feeder_combout\ = \SW~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(9),
	combout => \SRAM_DQ[9]~reg0feeder_combout\);

-- Location: LCFF_X15_Y1_N29
\SRAM_DQ[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[9]~reg0feeder_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[9]~reg0_regout\);

-- Location: LCCOMB_X13_Y1_N20
\SRAM_DQ[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[9]~42_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[9]~42_combout\);

-- Location: LCFF_X13_Y1_N21
\SRAM_DQ[9]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[9]~42_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[9]~en_regout\);

-- Location: LCCOMB_X13_Y1_N26
\SRAM_DQ[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[10]~43_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[10]~43_combout\);

-- Location: LCFF_X13_Y1_N27
\SRAM_DQ[10]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[10]~43_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[10]~en_regout\);

-- Location: LCCOMB_X13_Y1_N24
\SRAM_DQ[11]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[11]~44_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[11]~44_combout\);

-- Location: LCFF_X13_Y1_N25
\SRAM_DQ[11]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[11]~44_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[11]~en_regout\);

-- Location: LCCOMB_X13_Y1_N18
\SRAM_DQ[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[12]~45_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[12]~45_combout\);

-- Location: LCFF_X13_Y1_N19
\SRAM_DQ[12]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[12]~45_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[12]~en_regout\);

-- Location: LCCOMB_X13_Y1_N16
\SRAM_DQ[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[13]~46_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[13]~46_combout\);

-- Location: LCFF_X13_Y1_N17
\SRAM_DQ[13]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[13]~46_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[13]~en_regout\);

-- Location: LCCOMB_X13_Y1_N30
\SRAM_DQ[14]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[14]~47_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[14]~47_combout\);

-- Location: LCFF_X13_Y1_N31
\SRAM_DQ[14]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[14]~47_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[14]~en_regout\);

-- Location: LCCOMB_X13_Y1_N0
\SRAM_DQ[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_DQ[15]~48_combout\ = !\process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_DQ[15]~48_combout\);

-- Location: LCFF_X13_Y1_N1
\SRAM_DQ[15]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_DQ[15]~48_combout\,
	ena => \SRAM_DQ[15]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_DQ[15]~en_regout\);

-- Location: LCCOMB_X4_Y2_N14
\address21Bit[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[0]~18_combout\ = (\button3~regout\ & (address21Bit(0) & VCC)) # (!\button3~regout\ & (address21Bit(0) $ (VCC)))
-- \address21Bit[0]~19\ = CARRY((!\button3~regout\ & address21Bit(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button3~regout\,
	datab => address21Bit(0),
	datad => VCC,
	combout => \address21Bit[0]~18_combout\,
	cout => \address21Bit[0]~19\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCCOMB_X4_Y2_N12
\button2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \button2~0_combout\ = !\KEY~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(2),
	combout => \button2~0_combout\);

-- Location: LCFF_X4_Y2_N13
button2 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \button2~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \button2~regout\);

-- Location: LCCOMB_X4_Y2_N10
\address21Bit[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[0]~20_combout\ = (!\KEY~combout\(2) & !\button2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(2),
	datad => \button2~regout\,
	combout => \address21Bit[0]~20_combout\);

-- Location: LCCOMB_X4_Y2_N8
\address21Bit[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[0]~21_combout\ = (\process_0~0_combout\ & (((!\KEY~combout\(2) & !\button2~regout\)) # (!\KEY~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(3),
	datab => \process_0~0_combout\,
	datac => \KEY~combout\(2),
	datad => \button2~regout\,
	combout => \address21Bit[0]~21_combout\);

-- Location: LCFF_X4_Y2_N15
\address21Bit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[0]~18_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(0));

-- Location: LCCOMB_X4_Y2_N16
\address21Bit[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[1]~22_combout\ = (address21Bit(1) & (!\address21Bit[0]~19\)) # (!address21Bit(1) & ((\address21Bit[0]~19\) # (GND)))
-- \address21Bit[1]~23\ = CARRY((!\address21Bit[0]~19\) # (!address21Bit(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(1),
	datad => VCC,
	cin => \address21Bit[0]~19\,
	combout => \address21Bit[1]~22_combout\,
	cout => \address21Bit[1]~23\);

-- Location: LCFF_X4_Y2_N17
\address21Bit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[1]~22_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(1));

-- Location: LCCOMB_X4_Y2_N18
\address21Bit[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[2]~24_combout\ = (address21Bit(2) & (\address21Bit[1]~23\ $ (GND))) # (!address21Bit(2) & (!\address21Bit[1]~23\ & VCC))
-- \address21Bit[2]~25\ = CARRY((address21Bit(2) & !\address21Bit[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address21Bit(2),
	datad => VCC,
	cin => \address21Bit[1]~23\,
	combout => \address21Bit[2]~24_combout\,
	cout => \address21Bit[2]~25\);

-- Location: LCFF_X4_Y2_N19
\address21Bit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[2]~24_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(2));

-- Location: LCCOMB_X4_Y2_N20
\address21Bit[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[3]~26_combout\ = (address21Bit(3) & (!\address21Bit[2]~25\)) # (!address21Bit(3) & ((\address21Bit[2]~25\) # (GND)))
-- \address21Bit[3]~27\ = CARRY((!\address21Bit[2]~25\) # (!address21Bit(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(3),
	datad => VCC,
	cin => \address21Bit[2]~25\,
	combout => \address21Bit[3]~26_combout\,
	cout => \address21Bit[3]~27\);

-- Location: LCFF_X4_Y2_N21
\address21Bit[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[3]~26_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(3));

-- Location: LCCOMB_X4_Y2_N22
\address21Bit[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[4]~28_combout\ = (address21Bit(4) & (\address21Bit[3]~27\ $ (GND))) # (!address21Bit(4) & (!\address21Bit[3]~27\ & VCC))
-- \address21Bit[4]~29\ = CARRY((address21Bit(4) & !\address21Bit[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address21Bit(4),
	datad => VCC,
	cin => \address21Bit[3]~27\,
	combout => \address21Bit[4]~28_combout\,
	cout => \address21Bit[4]~29\);

-- Location: LCFF_X4_Y2_N23
\address21Bit[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[4]~28_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(4));

-- Location: LCCOMB_X4_Y2_N24
\address21Bit[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[5]~30_combout\ = (address21Bit(5) & (!\address21Bit[4]~29\)) # (!address21Bit(5) & ((\address21Bit[4]~29\) # (GND)))
-- \address21Bit[5]~31\ = CARRY((!\address21Bit[4]~29\) # (!address21Bit(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(5),
	datad => VCC,
	cin => \address21Bit[4]~29\,
	combout => \address21Bit[5]~30_combout\,
	cout => \address21Bit[5]~31\);

-- Location: LCFF_X4_Y2_N25
\address21Bit[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[5]~30_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(5));

-- Location: LCCOMB_X4_Y2_N26
\address21Bit[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[6]~32_combout\ = (address21Bit(6) & (\address21Bit[5]~31\ $ (GND))) # (!address21Bit(6) & (!\address21Bit[5]~31\ & VCC))
-- \address21Bit[6]~33\ = CARRY((address21Bit(6) & !\address21Bit[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address21Bit(6),
	datad => VCC,
	cin => \address21Bit[5]~31\,
	combout => \address21Bit[6]~32_combout\,
	cout => \address21Bit[6]~33\);

-- Location: LCFF_X4_Y2_N27
\address21Bit[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[6]~32_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(6));

-- Location: LCCOMB_X4_Y2_N28
\address21Bit[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[7]~34_combout\ = (address21Bit(7) & (!\address21Bit[6]~33\)) # (!address21Bit(7) & ((\address21Bit[6]~33\) # (GND)))
-- \address21Bit[7]~35\ = CARRY((!\address21Bit[6]~33\) # (!address21Bit(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address21Bit(7),
	datad => VCC,
	cin => \address21Bit[6]~33\,
	combout => \address21Bit[7]~34_combout\,
	cout => \address21Bit[7]~35\);

-- Location: LCFF_X4_Y2_N29
\address21Bit[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[7]~34_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(7));

-- Location: LCCOMB_X4_Y2_N30
\address21Bit[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[8]~36_combout\ = (address21Bit(8) & (\address21Bit[7]~35\ $ (GND))) # (!address21Bit(8) & (!\address21Bit[7]~35\ & VCC))
-- \address21Bit[8]~37\ = CARRY((address21Bit(8) & !\address21Bit[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address21Bit(8),
	datad => VCC,
	cin => \address21Bit[7]~35\,
	combout => \address21Bit[8]~36_combout\,
	cout => \address21Bit[8]~37\);

-- Location: LCFF_X4_Y2_N31
\address21Bit[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[8]~36_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(8));

-- Location: LCCOMB_X4_Y1_N0
\address21Bit[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[9]~38_combout\ = (address21Bit(9) & (!\address21Bit[8]~37\)) # (!address21Bit(9) & ((\address21Bit[8]~37\) # (GND)))
-- \address21Bit[9]~39\ = CARRY((!\address21Bit[8]~37\) # (!address21Bit(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address21Bit(9),
	datad => VCC,
	cin => \address21Bit[8]~37\,
	combout => \address21Bit[9]~38_combout\,
	cout => \address21Bit[9]~39\);

-- Location: LCFF_X4_Y1_N1
\address21Bit[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[9]~38_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(9));

-- Location: LCCOMB_X4_Y1_N2
\address21Bit[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[10]~40_combout\ = (address21Bit(10) & (\address21Bit[9]~39\ $ (GND))) # (!address21Bit(10) & (!\address21Bit[9]~39\ & VCC))
-- \address21Bit[10]~41\ = CARRY((address21Bit(10) & !\address21Bit[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address21Bit(10),
	datad => VCC,
	cin => \address21Bit[9]~39\,
	combout => \address21Bit[10]~40_combout\,
	cout => \address21Bit[10]~41\);

-- Location: LCFF_X4_Y1_N3
\address21Bit[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[10]~40_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(10));

-- Location: LCCOMB_X4_Y1_N4
\address21Bit[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[11]~42_combout\ = (address21Bit(11) & (!\address21Bit[10]~41\)) # (!address21Bit(11) & ((\address21Bit[10]~41\) # (GND)))
-- \address21Bit[11]~43\ = CARRY((!\address21Bit[10]~41\) # (!address21Bit(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address21Bit(11),
	datad => VCC,
	cin => \address21Bit[10]~41\,
	combout => \address21Bit[11]~42_combout\,
	cout => \address21Bit[11]~43\);

-- Location: LCFF_X4_Y1_N5
\address21Bit[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[11]~42_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(11));

-- Location: LCCOMB_X4_Y1_N6
\address21Bit[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[12]~44_combout\ = (address21Bit(12) & (\address21Bit[11]~43\ $ (GND))) # (!address21Bit(12) & (!\address21Bit[11]~43\ & VCC))
-- \address21Bit[12]~45\ = CARRY((address21Bit(12) & !\address21Bit[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(12),
	datad => VCC,
	cin => \address21Bit[11]~43\,
	combout => \address21Bit[12]~44_combout\,
	cout => \address21Bit[12]~45\);

-- Location: LCFF_X4_Y1_N7
\address21Bit[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[12]~44_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(12));

-- Location: LCCOMB_X4_Y1_N8
\address21Bit[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[13]~46_combout\ = (address21Bit(13) & (!\address21Bit[12]~45\)) # (!address21Bit(13) & ((\address21Bit[12]~45\) # (GND)))
-- \address21Bit[13]~47\ = CARRY((!\address21Bit[12]~45\) # (!address21Bit(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address21Bit(13),
	datad => VCC,
	cin => \address21Bit[12]~45\,
	combout => \address21Bit[13]~46_combout\,
	cout => \address21Bit[13]~47\);

-- Location: LCFF_X4_Y1_N9
\address21Bit[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[13]~46_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(13));

-- Location: LCCOMB_X4_Y1_N10
\address21Bit[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[14]~48_combout\ = (address21Bit(14) & (\address21Bit[13]~47\ $ (GND))) # (!address21Bit(14) & (!\address21Bit[13]~47\ & VCC))
-- \address21Bit[14]~49\ = CARRY((address21Bit(14) & !\address21Bit[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(14),
	datad => VCC,
	cin => \address21Bit[13]~47\,
	combout => \address21Bit[14]~48_combout\,
	cout => \address21Bit[14]~49\);

-- Location: LCFF_X4_Y1_N11
\address21Bit[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[14]~48_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(14));

-- Location: LCCOMB_X4_Y1_N12
\address21Bit[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[15]~50_combout\ = (address21Bit(15) & (!\address21Bit[14]~49\)) # (!address21Bit(15) & ((\address21Bit[14]~49\) # (GND)))
-- \address21Bit[15]~51\ = CARRY((!\address21Bit[14]~49\) # (!address21Bit(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(15),
	datad => VCC,
	cin => \address21Bit[14]~49\,
	combout => \address21Bit[15]~50_combout\,
	cout => \address21Bit[15]~51\);

-- Location: LCFF_X4_Y1_N13
\address21Bit[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[15]~50_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(15));

-- Location: LCCOMB_X4_Y1_N14
\address21Bit[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[16]~52_combout\ = (address21Bit(16) & (\address21Bit[15]~51\ $ (GND))) # (!address21Bit(16) & (!\address21Bit[15]~51\ & VCC))
-- \address21Bit[16]~53\ = CARRY((address21Bit(16) & !\address21Bit[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address21Bit(16),
	datad => VCC,
	cin => \address21Bit[15]~51\,
	combout => \address21Bit[16]~52_combout\,
	cout => \address21Bit[16]~53\);

-- Location: LCFF_X4_Y1_N15
\address21Bit[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[16]~52_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(16));

-- Location: LCCOMB_X4_Y1_N16
\address21Bit[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \address21Bit[17]~54_combout\ = address21Bit(17) $ (\address21Bit[16]~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(17),
	cin => \address21Bit[16]~53\,
	combout => \address21Bit[17]~54_combout\);

-- Location: LCFF_X4_Y1_N17
\address21Bit[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \address21Bit[17]~54_combout\,
	sclr => \address21Bit[0]~20_combout\,
	ena => \address21Bit[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address21Bit(17));

-- Location: LCCOMB_X15_Y1_N12
\SRAM_WE_N~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_WE_N~reg0feeder_combout\ = \SW~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(9),
	combout => \SRAM_WE_N~reg0feeder_combout\);

-- Location: LCCOMB_X15_Y1_N24
\SRAM_WE_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_WE_N~0_combout\ = (\SW~combout\(9)) # (!\SW~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(8),
	datad => \SW~combout\(9),
	combout => \SRAM_WE_N~0_combout\);

-- Location: LCFF_X15_Y1_N13
\SRAM_WE_N~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_WE_N~reg0feeder_combout\,
	ena => \SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_WE_N~reg0_regout\);

-- Location: LCCOMB_X13_Y1_N4
\SRAM_OE_N~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_OE_N~reg0feeder_combout\ = \process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \SRAM_OE_N~reg0feeder_combout\);

-- Location: LCFF_X13_Y1_N5
\SRAM_OE_N~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \SRAM_OE_N~reg0feeder_combout\,
	ena => \SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_OE_N~reg0_regout\);

-- Location: LCCOMB_X4_Y2_N4
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (address21Bit(0) & ((address21Bit(3)) # (address21Bit(1) $ (address21Bit(2))))) # (!address21Bit(0) & ((address21Bit(1)) # (address21Bit(3) $ (address21Bit(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(0),
	datab => address21Bit(3),
	datac => address21Bit(1),
	datad => address21Bit(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X4_Y1_N22
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (address21Bit(1) & (!address21Bit(2) & ((!address21Bit(3))))) # (!address21Bit(1) & (address21Bit(0) & (address21Bit(2) $ (!address21Bit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(2),
	datab => address21Bit(0),
	datac => address21Bit(1),
	datad => address21Bit(3),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X4_Y1_N24
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (address21Bit(1) & (((address21Bit(0) & !address21Bit(3))))) # (!address21Bit(1) & ((address21Bit(2) & ((!address21Bit(3)))) # (!address21Bit(2) & (address21Bit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(2),
	datab => address21Bit(0),
	datac => address21Bit(1),
	datad => address21Bit(3),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X4_Y1_N26
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (address21Bit(1) & ((address21Bit(2) & (address21Bit(0))) # (!address21Bit(2) & (!address21Bit(0) & address21Bit(3))))) # (!address21Bit(1) & (!address21Bit(3) & (address21Bit(2) $ (address21Bit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(2),
	datab => address21Bit(0),
	datac => address21Bit(1),
	datad => address21Bit(3),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X4_Y1_N28
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (address21Bit(2) & (address21Bit(3) & ((address21Bit(1)) # (!address21Bit(0))))) # (!address21Bit(2) & (!address21Bit(0) & (address21Bit(1) & !address21Bit(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(2),
	datab => address21Bit(0),
	datac => address21Bit(1),
	datad => address21Bit(3),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X4_Y2_N2
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (address21Bit(3) & ((address21Bit(0) & (address21Bit(1))) # (!address21Bit(0) & ((address21Bit(2)))))) # (!address21Bit(3) & (address21Bit(2) & (address21Bit(0) $ (address21Bit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(0),
	datab => address21Bit(3),
	datac => address21Bit(1),
	datad => address21Bit(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X4_Y2_N0
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (address21Bit(3) & (address21Bit(0) & (address21Bit(1) $ (address21Bit(2))))) # (!address21Bit(3) & (!address21Bit(1) & (address21Bit(0) $ (address21Bit(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(0),
	datab => address21Bit(3),
	datac => address21Bit(1),
	datad => address21Bit(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (address21Bit(4) & ((address21Bit(7)) # (address21Bit(6) $ (address21Bit(5))))) # (!address21Bit(4) & ((address21Bit(5)) # (address21Bit(6) $ (address21Bit(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(6),
	datab => address21Bit(4),
	datac => address21Bit(5),
	datad => address21Bit(7),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y21_N18
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (address21Bit(5) & (!address21Bit(6) & ((!address21Bit(7))))) # (!address21Bit(5) & (address21Bit(4) & (address21Bit(6) $ (!address21Bit(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(6),
	datab => address21Bit(4),
	datac => address21Bit(5),
	datad => address21Bit(7),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (address21Bit(5) & (((address21Bit(4) & !address21Bit(7))))) # (!address21Bit(5) & ((address21Bit(6) & ((!address21Bit(7)))) # (!address21Bit(6) & (address21Bit(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(6),
	datab => address21Bit(4),
	datac => address21Bit(5),
	datad => address21Bit(7),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (address21Bit(5) & ((address21Bit(6) & (address21Bit(4))) # (!address21Bit(6) & (!address21Bit(4) & address21Bit(7))))) # (!address21Bit(5) & (!address21Bit(7) & (address21Bit(6) $ (address21Bit(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(6),
	datab => address21Bit(4),
	datac => address21Bit(5),
	datad => address21Bit(7),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y21_N16
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (address21Bit(6) & (address21Bit(7) & ((address21Bit(5)) # (!address21Bit(4))))) # (!address21Bit(6) & (!address21Bit(4) & (address21Bit(5) & !address21Bit(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(6),
	datab => address21Bit(4),
	datac => address21Bit(5),
	datad => address21Bit(7),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (address21Bit(5) & ((address21Bit(4) & ((address21Bit(7)))) # (!address21Bit(4) & (address21Bit(6))))) # (!address21Bit(5) & (address21Bit(6) & (address21Bit(4) $ (address21Bit(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(6),
	datab => address21Bit(4),
	datac => address21Bit(5),
	datad => address21Bit(7),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N8
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (address21Bit(6) & (!address21Bit(5) & (address21Bit(4) $ (!address21Bit(7))))) # (!address21Bit(6) & (address21Bit(4) & (address21Bit(5) $ (!address21Bit(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address21Bit(6),
	datab => address21Bit(4),
	datac => address21Bit(5),
	datad => address21Bit(7),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X14_Y1_N20
\LEDG[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[0]~reg0feeder_combout\ = \SRAM_DQ[0]~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_DQ[0]~0\,
	combout => \LEDG[0]~reg0feeder_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X14_Y1_N12
\button0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \button0~0_combout\ = (\SW~combout\(8) & (((\button0~regout\)))) # (!\SW~combout\(8) & ((\SW~combout\(9) & ((!\KEY~combout\(0)))) # (!\SW~combout\(9) & (\button0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(9),
	datac => \button0~regout\,
	datad => \KEY~combout\(0),
	combout => \button0~0_combout\);

-- Location: LCFF_X14_Y1_N13
button0 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \button0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \button0~regout\);

-- Location: LCCOMB_X14_Y1_N10
\LEDG[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[0]~0_combout\ = (!\SW~combout\(8) & (!\KEY~combout\(0) & (\SW~combout\(9) & !\button0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \KEY~combout\(0),
	datac => \SW~combout\(9),
	datad => \button0~regout\,
	combout => \LEDG[0]~0_combout\);

-- Location: LCFF_X14_Y1_N21
\LEDG[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \LEDG[0]~reg0feeder_combout\,
	ena => \LEDG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[0]~reg0_regout\);

-- Location: LCCOMB_X14_Y1_N22
\LEDG[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[1]~reg0feeder_combout\ = \SRAM_DQ[1]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_DQ[1]~1\,
	combout => \LEDG[1]~reg0feeder_combout\);

-- Location: LCFF_X14_Y1_N23
\LEDG[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \LEDG[1]~reg0feeder_combout\,
	ena => \LEDG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[1]~reg0_regout\);

-- Location: LCCOMB_X14_Y1_N16
\LEDG[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[2]~reg0feeder_combout\ = \SRAM_DQ[2]~2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_DQ[2]~2\,
	combout => \LEDG[2]~reg0feeder_combout\);

-- Location: LCFF_X14_Y1_N17
\LEDG[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \LEDG[2]~reg0feeder_combout\,
	ena => \LEDG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[2]~reg0_regout\);

-- Location: LCCOMB_X14_Y1_N26
\LEDG[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[3]~reg0feeder_combout\ = \SRAM_DQ[3]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_DQ[3]~3\,
	combout => \LEDG[3]~reg0feeder_combout\);

-- Location: LCFF_X14_Y1_N27
\LEDG[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \LEDG[3]~reg0feeder_combout\,
	ena => \LEDG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[3]~reg0_regout\);

-- Location: LCFF_X14_Y1_N25
\LEDG[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	sdata => \SRAM_DQ[4]~4\,
	sload => VCC,
	ena => \LEDG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[4]~reg0_regout\);

-- Location: LCFF_X14_Y1_N19
\LEDG[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	sdata => \SRAM_DQ[5]~5\,
	sload => VCC,
	ena => \LEDG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[5]~reg0_regout\);

-- Location: LCCOMB_X14_Y1_N0
\LEDG[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[6]~reg0feeder_combout\ = \SRAM_DQ[6]~6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_DQ[6]~6\,
	combout => \LEDG[6]~reg0feeder_combout\);

-- Location: LCFF_X14_Y1_N1
\LEDG[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \LEDG[6]~reg0feeder_combout\,
	ena => \LEDG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[6]~reg0_regout\);

-- Location: LCCOMB_X14_Y1_N2
\LEDG[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[7]~reg0feeder_combout\ = \SRAM_DQ[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_DQ[7]~7\,
	combout => \LEDG[7]~reg0feeder_combout\);

-- Location: LCFF_X14_Y1_N3
\LEDG[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \LEDG[7]~reg0feeder_combout\,
	ena => \LEDG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[7]~reg0_regout\);

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_dq[0]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
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
	padio => fl_dq(0));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_dq[1]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
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
	padio => fl_dq(1));

-- Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_dq[2]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
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
	padio => fl_dq(2));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_dq[3]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
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
	padio => fl_dq(3));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_dq[4]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
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
	padio => fl_dq(4));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_dq[5]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
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
	padio => fl_dq(5));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_dq[6]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
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
	padio => fl_dq(6));

-- Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_dq[7]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
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
	padio => fl_dq(7));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[8]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[8]~reg0_regout\,
	oe => \SRAM_DQ[8]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(8));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[9]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[9]~reg0_regout\,
	oe => \SRAM_DQ[9]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(9));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[10]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_SRAM_DQ[10]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(10));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[11]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_SRAM_DQ[11]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(11));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[12]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_SRAM_DQ[12]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(12));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[13]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_SRAM_DQ[13]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(13));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[14]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_SRAM_DQ[14]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(14));

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[15]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_SRAM_DQ[15]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(15));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_25[1]~I\ : cycloneii_io
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
	padio => ww_CLOCK_25(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_25[0]~I\ : cycloneii_io
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
	padio => ww_CLOCK_25(0));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_27[1]~I\ : cycloneii_io
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
	padio => ww_CLOCK_27(1));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_27[0]~I\ : cycloneii_io
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
	padio => ww_CLOCK_27(0));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[0]~I\ : cycloneii_io
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
	datain => address21Bit(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(0));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[1]~I\ : cycloneii_io
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
	datain => address21Bit(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(1));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[2]~I\ : cycloneii_io
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
	datain => address21Bit(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(2));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[3]~I\ : cycloneii_io
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
	datain => address21Bit(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(3));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[4]~I\ : cycloneii_io
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
	datain => address21Bit(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(4));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[5]~I\ : cycloneii_io
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
	datain => address21Bit(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(5));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[6]~I\ : cycloneii_io
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
	datain => address21Bit(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(6));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[7]~I\ : cycloneii_io
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
	datain => address21Bit(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(7));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[8]~I\ : cycloneii_io
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
	datain => address21Bit(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(8));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[9]~I\ : cycloneii_io
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
	datain => address21Bit(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(9));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[10]~I\ : cycloneii_io
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
	datain => address21Bit(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(10));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[11]~I\ : cycloneii_io
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
	datain => address21Bit(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(11));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[12]~I\ : cycloneii_io
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
	datain => address21Bit(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(12));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[13]~I\ : cycloneii_io
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
	datain => address21Bit(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(13));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[14]~I\ : cycloneii_io
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
	datain => address21Bit(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(14));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[15]~I\ : cycloneii_io
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
	datain => address21Bit(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(15));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[16]~I\ : cycloneii_io
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
	datain => address21Bit(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(16));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[17]~I\ : cycloneii_io
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
	datain => address21Bit(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(17));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WE_N~I\ : cycloneii_io
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
	datain => \SRAM_WE_N~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WE_N);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_OE_N~I\ : cycloneii_io
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
	datain => \SRAM_OE_N~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_OE_N);

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_UB_N~I\ : cycloneii_io
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
	padio => ww_SRAM_UB_N);

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_LB_N~I\ : cycloneii_io
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
	padio => ww_SRAM_LB_N);

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_CE_N~I\ : cycloneii_io
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
	padio => ww_SRAM_CE_N);

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[0]~I\ : cycloneii_io
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
	padio => ww_fl_addr(0));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[1]~I\ : cycloneii_io
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
	padio => ww_fl_addr(1));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[2]~I\ : cycloneii_io
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
	padio => ww_fl_addr(2));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[3]~I\ : cycloneii_io
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
	padio => ww_fl_addr(3));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[4]~I\ : cycloneii_io
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
	padio => ww_fl_addr(4));

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[5]~I\ : cycloneii_io
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
	padio => ww_fl_addr(5));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[6]~I\ : cycloneii_io
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
	padio => ww_fl_addr(6));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[7]~I\ : cycloneii_io
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
	padio => ww_fl_addr(7));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[8]~I\ : cycloneii_io
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
	padio => ww_fl_addr(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[9]~I\ : cycloneii_io
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
	padio => ww_fl_addr(9));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[10]~I\ : cycloneii_io
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
	padio => ww_fl_addr(10));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[11]~I\ : cycloneii_io
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
	padio => ww_fl_addr(11));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[12]~I\ : cycloneii_io
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
	padio => ww_fl_addr(12));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[13]~I\ : cycloneii_io
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
	padio => ww_fl_addr(13));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[14]~I\ : cycloneii_io
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
	padio => ww_fl_addr(14));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[15]~I\ : cycloneii_io
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
	padio => ww_fl_addr(15));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[16]~I\ : cycloneii_io
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
	padio => ww_fl_addr(16));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[17]~I\ : cycloneii_io
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
	padio => ww_fl_addr(17));

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[18]~I\ : cycloneii_io
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
	padio => ww_fl_addr(18));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[19]~I\ : cycloneii_io
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
	padio => ww_fl_addr(19));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[20]~I\ : cycloneii_io
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
	padio => ww_fl_addr(20));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_addr[21]~I\ : cycloneii_io
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
	padio => ww_fl_addr(21));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_oe_n~I\ : cycloneii_io
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
	padio => ww_fl_oe_n);

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_rst_n~I\ : cycloneii_io
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
	padio => ww_fl_rst_n);

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fl_we_n~I\ : cycloneii_io
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
	padio => ww_fl_we_n);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
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
	padio => ww_HEX2(6));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
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
	datain => \SW~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
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
	datain => \SW~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
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
	datain => \SW~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
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
	padio => ww_HEX2(2));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
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
	padio => ww_HEX2(1));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
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
	datain => \SW~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
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
	padio => ww_HEX3(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
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
	datain => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
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
	datain => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
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
	datain => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
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
	padio => ww_HEX3(2));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
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
	padio => ww_HEX3(1));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
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
	datain => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \LEDG[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => \LEDG[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
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
	datain => \LEDG[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
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
	datain => \LEDG[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
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
	datain => \LEDG[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
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
	datain => \LEDG[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
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
	datain => \LEDG[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
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
	datain => \LEDG[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => \SW~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => \SW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	datain => \SW~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	datain => \SW~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	datain => \SW~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	datain => \SW~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	datain => \SW~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	datain => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));
END structure;


