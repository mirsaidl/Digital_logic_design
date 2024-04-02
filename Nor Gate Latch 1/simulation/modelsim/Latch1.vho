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

-- DATE "11/19/2023 13:14:29"

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

ENTITY 	Latch1 IS
    PORT (
	Q : OUT std_logic;
	RESET : IN std_logic;
	SET : IN std_logic;
	Qbar : OUT std_logic
	);
END Latch1;

-- Design Ports Information
-- Q	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qbar	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Latch1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_SET : std_logic;
SIGNAL ww_Qbar : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Qbar~output_o\ : std_logic;
SIGNAL \SET~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \ALT_INV_inst1~combout\ : std_logic;
SIGNAL \ALT_INV_inst~combout\ : std_logic;

BEGIN

Q <= ww_Q;
ww_RESET <= RESET;
ww_SET <= SET;
Qbar <= ww_Qbar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst1~combout\ <= NOT \inst1~combout\;
\ALT_INV_inst~combout\ <= NOT \inst~combout\;

-- Location: IOOBUF_X22_Y0_N9
\Q~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst1~combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\Qbar~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst~combout\,
	devoe => ww_devoe,
	o => \Qbar~output_o\);

-- Location: IOIBUF_X8_Y0_N8
\SET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET,
	o => \SET~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X23_Y1_N18
inst1 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\RESET~input_o\) # ((!\SET~input_o\ & \inst1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET~input_o\,
	datab => \inst1~combout\,
	datad => \RESET~input_o\,
	combout => \inst1~combout\);

-- Location: LCCOMB_X23_Y1_N16
inst : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\SET~input_o\) # (!\inst1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET~input_o\,
	datad => \inst1~combout\,
	combout => \inst~combout\);

ww_Q <= \Q~output_o\;

ww_Qbar <= \Qbar~output_o\;
END structure;


