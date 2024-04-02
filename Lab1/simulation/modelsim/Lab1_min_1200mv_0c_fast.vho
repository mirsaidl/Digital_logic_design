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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/19/2023 12:01:27"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab1 IS
    PORT (
	Z3 : OUT std_logic;
	B : IN std_logic;
	A : IN std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic
	);
END Lab1;

-- Design Ports Information
-- Z3	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z2	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z3 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_Z1 : std_logic;
SIGNAL ww_Z2 : std_logic;
SIGNAL \Z3~output_o\ : std_logic;
SIGNAL \Z1~output_o\ : std_logic;
SIGNAL \Z2~output_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;

BEGIN

Z3 <= ww_Z3;
ww_B <= B;
ww_A <= A;
Z1 <= ww_Z1;
Z2 <= ww_Z2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\Z3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \Z3~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Z1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \Z1~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\Z2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \Z2~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X18_Y1_N8
\inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\B~input_o\ & \A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datad => \A~input_o\,
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X18_Y1_N10
inst : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\B~input_o\) # (\A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datad => \A~input_o\,
	combout => \inst~combout\);

ww_Z3 <= \Z3~output_o\;

ww_Z1 <= \Z1~output_o\;

ww_Z2 <= \Z2~output_o\;
END structure;


