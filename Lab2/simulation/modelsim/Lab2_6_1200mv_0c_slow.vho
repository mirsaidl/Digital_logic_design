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

-- DATE "11/19/2023 12:36:05"

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

ENTITY 	Lab2 IS
    PORT (
	z1 : OUT std_logic;
	B : IN std_logic;
	A : IN std_logic;
	z2 : OUT std_logic;
	z3 : OUT std_logic
	);
END Lab2;

-- Design Ports Information
-- z1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z2	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z3	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_z1 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_z2 : std_logic;
SIGNAL ww_z3 : std_logic;
SIGNAL \z1~output_o\ : std_logic;
SIGNAL \z2~output_o\ : std_logic;
SIGNAL \z3~output_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;

BEGIN

z1 <= ww_z1;
ww_B <= B;
ww_A <= A;
z2 <= ww_z2;
z3 <= ww_z3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N2
\z1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \z1~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\z2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \z2~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\z3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \z3~output_o\);

-- Location: IOIBUF_X8_Y0_N1
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

-- Location: LCCOMB_X23_Y1_N8
inst : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\B~input_o\) # (\A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datad => \A~input_o\,
	combout => \inst~combout\);

-- Location: LCCOMB_X23_Y1_N26
inst2 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\B~input_o\ & \A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datad => \A~input_o\,
	combout => \inst2~combout\);

ww_z1 <= \z1~output_o\;

ww_z2 <= \z2~output_o\;

ww_z3 <= \z3~output_o\;
END structure;


