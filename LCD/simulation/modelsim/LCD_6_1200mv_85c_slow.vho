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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "05/30/2020 19:54:17"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LCD IS
    PORT (
	clk : IN std_logic;
	reset_low : IN std_logic;
	entradas : IN std_logic_vector(4 DOWNTO 0);
	rw : BUFFER std_logic;
	rs : BUFFER std_logic;
	e : BUFFER std_logic;
	db : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END LCD;

-- Design Ports Information
-- rw	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[4]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[5]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_low	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[4]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_low : std_logic;
SIGNAL ww_entradas : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rw : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_db : std_logic_vector(7 DOWNTO 0);
SIGNAL \fsm|e~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_low~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rw~output_o\ : std_logic;
SIGNAL \rs~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \db[0]~output_o\ : std_logic;
SIGNAL \db[1]~output_o\ : std_logic;
SIGNAL \db[2]~output_o\ : std_logic;
SIGNAL \db[3]~output_o\ : std_logic;
SIGNAL \db[4]~output_o\ : std_logic;
SIGNAL \db[5]~output_o\ : std_logic;
SIGNAL \db[6]~output_o\ : std_logic;
SIGNAL \db[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \fsm|clock:cont[14]~q\ : std_logic;
SIGNAL \fsm|Add0~0_combout\ : std_logic;
SIGNAL \fsm|clock:cont[0]~q\ : std_logic;
SIGNAL \fsm|Add0~1\ : std_logic;
SIGNAL \fsm|Add0~2_combout\ : std_logic;
SIGNAL \fsm|clock:cont[1]~q\ : std_logic;
SIGNAL \fsm|Add0~3\ : std_logic;
SIGNAL \fsm|Add0~4_combout\ : std_logic;
SIGNAL \fsm|clock:cont[2]~q\ : std_logic;
SIGNAL \fsm|Add0~5\ : std_logic;
SIGNAL \fsm|Add0~6_combout\ : std_logic;
SIGNAL \fsm|clock:cont[3]~q\ : std_logic;
SIGNAL \fsm|Add0~7\ : std_logic;
SIGNAL \fsm|Add0~8_combout\ : std_logic;
SIGNAL \fsm|clock:cont[4]~q\ : std_logic;
SIGNAL \fsm|Add0~9\ : std_logic;
SIGNAL \fsm|Add0~10_combout\ : std_logic;
SIGNAL \fsm|cont~5_combout\ : std_logic;
SIGNAL \fsm|clock:cont[5]~q\ : std_logic;
SIGNAL \fsm|Add0~11\ : std_logic;
SIGNAL \fsm|Add0~12_combout\ : std_logic;
SIGNAL \fsm|clock:cont[6]~q\ : std_logic;
SIGNAL \fsm|Add0~13\ : std_logic;
SIGNAL \fsm|Add0~14_combout\ : std_logic;
SIGNAL \fsm|cont~4_combout\ : std_logic;
SIGNAL \fsm|clock:cont[7]~q\ : std_logic;
SIGNAL \fsm|Add0~15\ : std_logic;
SIGNAL \fsm|Add0~16_combout\ : std_logic;
SIGNAL \fsm|clock:cont[8]~q\ : std_logic;
SIGNAL \fsm|Add0~17\ : std_logic;
SIGNAL \fsm|Add0~18_combout\ : std_logic;
SIGNAL \fsm|cont~3_combout\ : std_logic;
SIGNAL \fsm|clock:cont[9]~q\ : std_logic;
SIGNAL \fsm|Add0~19\ : std_logic;
SIGNAL \fsm|Add0~20_combout\ : std_logic;
SIGNAL \fsm|cont~2_combout\ : std_logic;
SIGNAL \fsm|clock:cont[10]~q\ : std_logic;
SIGNAL \fsm|Add0~21\ : std_logic;
SIGNAL \fsm|Add0~22_combout\ : std_logic;
SIGNAL \fsm|clock:cont[11]~q\ : std_logic;
SIGNAL \fsm|Add0~23\ : std_logic;
SIGNAL \fsm|Add0~24_combout\ : std_logic;
SIGNAL \fsm|clock:cont[12]~q\ : std_logic;
SIGNAL \fsm|Add0~25\ : std_logic;
SIGNAL \fsm|Add0~26_combout\ : std_logic;
SIGNAL \fsm|clock:cont[13]~q\ : std_logic;
SIGNAL \fsm|Add0~27\ : std_logic;
SIGNAL \fsm|Add0~28_combout\ : std_logic;
SIGNAL \fsm|cont~1_combout\ : std_logic;
SIGNAL \fsm|clock:cont[15]~q\ : std_logic;
SIGNAL \fsm|Add0~29\ : std_logic;
SIGNAL \fsm|Add0~30_combout\ : std_logic;
SIGNAL \fsm|Equal0~0_combout\ : std_logic;
SIGNAL \fsm|Equal0~1_combout\ : std_logic;
SIGNAL \fsm|Equal0~2_combout\ : std_logic;
SIGNAL \fsm|Equal0~3_combout\ : std_logic;
SIGNAL \fsm|Equal0~4_combout\ : std_logic;
SIGNAL \fsm|cont~0_combout\ : std_logic;
SIGNAL \fsm|clock:cont[16]~q\ : std_logic;
SIGNAL \fsm|Add0~31\ : std_logic;
SIGNAL \fsm|Add0~32_combout\ : std_logic;
SIGNAL \fsm|e~0_combout\ : std_logic;
SIGNAL \fsm|e~feeder_combout\ : std_logic;
SIGNAL \fsm|e~q\ : std_logic;
SIGNAL \fsm|e~clkctrl_outclk\ : std_logic;
SIGNAL \cont|Add0~0_combout\ : std_logic;
SIGNAL \cont|cont~12_combout\ : std_logic;
SIGNAL \cont|Add0~1\ : std_logic;
SIGNAL \cont|Add0~2_combout\ : std_logic;
SIGNAL \cont|Add0~3\ : std_logic;
SIGNAL \cont|Add0~4_combout\ : std_logic;
SIGNAL \cont|Add0~5\ : std_logic;
SIGNAL \cont|Add0~6_combout\ : std_logic;
SIGNAL \cont|Add0~7\ : std_logic;
SIGNAL \cont|Add0~8_combout\ : std_logic;
SIGNAL \cont|Add0~9\ : std_logic;
SIGNAL \cont|Add0~10_combout\ : std_logic;
SIGNAL \cont|Add0~11\ : std_logic;
SIGNAL \cont|Add0~12_combout\ : std_logic;
SIGNAL \cont|Equal0~6_combout\ : std_logic;
SIGNAL \cont|Equal0~7_combout\ : std_logic;
SIGNAL \cont|Add0~13\ : std_logic;
SIGNAL \cont|Add0~14_combout\ : std_logic;
SIGNAL \cont|Add0~15\ : std_logic;
SIGNAL \cont|Add0~16_combout\ : std_logic;
SIGNAL \cont|cont~11_combout\ : std_logic;
SIGNAL \cont|Add0~17\ : std_logic;
SIGNAL \cont|Add0~18_combout\ : std_logic;
SIGNAL \cont|Add0~19\ : std_logic;
SIGNAL \cont|Add0~20_combout\ : std_logic;
SIGNAL \cont|Equal0~5_combout\ : std_logic;
SIGNAL \cont|Add0~21\ : std_logic;
SIGNAL \cont|Add0~22_combout\ : std_logic;
SIGNAL \cont|Add0~23\ : std_logic;
SIGNAL \cont|Add0~24_combout\ : std_logic;
SIGNAL \cont|Add0~25\ : std_logic;
SIGNAL \cont|Add0~26_combout\ : std_logic;
SIGNAL \cont|cont~10_combout\ : std_logic;
SIGNAL \cont|Add0~27\ : std_logic;
SIGNAL \cont|Add0~28_combout\ : std_logic;
SIGNAL \cont|cont~9_combout\ : std_logic;
SIGNAL \cont|Equal0~3_combout\ : std_logic;
SIGNAL \cont|Add0~29\ : std_logic;
SIGNAL \cont|Add0~30_combout\ : std_logic;
SIGNAL \cont|cont~8_combout\ : std_logic;
SIGNAL \cont|Add0~31\ : std_logic;
SIGNAL \cont|Add0~32_combout\ : std_logic;
SIGNAL \cont|cont~7_combout\ : std_logic;
SIGNAL \cont|Add0~33\ : std_logic;
SIGNAL \cont|Add0~34_combout\ : std_logic;
SIGNAL \cont|Add0~35\ : std_logic;
SIGNAL \cont|Add0~36_combout\ : std_logic;
SIGNAL \cont|cont~6_combout\ : std_logic;
SIGNAL \cont|Add0~37\ : std_logic;
SIGNAL \cont|Add0~38_combout\ : std_logic;
SIGNAL \cont|Add0~39\ : std_logic;
SIGNAL \cont|Add0~40_combout\ : std_logic;
SIGNAL \cont|cont~5_combout\ : std_logic;
SIGNAL \cont|Add0~41\ : std_logic;
SIGNAL \cont|Add0~42_combout\ : std_logic;
SIGNAL \cont|cont~4_combout\ : std_logic;
SIGNAL \cont|Add0~43\ : std_logic;
SIGNAL \cont|Add0~44_combout\ : std_logic;
SIGNAL \cont|cont~3_combout\ : std_logic;
SIGNAL \cont|Equal0~1_combout\ : std_logic;
SIGNAL \cont|Add0~45\ : std_logic;
SIGNAL \cont|Add0~46_combout\ : std_logic;
SIGNAL \cont|cont~2_combout\ : std_logic;
SIGNAL \cont|Add0~47\ : std_logic;
SIGNAL \cont|Add0~48_combout\ : std_logic;
SIGNAL \cont|cont~1_combout\ : std_logic;
SIGNAL \cont|Add0~49\ : std_logic;
SIGNAL \cont|Add0~50_combout\ : std_logic;
SIGNAL \cont|Add0~51\ : std_logic;
SIGNAL \cont|Add0~52_combout\ : std_logic;
SIGNAL \cont|cont~0_combout\ : std_logic;
SIGNAL \cont|Equal0~0_combout\ : std_logic;
SIGNAL \cont|Equal0~2_combout\ : std_logic;
SIGNAL \cont|Equal0~4_combout\ : std_logic;
SIGNAL \cont|Equal0~8_combout\ : std_logic;
SIGNAL \cont|bus_out~0_combout\ : std_logic;
SIGNAL \cont|bus_out~q\ : std_logic;
SIGNAL \entradas[0]~input_o\ : std_logic;
SIGNAL \entradas[1]~input_o\ : std_logic;
SIGNAL \fsm|Selector9~0_combout\ : std_logic;
SIGNAL \entradas[3]~input_o\ : std_logic;
SIGNAL \entradas[2]~input_o\ : std_logic;
SIGNAL \entradas[4]~input_o\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \fsm|Selector0~1_combout\ : std_logic;
SIGNAL \fsm|Selector0~2_combout\ : std_logic;
SIGNAL \fsm|current_state.FunctionSet1~feeder_combout\ : std_logic;
SIGNAL \reset_low~input_o\ : std_logic;
SIGNAL \reset_low~inputclkctrl_outclk\ : std_logic;
SIGNAL \fsm|current_state.FunctionSet1~q\ : std_logic;
SIGNAL \fsm|current_state.FunctionSet2~0_combout\ : std_logic;
SIGNAL \fsm|current_state.FunctionSet2~q\ : std_logic;
SIGNAL \fsm|current_state.FunctionSet3~q\ : std_logic;
SIGNAL \fsm|current_state.FunctionSet4~q\ : std_logic;
SIGNAL \fsm|current_state.ClearDisplay1~q\ : std_logic;
SIGNAL \fsm|current_state.DisplayControl~q\ : std_logic;
SIGNAL \fsm|current_state.EntryMode~q\ : std_logic;
SIGNAL \fsm|Mux1~0_combout\ : std_logic;
SIGNAL \fsm|next_state.Write1~0_combout\ : std_logic;
SIGNAL \fsm|current_state.Write1~q\ : std_logic;
SIGNAL \fsm|current_state.Write2~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write2~q\ : std_logic;
SIGNAL \fsm|current_state.Write3~q\ : std_logic;
SIGNAL \fsm|current_state.Write4~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write4~q\ : std_logic;
SIGNAL \fsm|current_state.Write5~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write5~q\ : std_logic;
SIGNAL \fsm|current_state.Write6~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write6~q\ : std_logic;
SIGNAL \fsm|current_state.Write7~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write7~q\ : std_logic;
SIGNAL \fsm|current_state.Write8~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write8~q\ : std_logic;
SIGNAL \fsm|current_state.Write9~q\ : std_logic;
SIGNAL \fsm|current_state.Write10~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write10~q\ : std_logic;
SIGNAL \fsm|current_state.Write11~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write11~q\ : std_logic;
SIGNAL \fsm|current_state.Write12~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write12~q\ : std_logic;
SIGNAL \fsm|current_state.Write13~q\ : std_logic;
SIGNAL \fsm|current_state.SetAddress~q\ : std_logic;
SIGNAL \fsm|current_state.Write14~q\ : std_logic;
SIGNAL \fsm|current_state.Write15~q\ : std_logic;
SIGNAL \fsm|current_state.Write16~q\ : std_logic;
SIGNAL \fsm|current_state.Write17~q\ : std_logic;
SIGNAL \fsm|current_state.Write18~q\ : std_logic;
SIGNAL \fsm|current_state.Write19~q\ : std_logic;
SIGNAL \fsm|current_state.Write20~q\ : std_logic;
SIGNAL \fsm|current_state.Write21~q\ : std_logic;
SIGNAL \fsm|current_state.Write22~q\ : std_logic;
SIGNAL \fsm|current_state.Write23~q\ : std_logic;
SIGNAL \fsm|Selector1~0_combout\ : std_logic;
SIGNAL \fsm|current_state.ReturnHome1~q\ : std_logic;
SIGNAL \fsm|next_state.ClearDisplay3~0_combout\ : std_logic;
SIGNAL \fsm|current_state.ClearDisplay3~q\ : std_logic;
SIGNAL \fsm|Selector6~0_combout\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \fsm|current_state.Write24~q\ : std_logic;
SIGNAL \fsm|current_state.Write25~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write25~q\ : std_logic;
SIGNAL \fsm|current_state.Write26~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write26~q\ : std_logic;
SIGNAL \fsm|current_state.Write27~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write27~q\ : std_logic;
SIGNAL \fsm|current_state.Write28~feeder_combout\ : std_logic;
SIGNAL \fsm|current_state.Write28~q\ : std_logic;
SIGNAL \fsm|Selector2~0_combout\ : std_logic;
SIGNAL \fsm|current_state.ReturnHome2~q\ : std_logic;
SIGNAL \fsm|next_state.ClearDisplay4~0_combout\ : std_logic;
SIGNAL \fsm|current_state.ClearDisplay4~q\ : std_logic;
SIGNAL \fsm|Selector6~1_combout\ : std_logic;
SIGNAL \fsm|current_state.Write29~q\ : std_logic;
SIGNAL \fsm|current_state.Write30~q\ : std_logic;
SIGNAL \fsm|current_state.Write31~q\ : std_logic;
SIGNAL \fsm|current_state.Write32~q\ : std_logic;
SIGNAL \fsm|current_state.Write33~q\ : std_logic;
SIGNAL \fsm|Selector3~0_combout\ : std_logic;
SIGNAL \fsm|current_state.ReturnHome3~q\ : std_logic;
SIGNAL \fsm|Selector0~3_combout\ : std_logic;
SIGNAL \fsm|Selector0~4_combout\ : std_logic;
SIGNAL \fsm|Selector0~5_combout\ : std_logic;
SIGNAL \fsm|current_state.ClearDisplay2~q\ : std_logic;
SIGNAL \fsm|Selector8~0_combout\ : std_logic;
SIGNAL \fsm|Selector8~1_combout\ : std_logic;
SIGNAL \fsm|nx_proc:flag~combout\ : std_logic;
SIGNAL \fsm|next_state.ClearDisplay5~0_combout\ : std_logic;
SIGNAL \fsm|current_state.ClearDisplay5~q\ : std_logic;
SIGNAL \fsm|Selector7~0_combout\ : std_logic;
SIGNAL \fsm|Selector7~1_combout\ : std_logic;
SIGNAL \fsm|current_state.Write34~q\ : std_logic;
SIGNAL \fsm|current_state.Write35~q\ : std_logic;
SIGNAL \fsm|current_state.Write36~q\ : std_logic;
SIGNAL \fsm|current_state.Write37~q\ : std_logic;
SIGNAL \fsm|Selector4~0_combout\ : std_logic;
SIGNAL \fsm|current_state.ReturnHome4~q\ : std_logic;
SIGNAL \fsm|WideOr18~0_combout\ : std_logic;
SIGNAL \fsm|WideOr16~0_combout\ : std_logic;
SIGNAL \fsm|WideOr16~1_combout\ : std_logic;
SIGNAL \fsm|WideOr10~0_combout\ : std_logic;
SIGNAL \fsm|WideOr10~1_combout\ : std_logic;
SIGNAL \fsm|WideOr17~combout\ : std_logic;
SIGNAL \fsm|WideOr13~0_combout\ : std_logic;
SIGNAL \fsm|WideOr13~1_combout\ : std_logic;
SIGNAL \fsm|WideOr15~0_combout\ : std_logic;
SIGNAL \fsm|WideOr16~2_combout\ : std_logic;
SIGNAL \fsm|WideOr16~3_combout\ : std_logic;
SIGNAL \fsm|WideOr16~4_combout\ : std_logic;
SIGNAL \fsm|WideOr16~combout\ : std_logic;
SIGNAL \fsm|WideOr15~1_combout\ : std_logic;
SIGNAL \fsm|WideOr15~2_combout\ : std_logic;
SIGNAL \fsm|WideOr15~combout\ : std_logic;
SIGNAL \fsm|WideOr13~2_combout\ : std_logic;
SIGNAL \fsm|WideOr13~3_combout\ : std_logic;
SIGNAL \fsm|WideOr13~4_combout\ : std_logic;
SIGNAL \fsm|WideOr12~0_combout\ : std_logic;
SIGNAL \fsm|WideOr14~0_combout\ : std_logic;
SIGNAL \fsm|WideOr14~1_combout\ : std_logic;
SIGNAL \fsm|WideOr13~combout\ : std_logic;
SIGNAL \fsm|WideOr12~1_combout\ : std_logic;
SIGNAL \fsm|WideOr12~combout\ : std_logic;
SIGNAL \fsm|WideOr11~1_combout\ : std_logic;
SIGNAL \fsm|WideOr11~0_combout\ : std_logic;
SIGNAL \fsm|WideOr11~combout\ : std_logic;
SIGNAL \fsm|WideOr10~combout\ : std_logic;
SIGNAL \fsm|WideOr9~combout\ : std_logic;
SIGNAL \cont|cont\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \fsm|ALT_INV_WideOr17~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_WideOr18~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_WideOr11~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_low <= reset_low;
ww_entradas <= entradas;
rw <= ww_rw;
rs <= ww_rs;
e <= ww_e;
db <= ww_db;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fsm|e~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm|e~q\);

\reset_low~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_low~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\fsm|ALT_INV_WideOr17~combout\ <= NOT \fsm|WideOr17~combout\;
\fsm|ALT_INV_WideOr18~0_combout\ <= NOT \fsm|WideOr18~0_combout\;
\fsm|ALT_INV_WideOr10~combout\ <= NOT \fsm|WideOr10~combout\;
\fsm|ALT_INV_WideOr11~combout\ <= NOT \fsm|WideOr11~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y0_N16
\rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rw~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_WideOr17~combout\,
	devoe => ww_devoe,
	o => \rs~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|e~q\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\db[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|WideOr16~combout\,
	devoe => ww_devoe,
	o => \db[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\db[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|WideOr15~combout\,
	devoe => ww_devoe,
	o => \db[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\db[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|WideOr14~1_combout\,
	devoe => ww_devoe,
	o => \db[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\db[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|WideOr13~combout\,
	devoe => ww_devoe,
	o => \db[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\db[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|WideOr12~combout\,
	devoe => ww_devoe,
	o => \db[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\db[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_WideOr11~combout\,
	devoe => ww_devoe,
	o => \db[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\db[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_WideOr10~combout\,
	devoe => ww_devoe,
	o => \db[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\db[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|WideOr9~combout\,
	devoe => ww_devoe,
	o => \db[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X25_Y15_N13
\fsm|clock:cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[14]~q\);

-- Location: LCCOMB_X25_Y16_N16
\fsm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~0_combout\ = \fsm|clock:cont[0]~q\ $ (VCC)
-- \fsm|Add0~1\ = CARRY(\fsm|clock:cont[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|clock:cont[0]~q\,
	datad => VCC,
	combout => \fsm|Add0~0_combout\,
	cout => \fsm|Add0~1\);

-- Location: FF_X25_Y16_N17
\fsm|clock:cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[0]~q\);

-- Location: LCCOMB_X25_Y16_N18
\fsm|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~2_combout\ = (\fsm|clock:cont[1]~q\ & (!\fsm|Add0~1\)) # (!\fsm|clock:cont[1]~q\ & ((\fsm|Add0~1\) # (GND)))
-- \fsm|Add0~3\ = CARRY((!\fsm|Add0~1\) # (!\fsm|clock:cont[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|clock:cont[1]~q\,
	datad => VCC,
	cin => \fsm|Add0~1\,
	combout => \fsm|Add0~2_combout\,
	cout => \fsm|Add0~3\);

-- Location: FF_X25_Y16_N19
\fsm|clock:cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[1]~q\);

-- Location: LCCOMB_X25_Y16_N20
\fsm|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~4_combout\ = (\fsm|clock:cont[2]~q\ & (\fsm|Add0~3\ $ (GND))) # (!\fsm|clock:cont[2]~q\ & (!\fsm|Add0~3\ & VCC))
-- \fsm|Add0~5\ = CARRY((\fsm|clock:cont[2]~q\ & !\fsm|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|clock:cont[2]~q\,
	datad => VCC,
	cin => \fsm|Add0~3\,
	combout => \fsm|Add0~4_combout\,
	cout => \fsm|Add0~5\);

-- Location: FF_X25_Y16_N21
\fsm|clock:cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[2]~q\);

-- Location: LCCOMB_X25_Y16_N22
\fsm|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~6_combout\ = (\fsm|clock:cont[3]~q\ & (!\fsm|Add0~5\)) # (!\fsm|clock:cont[3]~q\ & ((\fsm|Add0~5\) # (GND)))
-- \fsm|Add0~7\ = CARRY((!\fsm|Add0~5\) # (!\fsm|clock:cont[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|clock:cont[3]~q\,
	datad => VCC,
	cin => \fsm|Add0~5\,
	combout => \fsm|Add0~6_combout\,
	cout => \fsm|Add0~7\);

-- Location: FF_X25_Y16_N23
\fsm|clock:cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[3]~q\);

-- Location: LCCOMB_X25_Y16_N24
\fsm|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~8_combout\ = (\fsm|clock:cont[4]~q\ & (\fsm|Add0~7\ $ (GND))) # (!\fsm|clock:cont[4]~q\ & (!\fsm|Add0~7\ & VCC))
-- \fsm|Add0~9\ = CARRY((\fsm|clock:cont[4]~q\ & !\fsm|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|clock:cont[4]~q\,
	datad => VCC,
	cin => \fsm|Add0~7\,
	combout => \fsm|Add0~8_combout\,
	cout => \fsm|Add0~9\);

-- Location: FF_X25_Y16_N25
\fsm|clock:cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[4]~q\);

-- Location: LCCOMB_X25_Y16_N26
\fsm|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~10_combout\ = (\fsm|clock:cont[5]~q\ & (!\fsm|Add0~9\)) # (!\fsm|clock:cont[5]~q\ & ((\fsm|Add0~9\) # (GND)))
-- \fsm|Add0~11\ = CARRY((!\fsm|Add0~9\) # (!\fsm|clock:cont[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|clock:cont[5]~q\,
	datad => VCC,
	cin => \fsm|Add0~9\,
	combout => \fsm|Add0~10_combout\,
	cout => \fsm|Add0~11\);

-- Location: LCCOMB_X25_Y16_N14
\fsm|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|cont~5_combout\ = (\fsm|Add0~10_combout\ & ((!\fsm|Equal0~4_combout\) # (!\fsm|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add0~10_combout\,
	datac => \fsm|Add0~32_combout\,
	datad => \fsm|Equal0~4_combout\,
	combout => \fsm|cont~5_combout\);

-- Location: FF_X25_Y16_N15
\fsm|clock:cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|cont~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[5]~q\);

-- Location: LCCOMB_X25_Y16_N28
\fsm|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~12_combout\ = (\fsm|clock:cont[6]~q\ & (\fsm|Add0~11\ $ (GND))) # (!\fsm|clock:cont[6]~q\ & (!\fsm|Add0~11\ & VCC))
-- \fsm|Add0~13\ = CARRY((\fsm|clock:cont[6]~q\ & !\fsm|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|clock:cont[6]~q\,
	datad => VCC,
	cin => \fsm|Add0~11\,
	combout => \fsm|Add0~12_combout\,
	cout => \fsm|Add0~13\);

-- Location: FF_X25_Y16_N29
\fsm|clock:cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[6]~q\);

-- Location: LCCOMB_X25_Y16_N30
\fsm|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~14_combout\ = (\fsm|clock:cont[7]~q\ & (!\fsm|Add0~13\)) # (!\fsm|clock:cont[7]~q\ & ((\fsm|Add0~13\) # (GND)))
-- \fsm|Add0~15\ = CARRY((!\fsm|Add0~13\) # (!\fsm|clock:cont[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|clock:cont[7]~q\,
	datad => VCC,
	cin => \fsm|Add0~13\,
	combout => \fsm|Add0~14_combout\,
	cout => \fsm|Add0~15\);

-- Location: LCCOMB_X25_Y15_N22
\fsm|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|cont~4_combout\ = (\fsm|Add0~14_combout\ & ((!\fsm|Add0~32_combout\) # (!\fsm|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add0~14_combout\,
	datac => \fsm|Equal0~4_combout\,
	datad => \fsm|Add0~32_combout\,
	combout => \fsm|cont~4_combout\);

-- Location: FF_X25_Y15_N23
\fsm|clock:cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[7]~q\);

-- Location: LCCOMB_X25_Y15_N0
\fsm|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~16_combout\ = (\fsm|clock:cont[8]~q\ & (\fsm|Add0~15\ $ (GND))) # (!\fsm|clock:cont[8]~q\ & (!\fsm|Add0~15\ & VCC))
-- \fsm|Add0~17\ = CARRY((\fsm|clock:cont[8]~q\ & !\fsm|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|clock:cont[8]~q\,
	datad => VCC,
	cin => \fsm|Add0~15\,
	combout => \fsm|Add0~16_combout\,
	cout => \fsm|Add0~17\);

-- Location: FF_X25_Y15_N1
\fsm|clock:cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[8]~q\);

-- Location: LCCOMB_X25_Y15_N2
\fsm|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~18_combout\ = (\fsm|clock:cont[9]~q\ & (!\fsm|Add0~17\)) # (!\fsm|clock:cont[9]~q\ & ((\fsm|Add0~17\) # (GND)))
-- \fsm|Add0~19\ = CARRY((!\fsm|Add0~17\) # (!\fsm|clock:cont[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|clock:cont[9]~q\,
	datad => VCC,
	cin => \fsm|Add0~17\,
	combout => \fsm|Add0~18_combout\,
	cout => \fsm|Add0~19\);

-- Location: LCCOMB_X25_Y15_N28
\fsm|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|cont~3_combout\ = (\fsm|Add0~18_combout\ & ((!\fsm|Add0~32_combout\) # (!\fsm|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add0~18_combout\,
	datac => \fsm|Equal0~4_combout\,
	datad => \fsm|Add0~32_combout\,
	combout => \fsm|cont~3_combout\);

-- Location: FF_X25_Y15_N29
\fsm|clock:cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[9]~q\);

-- Location: LCCOMB_X25_Y15_N4
\fsm|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~20_combout\ = (\fsm|clock:cont[10]~q\ & (\fsm|Add0~19\ $ (GND))) # (!\fsm|clock:cont[10]~q\ & (!\fsm|Add0~19\ & VCC))
-- \fsm|Add0~21\ = CARRY((\fsm|clock:cont[10]~q\ & !\fsm|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|clock:cont[10]~q\,
	datad => VCC,
	cin => \fsm|Add0~19\,
	combout => \fsm|Add0~20_combout\,
	cout => \fsm|Add0~21\);

-- Location: LCCOMB_X25_Y15_N26
\fsm|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|cont~2_combout\ = (\fsm|Add0~20_combout\ & ((!\fsm|Add0~32_combout\) # (!\fsm|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add0~20_combout\,
	datac => \fsm|Equal0~4_combout\,
	datad => \fsm|Add0~32_combout\,
	combout => \fsm|cont~2_combout\);

-- Location: FF_X25_Y15_N27
\fsm|clock:cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|cont~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[10]~q\);

-- Location: LCCOMB_X25_Y15_N6
\fsm|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~22_combout\ = (\fsm|clock:cont[11]~q\ & (!\fsm|Add0~21\)) # (!\fsm|clock:cont[11]~q\ & ((\fsm|Add0~21\) # (GND)))
-- \fsm|Add0~23\ = CARRY((!\fsm|Add0~21\) # (!\fsm|clock:cont[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|clock:cont[11]~q\,
	datad => VCC,
	cin => \fsm|Add0~21\,
	combout => \fsm|Add0~22_combout\,
	cout => \fsm|Add0~23\);

-- Location: FF_X25_Y15_N7
\fsm|clock:cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[11]~q\);

-- Location: LCCOMB_X25_Y15_N8
\fsm|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~24_combout\ = (\fsm|clock:cont[12]~q\ & (\fsm|Add0~23\ $ (GND))) # (!\fsm|clock:cont[12]~q\ & (!\fsm|Add0~23\ & VCC))
-- \fsm|Add0~25\ = CARRY((\fsm|clock:cont[12]~q\ & !\fsm|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|clock:cont[12]~q\,
	datad => VCC,
	cin => \fsm|Add0~23\,
	combout => \fsm|Add0~24_combout\,
	cout => \fsm|Add0~25\);

-- Location: FF_X25_Y15_N9
\fsm|clock:cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[12]~q\);

-- Location: LCCOMB_X25_Y15_N10
\fsm|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~26_combout\ = (\fsm|clock:cont[13]~q\ & (!\fsm|Add0~25\)) # (!\fsm|clock:cont[13]~q\ & ((\fsm|Add0~25\) # (GND)))
-- \fsm|Add0~27\ = CARRY((!\fsm|Add0~25\) # (!\fsm|clock:cont[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|clock:cont[13]~q\,
	datad => VCC,
	cin => \fsm|Add0~25\,
	combout => \fsm|Add0~26_combout\,
	cout => \fsm|Add0~27\);

-- Location: FF_X25_Y15_N11
\fsm|clock:cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[13]~q\);

-- Location: LCCOMB_X25_Y15_N12
\fsm|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~28_combout\ = (\fsm|clock:cont[14]~q\ & (\fsm|Add0~27\ $ (GND))) # (!\fsm|clock:cont[14]~q\ & (!\fsm|Add0~27\ & VCC))
-- \fsm|Add0~29\ = CARRY((\fsm|clock:cont[14]~q\ & !\fsm|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|clock:cont[14]~q\,
	datad => VCC,
	cin => \fsm|Add0~27\,
	combout => \fsm|Add0~28_combout\,
	cout => \fsm|Add0~29\);

-- Location: LCCOMB_X25_Y15_N24
\fsm|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|cont~1_combout\ = (\fsm|Add0~30_combout\ & ((!\fsm|Add0~32_combout\) # (!\fsm|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add0~30_combout\,
	datac => \fsm|Equal0~4_combout\,
	datad => \fsm|Add0~32_combout\,
	combout => \fsm|cont~1_combout\);

-- Location: FF_X25_Y15_N25
\fsm|clock:cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[15]~q\);

-- Location: LCCOMB_X25_Y15_N14
\fsm|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~30_combout\ = (\fsm|clock:cont[15]~q\ & (!\fsm|Add0~29\)) # (!\fsm|clock:cont[15]~q\ & ((\fsm|Add0~29\) # (GND)))
-- \fsm|Add0~31\ = CARRY((!\fsm|Add0~29\) # (!\fsm|clock:cont[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|clock:cont[15]~q\,
	datad => VCC,
	cin => \fsm|Add0~29\,
	combout => \fsm|Add0~30_combout\,
	cout => \fsm|Add0~31\);

-- Location: LCCOMB_X25_Y16_N12
\fsm|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~0_combout\ = (!\fsm|Add0~0_combout\ & (!\fsm|Add0~2_combout\ & (!\fsm|Add0~6_combout\ & !\fsm|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add0~0_combout\,
	datab => \fsm|Add0~2_combout\,
	datac => \fsm|Add0~6_combout\,
	datad => \fsm|Add0~4_combout\,
	combout => \fsm|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y16_N4
\fsm|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~1_combout\ = (\fsm|Add0~10_combout\ & (!\fsm|Add0~12_combout\ & (!\fsm|Add0~8_combout\ & \fsm|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add0~10_combout\,
	datab => \fsm|Add0~12_combout\,
	datac => \fsm|Add0~8_combout\,
	datad => \fsm|Equal0~0_combout\,
	combout => \fsm|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y16_N8
\fsm|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~2_combout\ = (\fsm|Add0~14_combout\ & (!\fsm|Add0~16_combout\ & (\fsm|Equal0~1_combout\ & \fsm|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add0~14_combout\,
	datab => \fsm|Add0~16_combout\,
	datac => \fsm|Equal0~1_combout\,
	datad => \fsm|Add0~18_combout\,
	combout => \fsm|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y15_N20
\fsm|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~3_combout\ = (!\fsm|Add0~24_combout\ & (\fsm|Add0~20_combout\ & (!\fsm|Add0~22_combout\ & \fsm|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add0~24_combout\,
	datab => \fsm|Add0~20_combout\,
	datac => \fsm|Add0~22_combout\,
	datad => \fsm|Equal0~2_combout\,
	combout => \fsm|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y15_N30
\fsm|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~4_combout\ = (!\fsm|Add0~28_combout\ & (!\fsm|Add0~26_combout\ & (\fsm|Add0~30_combout\ & \fsm|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add0~28_combout\,
	datab => \fsm|Add0~26_combout\,
	datac => \fsm|Add0~30_combout\,
	datad => \fsm|Equal0~3_combout\,
	combout => \fsm|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y15_N18
\fsm|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|cont~0_combout\ = (!\fsm|Equal0~4_combout\ & \fsm|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|Equal0~4_combout\,
	datad => \fsm|Add0~32_combout\,
	combout => \fsm|cont~0_combout\);

-- Location: FF_X25_Y15_N19
\fsm|clock:cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|clock:cont[16]~q\);

-- Location: LCCOMB_X25_Y15_N16
\fsm|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~32_combout\ = \fsm|Add0~31\ $ (!\fsm|clock:cont[16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fsm|clock:cont[16]~q\,
	cin => \fsm|Add0~31\,
	combout => \fsm|Add0~32_combout\);

-- Location: LCCOMB_X25_Y16_N10
\fsm|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|e~0_combout\ = \fsm|e~q\ $ (((\fsm|Add0~32_combout\ & \fsm|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|e~q\,
	datac => \fsm|Add0~32_combout\,
	datad => \fsm|Equal0~4_combout\,
	combout => \fsm|e~0_combout\);

-- Location: LCCOMB_X25_Y16_N0
\fsm|e~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|e~feeder_combout\ = \fsm|e~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|e~0_combout\,
	combout => \fsm|e~feeder_combout\);

-- Location: FF_X25_Y16_N1
\fsm|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm|e~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|e~q\);

-- Location: CLKCTRL_G7
\fsm|e~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm|e~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm|e~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y17_N6
\cont|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~0_combout\ = \cont|cont\(0) $ (VCC)
-- \cont|Add0~1\ = CARRY(\cont|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(0),
	datad => VCC,
	combout => \cont|Add0~0_combout\,
	cout => \cont|Add0~1\);

-- Location: LCCOMB_X22_Y17_N0
\cont|cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~12_combout\ = (\cont|Add0~0_combout\ & !\cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|Add0~0_combout\,
	datad => \cont|Equal0~8_combout\,
	combout => \cont|cont~12_combout\);

-- Location: FF_X22_Y17_N1
\cont|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~12_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(0));

-- Location: LCCOMB_X22_Y17_N8
\cont|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~2_combout\ = (\cont|cont\(1) & (!\cont|Add0~1\)) # (!\cont|cont\(1) & ((\cont|Add0~1\) # (GND)))
-- \cont|Add0~3\ = CARRY((!\cont|Add0~1\) # (!\cont|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(1),
	datad => VCC,
	cin => \cont|Add0~1\,
	combout => \cont|Add0~2_combout\,
	cout => \cont|Add0~3\);

-- Location: FF_X22_Y17_N9
\cont|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~2_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(1));

-- Location: LCCOMB_X22_Y17_N10
\cont|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~4_combout\ = (\cont|cont\(2) & (\cont|Add0~3\ $ (GND))) # (!\cont|cont\(2) & (!\cont|Add0~3\ & VCC))
-- \cont|Add0~5\ = CARRY((\cont|cont\(2) & !\cont|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(2),
	datad => VCC,
	cin => \cont|Add0~3\,
	combout => \cont|Add0~4_combout\,
	cout => \cont|Add0~5\);

-- Location: FF_X22_Y17_N11
\cont|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~4_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(2));

-- Location: LCCOMB_X22_Y17_N12
\cont|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~6_combout\ = (\cont|cont\(3) & (!\cont|Add0~5\)) # (!\cont|cont\(3) & ((\cont|Add0~5\) # (GND)))
-- \cont|Add0~7\ = CARRY((!\cont|Add0~5\) # (!\cont|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(3),
	datad => VCC,
	cin => \cont|Add0~5\,
	combout => \cont|Add0~6_combout\,
	cout => \cont|Add0~7\);

-- Location: FF_X22_Y17_N13
\cont|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~6_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(3));

-- Location: LCCOMB_X22_Y17_N14
\cont|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~8_combout\ = (\cont|cont\(4) & (\cont|Add0~7\ $ (GND))) # (!\cont|cont\(4) & (!\cont|Add0~7\ & VCC))
-- \cont|Add0~9\ = CARRY((\cont|cont\(4) & !\cont|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(4),
	datad => VCC,
	cin => \cont|Add0~7\,
	combout => \cont|Add0~8_combout\,
	cout => \cont|Add0~9\);

-- Location: FF_X22_Y17_N15
\cont|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~8_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(4));

-- Location: LCCOMB_X22_Y17_N16
\cont|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~10_combout\ = (\cont|cont\(5) & (!\cont|Add0~9\)) # (!\cont|cont\(5) & ((\cont|Add0~9\) # (GND)))
-- \cont|Add0~11\ = CARRY((!\cont|Add0~9\) # (!\cont|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(5),
	datad => VCC,
	cin => \cont|Add0~9\,
	combout => \cont|Add0~10_combout\,
	cout => \cont|Add0~11\);

-- Location: FF_X22_Y17_N17
\cont|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~10_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(5));

-- Location: LCCOMB_X22_Y17_N18
\cont|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~12_combout\ = (\cont|cont\(6) & (\cont|Add0~11\ $ (GND))) # (!\cont|cont\(6) & (!\cont|Add0~11\ & VCC))
-- \cont|Add0~13\ = CARRY((\cont|cont\(6) & !\cont|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(6),
	datad => VCC,
	cin => \cont|Add0~11\,
	combout => \cont|Add0~12_combout\,
	cout => \cont|Add0~13\);

-- Location: FF_X22_Y17_N19
\cont|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~12_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(6));

-- Location: LCCOMB_X22_Y17_N2
\cont|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Equal0~6_combout\ = (!\cont|cont\(5) & (!\cont|cont\(3) & (!\cont|cont\(4) & !\cont|cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(5),
	datab => \cont|cont\(3),
	datac => \cont|cont\(4),
	datad => \cont|cont\(6),
	combout => \cont|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y17_N2
\cont|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Equal0~7_combout\ = (!\cont|cont\(1) & (!\cont|cont\(0) & !\cont|cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(1),
	datac => \cont|cont\(0),
	datad => \cont|cont\(2),
	combout => \cont|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y17_N20
\cont|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~14_combout\ = (\cont|cont\(7) & (!\cont|Add0~13\)) # (!\cont|cont\(7) & ((\cont|Add0~13\) # (GND)))
-- \cont|Add0~15\ = CARRY((!\cont|Add0~13\) # (!\cont|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(7),
	datad => VCC,
	cin => \cont|Add0~13\,
	combout => \cont|Add0~14_combout\,
	cout => \cont|Add0~15\);

-- Location: FF_X22_Y17_N21
\cont|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~14_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(7));

-- Location: LCCOMB_X22_Y17_N22
\cont|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~16_combout\ = (\cont|cont\(8) & (\cont|Add0~15\ $ (GND))) # (!\cont|cont\(8) & (!\cont|Add0~15\ & VCC))
-- \cont|Add0~17\ = CARRY((\cont|cont\(8) & !\cont|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(8),
	datad => VCC,
	cin => \cont|Add0~15\,
	combout => \cont|Add0~16_combout\,
	cout => \cont|Add0~17\);

-- Location: LCCOMB_X22_Y17_N4
\cont|cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~11_combout\ = (\cont|Add0~16_combout\ & !\cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|Add0~16_combout\,
	datad => \cont|Equal0~8_combout\,
	combout => \cont|cont~11_combout\);

-- Location: FF_X22_Y17_N5
\cont|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~11_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(8));

-- Location: LCCOMB_X22_Y17_N24
\cont|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~18_combout\ = (\cont|cont\(9) & (!\cont|Add0~17\)) # (!\cont|cont\(9) & ((\cont|Add0~17\) # (GND)))
-- \cont|Add0~19\ = CARRY((!\cont|Add0~17\) # (!\cont|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(9),
	datad => VCC,
	cin => \cont|Add0~17\,
	combout => \cont|Add0~18_combout\,
	cout => \cont|Add0~19\);

-- Location: FF_X22_Y17_N25
\cont|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~18_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(9));

-- Location: LCCOMB_X22_Y17_N26
\cont|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~20_combout\ = (\cont|cont\(10) & (\cont|Add0~19\ $ (GND))) # (!\cont|cont\(10) & (!\cont|Add0~19\ & VCC))
-- \cont|Add0~21\ = CARRY((\cont|cont\(10) & !\cont|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(10),
	datad => VCC,
	cin => \cont|Add0~19\,
	combout => \cont|Add0~20_combout\,
	cout => \cont|Add0~21\);

-- Location: FF_X22_Y17_N27
\cont|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~20_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(10));

-- Location: LCCOMB_X23_Y17_N8
\cont|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Equal0~5_combout\ = (!\cont|cont\(7) & (\cont|cont\(8) & (!\cont|cont\(10) & !\cont|cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(7),
	datab => \cont|cont\(8),
	datac => \cont|cont\(10),
	datad => \cont|cont\(9),
	combout => \cont|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y17_N28
\cont|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~22_combout\ = (\cont|cont\(11) & (!\cont|Add0~21\)) # (!\cont|cont\(11) & ((\cont|Add0~21\) # (GND)))
-- \cont|Add0~23\ = CARRY((!\cont|Add0~21\) # (!\cont|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(11),
	datad => VCC,
	cin => \cont|Add0~21\,
	combout => \cont|Add0~22_combout\,
	cout => \cont|Add0~23\);

-- Location: FF_X22_Y17_N29
\cont|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~22_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(11));

-- Location: LCCOMB_X22_Y17_N30
\cont|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~24_combout\ = (\cont|cont\(12) & (\cont|Add0~23\ $ (GND))) # (!\cont|cont\(12) & (!\cont|Add0~23\ & VCC))
-- \cont|Add0~25\ = CARRY((\cont|cont\(12) & !\cont|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(12),
	datad => VCC,
	cin => \cont|Add0~23\,
	combout => \cont|Add0~24_combout\,
	cout => \cont|Add0~25\);

-- Location: FF_X22_Y17_N31
\cont|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~24_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(12));

-- Location: LCCOMB_X22_Y16_N0
\cont|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~26_combout\ = (\cont|cont\(13) & (!\cont|Add0~25\)) # (!\cont|cont\(13) & ((\cont|Add0~25\) # (GND)))
-- \cont|Add0~27\ = CARRY((!\cont|Add0~25\) # (!\cont|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(13),
	datad => VCC,
	cin => \cont|Add0~25\,
	combout => \cont|Add0~26_combout\,
	cout => \cont|Add0~27\);

-- Location: LCCOMB_X23_Y16_N10
\cont|cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~10_combout\ = (\cont|Add0~26_combout\ & !\cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|Add0~26_combout\,
	datac => \cont|Equal0~8_combout\,
	combout => \cont|cont~10_combout\);

-- Location: FF_X23_Y16_N11
\cont|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~10_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(13));

-- Location: LCCOMB_X22_Y16_N2
\cont|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~28_combout\ = (\cont|cont\(14) & (\cont|Add0~27\ $ (GND))) # (!\cont|cont\(14) & (!\cont|Add0~27\ & VCC))
-- \cont|Add0~29\ = CARRY((\cont|cont\(14) & !\cont|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(14),
	datad => VCC,
	cin => \cont|Add0~27\,
	combout => \cont|Add0~28_combout\,
	cout => \cont|Add0~29\);

-- Location: LCCOMB_X23_Y16_N4
\cont|cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~9_combout\ = (!\cont|Equal0~8_combout\ & \cont|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|Equal0~8_combout\,
	datad => \cont|Add0~28_combout\,
	combout => \cont|cont~9_combout\);

-- Location: FF_X23_Y16_N5
\cont|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~9_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(14));

-- Location: LCCOMB_X23_Y17_N12
\cont|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Equal0~3_combout\ = (\cont|cont\(14) & (!\cont|cont\(12) & (\cont|cont\(13) & !\cont|cont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(14),
	datab => \cont|cont\(12),
	datac => \cont|cont\(13),
	datad => \cont|cont\(11),
	combout => \cont|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y16_N4
\cont|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~30_combout\ = (\cont|cont\(15) & (!\cont|Add0~29\)) # (!\cont|cont\(15) & ((\cont|Add0~29\) # (GND)))
-- \cont|Add0~31\ = CARRY((!\cont|Add0~29\) # (!\cont|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(15),
	datad => VCC,
	cin => \cont|Add0~29\,
	combout => \cont|Add0~30_combout\,
	cout => \cont|Add0~31\);

-- Location: LCCOMB_X23_Y16_N28
\cont|cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~8_combout\ = (\cont|Add0~30_combout\ & !\cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont|Add0~30_combout\,
	datac => \cont|Equal0~8_combout\,
	combout => \cont|cont~8_combout\);

-- Location: FF_X23_Y16_N29
\cont|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~8_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(15));

-- Location: LCCOMB_X22_Y16_N6
\cont|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~32_combout\ = (\cont|cont\(16) & (\cont|Add0~31\ $ (GND))) # (!\cont|cont\(16) & (!\cont|Add0~31\ & VCC))
-- \cont|Add0~33\ = CARRY((\cont|cont\(16) & !\cont|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(16),
	datad => VCC,
	cin => \cont|Add0~31\,
	combout => \cont|Add0~32_combout\,
	cout => \cont|Add0~33\);

-- Location: LCCOMB_X23_Y16_N18
\cont|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~7_combout\ = (\cont|Add0~32_combout\ & !\cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont|Add0~32_combout\,
	datac => \cont|Equal0~8_combout\,
	combout => \cont|cont~7_combout\);

-- Location: FF_X23_Y16_N19
\cont|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~7_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(16));

-- Location: LCCOMB_X22_Y16_N8
\cont|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~34_combout\ = (\cont|cont\(17) & (!\cont|Add0~33\)) # (!\cont|cont\(17) & ((\cont|Add0~33\) # (GND)))
-- \cont|Add0~35\ = CARRY((!\cont|Add0~33\) # (!\cont|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(17),
	datad => VCC,
	cin => \cont|Add0~33\,
	combout => \cont|Add0~34_combout\,
	cout => \cont|Add0~35\);

-- Location: FF_X22_Y16_N9
\cont|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~34_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(17));

-- Location: LCCOMB_X22_Y16_N10
\cont|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~36_combout\ = (\cont|cont\(18) & (\cont|Add0~35\ $ (GND))) # (!\cont|cont\(18) & (!\cont|Add0~35\ & VCC))
-- \cont|Add0~37\ = CARRY((\cont|cont\(18) & !\cont|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(18),
	datad => VCC,
	cin => \cont|Add0~35\,
	combout => \cont|Add0~36_combout\,
	cout => \cont|Add0~37\);

-- Location: LCCOMB_X23_Y16_N20
\cont|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~6_combout\ = (!\cont|Equal0~8_combout\ & \cont|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|Equal0~8_combout\,
	datad => \cont|Add0~36_combout\,
	combout => \cont|cont~6_combout\);

-- Location: FF_X23_Y16_N21
\cont|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~6_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(18));

-- Location: LCCOMB_X22_Y16_N12
\cont|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~38_combout\ = (\cont|cont\(19) & (!\cont|Add0~37\)) # (!\cont|cont\(19) & ((\cont|Add0~37\) # (GND)))
-- \cont|Add0~39\ = CARRY((!\cont|Add0~37\) # (!\cont|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(19),
	datad => VCC,
	cin => \cont|Add0~37\,
	combout => \cont|Add0~38_combout\,
	cout => \cont|Add0~39\);

-- Location: FF_X22_Y16_N13
\cont|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~38_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(19));

-- Location: LCCOMB_X22_Y16_N14
\cont|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~40_combout\ = (\cont|cont\(20) & (\cont|Add0~39\ $ (GND))) # (!\cont|cont\(20) & (!\cont|Add0~39\ & VCC))
-- \cont|Add0~41\ = CARRY((\cont|cont\(20) & !\cont|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(20),
	datad => VCC,
	cin => \cont|Add0~39\,
	combout => \cont|Add0~40_combout\,
	cout => \cont|Add0~41\);

-- Location: LCCOMB_X23_Y16_N26
\cont|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~5_combout\ = (!\cont|Equal0~8_combout\ & \cont|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|Equal0~8_combout\,
	datad => \cont|Add0~40_combout\,
	combout => \cont|cont~5_combout\);

-- Location: FF_X23_Y16_N27
\cont|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~5_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(20));

-- Location: LCCOMB_X22_Y16_N16
\cont|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~42_combout\ = (\cont|cont\(21) & (!\cont|Add0~41\)) # (!\cont|cont\(21) & ((\cont|Add0~41\) # (GND)))
-- \cont|Add0~43\ = CARRY((!\cont|Add0~41\) # (!\cont|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(21),
	datad => VCC,
	cin => \cont|Add0~41\,
	combout => \cont|Add0~42_combout\,
	cout => \cont|Add0~43\);

-- Location: LCCOMB_X23_Y16_N12
\cont|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~4_combout\ = (\cont|Add0~42_combout\ & !\cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|Add0~42_combout\,
	datad => \cont|Equal0~8_combout\,
	combout => \cont|cont~4_combout\);

-- Location: FF_X23_Y16_N13
\cont|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~4_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(21));

-- Location: LCCOMB_X22_Y16_N18
\cont|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~44_combout\ = (\cont|cont\(22) & (\cont|Add0~43\ $ (GND))) # (!\cont|cont\(22) & (!\cont|Add0~43\ & VCC))
-- \cont|Add0~45\ = CARRY((\cont|cont\(22) & !\cont|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(22),
	datad => VCC,
	cin => \cont|Add0~43\,
	combout => \cont|Add0~44_combout\,
	cout => \cont|Add0~45\);

-- Location: LCCOMB_X23_Y16_N30
\cont|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~3_combout\ = (!\cont|Equal0~8_combout\ & \cont|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|Equal0~8_combout\,
	datad => \cont|Add0~44_combout\,
	combout => \cont|cont~3_combout\);

-- Location: FF_X23_Y16_N31
\cont|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~3_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(22));

-- Location: LCCOMB_X22_Y16_N30
\cont|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Equal0~1_combout\ = (\cont|cont\(22) & (\cont|cont\(20) & (\cont|cont\(21) & !\cont|cont\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(22),
	datab => \cont|cont\(20),
	datac => \cont|cont\(21),
	datad => \cont|cont\(19),
	combout => \cont|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y16_N20
\cont|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~46_combout\ = (\cont|cont\(23) & (!\cont|Add0~45\)) # (!\cont|cont\(23) & ((\cont|Add0~45\) # (GND)))
-- \cont|Add0~47\ = CARRY((!\cont|Add0~45\) # (!\cont|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(23),
	datad => VCC,
	cin => \cont|Add0~45\,
	combout => \cont|Add0~46_combout\,
	cout => \cont|Add0~47\);

-- Location: LCCOMB_X23_Y16_N8
\cont|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~2_combout\ = (!\cont|Equal0~8_combout\ & \cont|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|Equal0~8_combout\,
	datad => \cont|Add0~46_combout\,
	combout => \cont|cont~2_combout\);

-- Location: FF_X23_Y16_N9
\cont|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~2_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(23));

-- Location: LCCOMB_X22_Y16_N22
\cont|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~48_combout\ = (\cont|cont\(24) & (\cont|Add0~47\ $ (GND))) # (!\cont|cont\(24) & (!\cont|Add0~47\ & VCC))
-- \cont|Add0~49\ = CARRY((\cont|cont\(24) & !\cont|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(24),
	datad => VCC,
	cin => \cont|Add0~47\,
	combout => \cont|Add0~48_combout\,
	cout => \cont|Add0~49\);

-- Location: LCCOMB_X23_Y16_N2
\cont|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~1_combout\ = (!\cont|Equal0~8_combout\ & \cont|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|Equal0~8_combout\,
	datad => \cont|Add0~48_combout\,
	combout => \cont|cont~1_combout\);

-- Location: FF_X23_Y16_N3
\cont|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~1_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(24));

-- Location: LCCOMB_X22_Y16_N24
\cont|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~50_combout\ = (\cont|cont\(25) & (!\cont|Add0~49\)) # (!\cont|cont\(25) & ((\cont|Add0~49\) # (GND)))
-- \cont|Add0~51\ = CARRY((!\cont|Add0~49\) # (!\cont|cont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|cont\(25),
	datad => VCC,
	cin => \cont|Add0~49\,
	combout => \cont|Add0~50_combout\,
	cout => \cont|Add0~51\);

-- Location: FF_X22_Y16_N25
\cont|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|Add0~50_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(25));

-- Location: LCCOMB_X22_Y16_N26
\cont|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Add0~52_combout\ = \cont|Add0~51\ $ (!\cont|cont\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cont|cont\(26),
	cin => \cont|Add0~51\,
	combout => \cont|Add0~52_combout\);

-- Location: LCCOMB_X23_Y16_N24
\cont|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|cont~0_combout\ = (\cont|Add0~52_combout\ & !\cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|Add0~52_combout\,
	datad => \cont|Equal0~8_combout\,
	combout => \cont|cont~0_combout\);

-- Location: FF_X23_Y16_N25
\cont|cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|cont~0_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|cont\(26));

-- Location: LCCOMB_X22_Y16_N28
\cont|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Equal0~0_combout\ = (!\cont|cont\(25) & (\cont|cont\(26) & (\cont|cont\(23) & \cont|cont\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(25),
	datab => \cont|cont\(26),
	datac => \cont|cont\(23),
	datad => \cont|cont\(24),
	combout => \cont|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y16_N22
\cont|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Equal0~2_combout\ = (!\cont|cont\(17) & (\cont|cont\(15) & (\cont|cont\(18) & \cont|cont\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|cont\(17),
	datab => \cont|cont\(15),
	datac => \cont|cont\(18),
	datad => \cont|cont\(16),
	combout => \cont|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y17_N18
\cont|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Equal0~4_combout\ = (\cont|Equal0~3_combout\ & (\cont|Equal0~1_combout\ & (\cont|Equal0~0_combout\ & \cont|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|Equal0~3_combout\,
	datab => \cont|Equal0~1_combout\,
	datac => \cont|Equal0~0_combout\,
	datad => \cont|Equal0~2_combout\,
	combout => \cont|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y17_N4
\cont|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|Equal0~8_combout\ = (\cont|Equal0~6_combout\ & (\cont|Equal0~7_combout\ & (\cont|Equal0~5_combout\ & \cont|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|Equal0~6_combout\,
	datab => \cont|Equal0~7_combout\,
	datac => \cont|Equal0~5_combout\,
	datad => \cont|Equal0~4_combout\,
	combout => \cont|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y16_N6
\cont|bus_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|bus_out~0_combout\ = (\cont|Equal0~8_combout\) # (\cont|bus_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|Equal0~8_combout\,
	datac => \cont|bus_out~q\,
	combout => \cont|bus_out~0_combout\);

-- Location: FF_X23_Y16_N7
\cont|bus_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont|bus_out~0_combout\,
	clrn => \fsm|ALT_INV_WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|bus_out~q\);

-- Location: IOIBUF_X23_Y24_N8
\entradas[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(0),
	o => \entradas[0]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\entradas[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(1),
	o => \entradas[1]~input_o\);

-- Location: LCCOMB_X24_Y16_N12
\fsm|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector9~0_combout\ = (\fsm|current_state.ReturnHome4~q\) # ((\entradas[0]~input_o\) # (\entradas[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.ReturnHome4~q\,
	datac => \entradas[0]~input_o\,
	datad => \entradas[1]~input_o\,
	combout => \fsm|Selector9~0_combout\);

-- Location: IOIBUF_X16_Y24_N8
\entradas[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(3),
	o => \entradas[3]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\entradas[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(2),
	o => \entradas[2]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\entradas[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(4),
	o => \entradas[4]~input_o\);

-- Location: LCCOMB_X24_Y16_N4
\fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = (\entradas[3]~input_o\ & ((\entradas[1]~input_o\) # ((\entradas[2]~input_o\) # (\entradas[4]~input_o\)))) # (!\entradas[3]~input_o\ & ((\entradas[1]~input_o\ & ((\entradas[2]~input_o\) # (\entradas[4]~input_o\))) # 
-- (!\entradas[1]~input_o\ & (\entradas[2]~input_o\ $ (!\entradas[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[3]~input_o\,
	datab => \entradas[1]~input_o\,
	datac => \entradas[2]~input_o\,
	datad => \entradas[4]~input_o\,
	combout => \fsm|Selector0~0_combout\);

-- Location: LCCOMB_X24_Y16_N14
\fsm|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~1_combout\ = (\entradas[2]~input_o\) # ((\entradas[1]~input_o\) # (\entradas[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[2]~input_o\,
	datab => \entradas[1]~input_o\,
	datad => \entradas[3]~input_o\,
	combout => \fsm|Selector0~1_combout\);

-- Location: LCCOMB_X24_Y16_N20
\fsm|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~2_combout\ = (\fsm|current_state.ClearDisplay2~q\ & ((\fsm|Selector0~0_combout\ & ((\fsm|Selector0~1_combout\) # (!\entradas[0]~input_o\))) # (!\fsm|Selector0~0_combout\ & ((\entradas[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector0~0_combout\,
	datab => \fsm|Selector0~1_combout\,
	datac => \entradas[0]~input_o\,
	datad => \fsm|current_state.ClearDisplay2~q\,
	combout => \fsm|Selector0~2_combout\);

-- Location: LCCOMB_X22_Y20_N28
\fsm|current_state.FunctionSet1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.FunctionSet1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fsm|current_state.FunctionSet1~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset_low~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_low,
	o => \reset_low~input_o\);

-- Location: CLKCTRL_G4
\reset_low~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_low~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_low~inputclkctrl_outclk\);

-- Location: FF_X22_Y20_N29
\fsm|current_state.FunctionSet1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.FunctionSet1~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.FunctionSet1~q\);

-- Location: LCCOMB_X23_Y20_N8
\fsm|current_state.FunctionSet2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.FunctionSet2~0_combout\ = !\fsm|current_state.FunctionSet1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.FunctionSet1~q\,
	combout => \fsm|current_state.FunctionSet2~0_combout\);

-- Location: FF_X23_Y20_N9
\fsm|current_state.FunctionSet2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.FunctionSet2~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.FunctionSet2~q\);

-- Location: FF_X23_Y20_N5
\fsm|current_state.FunctionSet3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.FunctionSet2~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.FunctionSet3~q\);

-- Location: FF_X23_Y20_N29
\fsm|current_state.FunctionSet4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.FunctionSet3~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.FunctionSet4~q\);

-- Location: FF_X23_Y20_N1
\fsm|current_state.ClearDisplay1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.FunctionSet4~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.ClearDisplay1~q\);

-- Location: FF_X23_Y20_N19
\fsm|current_state.DisplayControl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.ClearDisplay1~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.DisplayControl~q\);

-- Location: FF_X24_Y16_N15
\fsm|current_state.EntryMode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.DisplayControl~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.EntryMode~q\);

-- Location: LCCOMB_X24_Y16_N16
\fsm|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux1~0_combout\ = (!\entradas[1]~input_o\ & (!\entradas[2]~input_o\ & (\entradas[0]~input_o\ $ (\entradas[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[0]~input_o\,
	datab => \entradas[1]~input_o\,
	datac => \entradas[2]~input_o\,
	datad => \entradas[4]~input_o\,
	combout => \fsm|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\fsm|next_state.Write1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|next_state.Write1~0_combout\ = (\fsm|Mux1~0_combout\ & (\fsm|current_state.ClearDisplay2~q\ & !\entradas[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Mux1~0_combout\,
	datac => \fsm|current_state.ClearDisplay2~q\,
	datad => \entradas[3]~input_o\,
	combout => \fsm|next_state.Write1~0_combout\);

-- Location: FF_X23_Y20_N31
\fsm|current_state.Write1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|next_state.Write1~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write1~q\);

-- Location: LCCOMB_X24_Y20_N14
\fsm|current_state.Write2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write2~feeder_combout\ = \fsm|current_state.Write1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write1~q\,
	combout => \fsm|current_state.Write2~feeder_combout\);

-- Location: FF_X24_Y20_N15
\fsm|current_state.Write2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write2~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write2~q\);

-- Location: FF_X24_Y20_N19
\fsm|current_state.Write3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write2~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write3~q\);

-- Location: LCCOMB_X25_Y20_N18
\fsm|current_state.Write4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write4~feeder_combout\ = \fsm|current_state.Write3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write3~q\,
	combout => \fsm|current_state.Write4~feeder_combout\);

-- Location: FF_X25_Y20_N19
\fsm|current_state.Write4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write4~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write4~q\);

-- Location: LCCOMB_X25_Y20_N24
\fsm|current_state.Write5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write5~feeder_combout\ = \fsm|current_state.Write4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write4~q\,
	combout => \fsm|current_state.Write5~feeder_combout\);

-- Location: FF_X25_Y20_N25
\fsm|current_state.Write5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write5~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write5~q\);

-- Location: LCCOMB_X25_Y20_N6
\fsm|current_state.Write6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write6~feeder_combout\ = \fsm|current_state.Write5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write5~q\,
	combout => \fsm|current_state.Write6~feeder_combout\);

-- Location: FF_X25_Y20_N7
\fsm|current_state.Write6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write6~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write6~q\);

-- Location: LCCOMB_X25_Y20_N30
\fsm|current_state.Write7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write7~feeder_combout\ = \fsm|current_state.Write6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write6~q\,
	combout => \fsm|current_state.Write7~feeder_combout\);

-- Location: FF_X25_Y20_N31
\fsm|current_state.Write7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write7~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write7~q\);

-- Location: LCCOMB_X25_Y20_N22
\fsm|current_state.Write8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write8~feeder_combout\ = \fsm|current_state.Write7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|current_state.Write7~q\,
	combout => \fsm|current_state.Write8~feeder_combout\);

-- Location: FF_X25_Y20_N23
\fsm|current_state.Write8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write8~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write8~q\);

-- Location: FF_X25_Y20_N3
\fsm|current_state.Write9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write8~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write9~q\);

-- Location: LCCOMB_X25_Y20_N10
\fsm|current_state.Write10~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write10~feeder_combout\ = \fsm|current_state.Write9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write9~q\,
	combout => \fsm|current_state.Write10~feeder_combout\);

-- Location: FF_X25_Y20_N11
\fsm|current_state.Write10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write10~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write10~q\);

-- Location: LCCOMB_X25_Y20_N16
\fsm|current_state.Write11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write11~feeder_combout\ = \fsm|current_state.Write10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write10~q\,
	combout => \fsm|current_state.Write11~feeder_combout\);

-- Location: FF_X25_Y20_N17
\fsm|current_state.Write11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write11~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write11~q\);

-- Location: LCCOMB_X25_Y20_N8
\fsm|current_state.Write12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write12~feeder_combout\ = \fsm|current_state.Write11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write11~q\,
	combout => \fsm|current_state.Write12~feeder_combout\);

-- Location: FF_X25_Y20_N9
\fsm|current_state.Write12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write12~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write12~q\);

-- Location: FF_X24_Y20_N3
\fsm|current_state.Write13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write12~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write13~q\);

-- Location: FF_X24_Y20_N31
\fsm|current_state.SetAddress\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write13~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.SetAddress~q\);

-- Location: FF_X24_Y20_N13
\fsm|current_state.Write14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.SetAddress~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write14~q\);

-- Location: FF_X25_Y20_N13
\fsm|current_state.Write15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write14~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write15~q\);

-- Location: FF_X24_Y20_N23
\fsm|current_state.Write16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write15~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write16~q\);

-- Location: FF_X24_Y20_N25
\fsm|current_state.Write17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write16~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write17~q\);

-- Location: FF_X24_Y20_N7
\fsm|current_state.Write18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write17~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write18~q\);

-- Location: FF_X25_Y20_N15
\fsm|current_state.Write19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write18~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write19~q\);

-- Location: FF_X25_Y20_N27
\fsm|current_state.Write20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write19~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write20~q\);

-- Location: FF_X25_Y20_N5
\fsm|current_state.Write21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write20~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write21~q\);

-- Location: FF_X25_Y20_N21
\fsm|current_state.Write22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write21~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write22~q\);

-- Location: FF_X24_Y20_N11
\fsm|current_state.Write23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write22~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write23~q\);

-- Location: LCCOMB_X23_Y16_N16
\fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector1~0_combout\ = (\fsm|current_state.Write23~q\) # ((!\cont|bus_out~q\ & \fsm|current_state.ReturnHome1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|bus_out~q\,
	datab => \fsm|current_state.Write23~q\,
	datac => \fsm|current_state.ReturnHome1~q\,
	combout => \fsm|Selector1~0_combout\);

-- Location: FF_X23_Y16_N17
\fsm|current_state.ReturnHome1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|Selector1~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.ReturnHome1~q\);

-- Location: LCCOMB_X23_Y20_N12
\fsm|next_state.ClearDisplay3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|next_state.ClearDisplay3~0_combout\ = (\cont|bus_out~q\ & (\fsm|nx_proc:flag~combout\ & \fsm|current_state.ReturnHome1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont|bus_out~q\,
	datac => \fsm|nx_proc:flag~combout\,
	datad => \fsm|current_state.ReturnHome1~q\,
	combout => \fsm|next_state.ClearDisplay3~0_combout\);

-- Location: FF_X23_Y20_N13
\fsm|current_state.ClearDisplay3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|next_state.ClearDisplay3~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.ClearDisplay3~q\);

-- Location: LCCOMB_X23_Y18_N0
\fsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector6~0_combout\ = (!\entradas[3]~input_o\ & (!\entradas[0]~input_o\ & (\fsm|current_state.ClearDisplay2~q\ & !\entradas[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[3]~input_o\,
	datab => \entradas[0]~input_o\,
	datac => \fsm|current_state.ClearDisplay2~q\,
	datad => \entradas[4]~input_o\,
	combout => \fsm|Selector6~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\fsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = (\fsm|current_state.ClearDisplay3~q\) # ((\entradas[1]~input_o\ & (!\entradas[2]~input_o\ & \fsm|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.ClearDisplay3~q\,
	datab => \entradas[1]~input_o\,
	datac => \entradas[2]~input_o\,
	datad => \fsm|Selector6~0_combout\,
	combout => \fsm|Selector5~0_combout\);

-- Location: FF_X23_Y20_N25
\fsm|current_state.Write24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|Selector5~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write24~q\);

-- Location: LCCOMB_X23_Y20_N16
\fsm|current_state.Write25~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write25~feeder_combout\ = \fsm|current_state.Write24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write24~q\,
	combout => \fsm|current_state.Write25~feeder_combout\);

-- Location: FF_X23_Y20_N17
\fsm|current_state.Write25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write25~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write25~q\);

-- Location: LCCOMB_X23_Y20_N22
\fsm|current_state.Write26~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write26~feeder_combout\ = \fsm|current_state.Write25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write25~q\,
	combout => \fsm|current_state.Write26~feeder_combout\);

-- Location: FF_X23_Y20_N23
\fsm|current_state.Write26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write26~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write26~q\);

-- Location: LCCOMB_X23_Y20_N2
\fsm|current_state.Write27~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write27~feeder_combout\ = \fsm|current_state.Write26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write26~q\,
	combout => \fsm|current_state.Write27~feeder_combout\);

-- Location: FF_X23_Y20_N3
\fsm|current_state.Write27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write27~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write27~q\);

-- Location: LCCOMB_X24_Y20_N28
\fsm|current_state.Write28~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|current_state.Write28~feeder_combout\ = \fsm|current_state.Write27~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|current_state.Write27~q\,
	combout => \fsm|current_state.Write28~feeder_combout\);

-- Location: FF_X24_Y20_N29
\fsm|current_state.Write28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|current_state.Write28~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write28~q\);

-- Location: LCCOMB_X24_Y16_N26
\fsm|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector2~0_combout\ = (\fsm|current_state.Write28~q\) # ((!\cont|bus_out~q\ & \fsm|current_state.ReturnHome2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|bus_out~q\,
	datac => \fsm|current_state.ReturnHome2~q\,
	datad => \fsm|current_state.Write28~q\,
	combout => \fsm|Selector2~0_combout\);

-- Location: FF_X24_Y16_N27
\fsm|current_state.ReturnHome2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|Selector2~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.ReturnHome2~q\);

-- Location: LCCOMB_X23_Y20_N20
\fsm|next_state.ClearDisplay4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|next_state.ClearDisplay4~0_combout\ = (\fsm|nx_proc:flag~combout\ & (\cont|bus_out~q\ & \fsm|current_state.ReturnHome2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|nx_proc:flag~combout\,
	datac => \cont|bus_out~q\,
	datad => \fsm|current_state.ReturnHome2~q\,
	combout => \fsm|next_state.ClearDisplay4~0_combout\);

-- Location: FF_X23_Y20_N21
\fsm|current_state.ClearDisplay4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|next_state.ClearDisplay4~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.ClearDisplay4~q\);

-- Location: LCCOMB_X23_Y20_N6
\fsm|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector6~1_combout\ = (\fsm|current_state.ClearDisplay4~q\) # ((!\entradas[1]~input_o\ & (\entradas[2]~input_o\ & \fsm|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.ClearDisplay4~q\,
	datab => \entradas[1]~input_o\,
	datac => \entradas[2]~input_o\,
	datad => \fsm|Selector6~0_combout\,
	combout => \fsm|Selector6~1_combout\);

-- Location: FF_X23_Y20_N7
\fsm|current_state.Write29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|Selector6~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write29~q\);

-- Location: FF_X24_Y20_N9
\fsm|current_state.Write30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write29~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write30~q\);

-- Location: FF_X24_Y20_N5
\fsm|current_state.Write31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write30~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write31~q\);

-- Location: FF_X24_Y20_N27
\fsm|current_state.Write32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write31~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write32~q\);

-- Location: FF_X24_Y20_N21
\fsm|current_state.Write33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write32~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write33~q\);

-- Location: LCCOMB_X23_Y16_N14
\fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~0_combout\ = (\fsm|current_state.Write33~q\) # ((!\cont|bus_out~q\ & \fsm|current_state.ReturnHome3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont|bus_out~q\,
	datac => \fsm|current_state.ReturnHome3~q\,
	datad => \fsm|current_state.Write33~q\,
	combout => \fsm|Selector3~0_combout\);

-- Location: FF_X23_Y16_N15
\fsm|current_state.ReturnHome3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|Selector3~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.ReturnHome3~q\);

-- Location: LCCOMB_X24_Y16_N10
\fsm|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~3_combout\ = (!\fsm|nx_proc:flag~combout\ & ((\fsm|current_state.ReturnHome1~q\) # ((\fsm|current_state.ReturnHome2~q\) # (\fsm|current_state.ReturnHome3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.ReturnHome1~q\,
	datab => \fsm|current_state.ReturnHome2~q\,
	datac => \fsm|nx_proc:flag~combout\,
	datad => \fsm|current_state.ReturnHome3~q\,
	combout => \fsm|Selector0~3_combout\);

-- Location: LCCOMB_X24_Y16_N18
\fsm|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~4_combout\ = (\fsm|current_state.EntryMode~q\) # ((\cont|bus_out~q\ & ((\fsm|current_state.ReturnHome4~q\) # (\fsm|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.ReturnHome4~q\,
	datab => \fsm|current_state.EntryMode~q\,
	datac => \cont|bus_out~q\,
	datad => \fsm|Selector0~3_combout\,
	combout => \fsm|Selector0~4_combout\);

-- Location: LCCOMB_X24_Y16_N6
\fsm|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~5_combout\ = (\fsm|Selector0~2_combout\) # (\fsm|Selector0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector0~2_combout\,
	datad => \fsm|Selector0~4_combout\,
	combout => \fsm|Selector0~5_combout\);

-- Location: FF_X24_Y16_N7
\fsm|current_state.ClearDisplay2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~q\,
	d => \fsm|Selector0~5_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.ClearDisplay2~q\);

-- Location: LCCOMB_X24_Y16_N8
\fsm|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector8~0_combout\ = (!\entradas[2]~input_o\ & (\entradas[4]~input_o\ & (!\entradas[0]~input_o\ & !\entradas[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[2]~input_o\,
	datab => \entradas[4]~input_o\,
	datac => \entradas[0]~input_o\,
	datad => \entradas[1]~input_o\,
	combout => \fsm|Selector8~0_combout\);

-- Location: LCCOMB_X24_Y16_N24
\fsm|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector8~1_combout\ = (\fsm|current_state.ReturnHome4~q\) # ((\fsm|current_state.ClearDisplay2~q\ & (!\entradas[3]~input_o\ & \fsm|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.ClearDisplay2~q\,
	datab => \entradas[3]~input_o\,
	datac => \fsm|Selector8~0_combout\,
	datad => \fsm|current_state.ReturnHome4~q\,
	combout => \fsm|Selector8~1_combout\);

-- Location: LCCOMB_X24_Y16_N30
\fsm|nx_proc:flag\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|nx_proc:flag~combout\ = (\fsm|Selector8~1_combout\ & ((!\fsm|Selector9~0_combout\))) # (!\fsm|Selector8~1_combout\ & (\fsm|nx_proc:flag~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|nx_proc:flag~combout\,
	datab => \fsm|Selector9~0_combout\,
	datad => \fsm|Selector8~1_combout\,
	combout => \fsm|nx_proc:flag~combout\);

-- Location: LCCOMB_X24_Y16_N22
\fsm|next_state.ClearDisplay5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|next_state.ClearDisplay5~0_combout\ = (\cont|bus_out~q\ & (\fsm|nx_proc:flag~combout\ & \fsm|current_state.ReturnHome3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|bus_out~q\,
	datac => \fsm|nx_proc:flag~combout\,
	datad => \fsm|current_state.ReturnHome3~q\,
	combout => \fsm|next_state.ClearDisplay5~0_combout\);

-- Location: FF_X24_Y16_N23
\fsm|current_state.ClearDisplay5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|next_state.ClearDisplay5~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.ClearDisplay5~q\);

-- Location: LCCOMB_X24_Y16_N0
\fsm|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector7~0_combout\ = (\entradas[3]~input_o\ & (!\entradas[0]~input_o\ & (!\entradas[2]~input_o\ & !\entradas[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[3]~input_o\,
	datab => \entradas[0]~input_o\,
	datac => \entradas[2]~input_o\,
	datad => \entradas[1]~input_o\,
	combout => \fsm|Selector7~0_combout\);

-- Location: LCCOMB_X24_Y16_N2
\fsm|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector7~1_combout\ = (\fsm|current_state.ClearDisplay5~q\) # ((\fsm|current_state.ClearDisplay2~q\ & (!\entradas[4]~input_o\ & \fsm|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.ClearDisplay5~q\,
	datab => \fsm|current_state.ClearDisplay2~q\,
	datac => \entradas[4]~input_o\,
	datad => \fsm|Selector7~0_combout\,
	combout => \fsm|Selector7~1_combout\);

-- Location: FF_X24_Y16_N3
\fsm|current_state.Write34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	d => \fsm|Selector7~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write34~q\);

-- Location: FF_X24_Y20_N1
\fsm|current_state.Write35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write34~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write35~q\);

-- Location: FF_X24_Y20_N17
\fsm|current_state.Write36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write35~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write36~q\);

-- Location: FF_X24_Y16_N31
\fsm|current_state.Write37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~clkctrl_outclk\,
	asdata => \fsm|current_state.Write36~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.Write37~q\);

-- Location: LCCOMB_X24_Y16_N28
\fsm|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector4~0_combout\ = (\fsm|current_state.Write37~q\) # ((\fsm|current_state.ReturnHome4~q\ & !\cont|bus_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|current_state.Write37~q\,
	datac => \fsm|current_state.ReturnHome4~q\,
	datad => \cont|bus_out~q\,
	combout => \fsm|Selector4~0_combout\);

-- Location: FF_X24_Y16_N29
\fsm|current_state.ReturnHome4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm|e~q\,
	d => \fsm|Selector4~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|current_state.ReturnHome4~q\);

-- Location: LCCOMB_X23_Y16_N0
\fsm|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr18~0_combout\ = (!\fsm|current_state.ReturnHome4~q\ & (!\fsm|current_state.ReturnHome1~q\ & (!\fsm|current_state.ReturnHome3~q\ & !\fsm|current_state.ReturnHome2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.ReturnHome4~q\,
	datab => \fsm|current_state.ReturnHome1~q\,
	datac => \fsm|current_state.ReturnHome3~q\,
	datad => \fsm|current_state.ReturnHome2~q\,
	combout => \fsm|WideOr18~0_combout\);

-- Location: LCCOMB_X23_Y20_N0
\fsm|WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr16~0_combout\ = (!\fsm|current_state.ClearDisplay4~q\ & (!\fsm|current_state.ClearDisplay2~q\ & (!\fsm|current_state.ClearDisplay1~q\ & !\fsm|current_state.ClearDisplay3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.ClearDisplay4~q\,
	datab => \fsm|current_state.ClearDisplay2~q\,
	datac => \fsm|current_state.ClearDisplay1~q\,
	datad => \fsm|current_state.ClearDisplay3~q\,
	combout => \fsm|WideOr16~0_combout\);

-- Location: LCCOMB_X23_Y20_N4
\fsm|WideOr16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr16~1_combout\ = (!\fsm|current_state.ClearDisplay5~q\ & \fsm|WideOr16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|current_state.ClearDisplay5~q\,
	datad => \fsm|WideOr16~0_combout\,
	combout => \fsm|WideOr16~1_combout\);

-- Location: LCCOMB_X23_Y20_N18
\fsm|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr10~0_combout\ = (\fsm|WideOr18~0_combout\ & (!\fsm|current_state.EntryMode~q\ & (!\fsm|current_state.DisplayControl~q\ & \fsm|WideOr16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr18~0_combout\,
	datab => \fsm|current_state.EntryMode~q\,
	datac => \fsm|current_state.DisplayControl~q\,
	datad => \fsm|WideOr16~1_combout\,
	combout => \fsm|WideOr10~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\fsm|WideOr10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr10~1_combout\ = (!\fsm|current_state.FunctionSet2~q\ & (!\fsm|current_state.FunctionSet3~q\ & (!\fsm|current_state.FunctionSet4~q\ & \fsm|current_state.FunctionSet1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.FunctionSet2~q\,
	datab => \fsm|current_state.FunctionSet3~q\,
	datac => \fsm|current_state.FunctionSet4~q\,
	datad => \fsm|current_state.FunctionSet1~q\,
	combout => \fsm|WideOr10~1_combout\);

-- Location: LCCOMB_X23_Y20_N10
\fsm|WideOr17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr17~combout\ = ((\fsm|current_state.SetAddress~q\) # (!\fsm|WideOr10~1_combout\)) # (!\fsm|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|WideOr10~0_combout\,
	datac => \fsm|current_state.SetAddress~q\,
	datad => \fsm|WideOr10~1_combout\,
	combout => \fsm|WideOr17~combout\);

-- Location: LCCOMB_X25_Y20_N12
\fsm|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr13~0_combout\ = (!\fsm|current_state.Write8~q\ & (!\fsm|current_state.Write11~q\ & (!\fsm|current_state.Write15~q\ & !\fsm|current_state.Write4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.Write8~q\,
	datab => \fsm|current_state.Write11~q\,
	datac => \fsm|current_state.Write15~q\,
	datad => \fsm|current_state.Write4~q\,
	combout => \fsm|WideOr13~0_combout\);

-- Location: LCCOMB_X24_Y20_N20
\fsm|WideOr13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr13~1_combout\ = (\fsm|WideOr13~0_combout\ & (!\fsm|current_state.Write23~q\ & (!\fsm|current_state.Write33~q\ & !\fsm|current_state.Write27~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr13~0_combout\,
	datab => \fsm|current_state.Write23~q\,
	datac => \fsm|current_state.Write33~q\,
	datad => \fsm|current_state.Write27~q\,
	combout => \fsm|WideOr13~1_combout\);

-- Location: LCCOMB_X24_Y20_N12
\fsm|WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr15~0_combout\ = (!\fsm|current_state.Write36~q\ & (!\fsm|current_state.Write24~q\ & (!\fsm|current_state.Write14~q\ & \fsm|WideOr13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.Write36~q\,
	datab => \fsm|current_state.Write24~q\,
	datac => \fsm|current_state.Write14~q\,
	datad => \fsm|WideOr13~1_combout\,
	combout => \fsm|WideOr15~0_combout\);

-- Location: LCCOMB_X24_Y20_N22
\fsm|WideOr16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr16~2_combout\ = (\fsm|current_state.Write25~q\) # ((\fsm|current_state.Write10~q\) # ((\fsm|current_state.Write16~q\) # (\fsm|current_state.Write26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.Write25~q\,
	datab => \fsm|current_state.Write10~q\,
	datac => \fsm|current_state.Write16~q\,
	datad => \fsm|current_state.Write26~q\,
	combout => \fsm|WideOr16~2_combout\);

-- Location: LCCOMB_X25_Y20_N4
\fsm|WideOr16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr16~3_combout\ = (\fsm|current_state.Write2~q\) # ((\fsm|current_state.Write19~q\) # ((\fsm|current_state.Write21~q\) # (\fsm|current_state.Write6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.Write2~q\,
	datab => \fsm|current_state.Write19~q\,
	datac => \fsm|current_state.Write21~q\,
	datad => \fsm|current_state.Write6~q\,
	combout => \fsm|WideOr16~3_combout\);

-- Location: LCCOMB_X24_Y20_N8
\fsm|WideOr16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr16~4_combout\ = (\fsm|WideOr16~3_combout\) # (((\fsm|current_state.Write30~q\) # (\fsm|current_state.Write37~q\)) # (!\fsm|WideOr16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr16~3_combout\,
	datab => \fsm|WideOr16~1_combout\,
	datac => \fsm|current_state.Write30~q\,
	datad => \fsm|current_state.Write37~q\,
	combout => \fsm|WideOr16~4_combout\);

-- Location: LCCOMB_X24_Y20_N4
\fsm|WideOr16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr16~combout\ = ((\fsm|WideOr16~2_combout\) # (\fsm|WideOr16~4_combout\)) # (!\fsm|WideOr15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr15~0_combout\,
	datab => \fsm|WideOr16~2_combout\,
	datad => \fsm|WideOr16~4_combout\,
	combout => \fsm|WideOr16~combout\);

-- Location: LCCOMB_X24_Y20_N18
\fsm|WideOr15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr15~1_combout\ = (\fsm|current_state.Write31~q\) # ((\fsm|current_state.Write3~q\) # (\fsm|current_state.Write28~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|current_state.Write31~q\,
	datac => \fsm|current_state.Write3~q\,
	datad => \fsm|current_state.Write28~q\,
	combout => \fsm|WideOr15~1_combout\);

-- Location: LCCOMB_X25_Y20_N0
\fsm|WideOr15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr15~2_combout\ = (\fsm|current_state.EntryMode~q\) # ((\fsm|current_state.Write9~q\) # ((\fsm|current_state.Write34~q\) # (\fsm|current_state.Write5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.EntryMode~q\,
	datab => \fsm|current_state.Write9~q\,
	datac => \fsm|current_state.Write34~q\,
	datad => \fsm|current_state.Write5~q\,
	combout => \fsm|WideOr15~2_combout\);

-- Location: LCCOMB_X25_Y20_N14
\fsm|WideOr15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr15~combout\ = ((\fsm|WideOr15~1_combout\) # (\fsm|WideOr15~2_combout\)) # (!\fsm|WideOr15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr15~0_combout\,
	datab => \fsm|WideOr15~1_combout\,
	datad => \fsm|WideOr15~2_combout\,
	combout => \fsm|WideOr15~combout\);

-- Location: LCCOMB_X23_Y20_N14
\fsm|WideOr13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr13~2_combout\ = (!\fsm|current_state.DisplayControl~q\ & (!\fsm|current_state.Write26~q\ & (!\fsm|current_state.Write1~q\ & !\fsm|current_state.Write16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.DisplayControl~q\,
	datab => \fsm|current_state.Write26~q\,
	datac => \fsm|current_state.Write1~q\,
	datad => \fsm|current_state.Write16~q\,
	combout => \fsm|WideOr13~2_combout\);

-- Location: LCCOMB_X24_Y20_N6
\fsm|WideOr13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr13~3_combout\ = (!\fsm|current_state.Write32~q\ & (!\fsm|current_state.Write18~q\ & !\fsm|current_state.Write28~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.Write32~q\,
	datac => \fsm|current_state.Write18~q\,
	datad => \fsm|current_state.Write28~q\,
	combout => \fsm|WideOr13~3_combout\);

-- Location: LCCOMB_X24_Y20_N10
\fsm|WideOr13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr13~4_combout\ = (\fsm|WideOr13~2_combout\ & (\fsm|WideOr13~1_combout\ & \fsm|WideOr13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr13~2_combout\,
	datab => \fsm|WideOr13~1_combout\,
	datad => \fsm|WideOr13~3_combout\,
	combout => \fsm|WideOr13~4_combout\);

-- Location: LCCOMB_X25_Y20_N26
\fsm|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr12~0_combout\ = (!\fsm|current_state.Write7~q\ & (!\fsm|current_state.Write13~q\ & (!\fsm|current_state.Write20~q\ & \fsm|WideOr10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.Write7~q\,
	datab => \fsm|current_state.Write13~q\,
	datac => \fsm|current_state.Write20~q\,
	datad => \fsm|WideOr10~1_combout\,
	combout => \fsm|WideOr12~0_combout\);

-- Location: LCCOMB_X25_Y20_N20
\fsm|WideOr14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr14~0_combout\ = (\fsm|current_state.EntryMode~q\) # ((\fsm|current_state.Write19~q\) # ((\fsm|current_state.Write22~q\) # (\fsm|current_state.Write34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.EntryMode~q\,
	datab => \fsm|current_state.Write19~q\,
	datac => \fsm|current_state.Write22~q\,
	datad => \fsm|current_state.Write34~q\,
	combout => \fsm|WideOr14~0_combout\);

-- Location: LCCOMB_X25_Y20_N28
\fsm|WideOr14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr14~1_combout\ = (((\fsm|current_state.Write36~q\) # (\fsm|WideOr14~0_combout\)) # (!\fsm|WideOr12~0_combout\)) # (!\fsm|WideOr13~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr13~4_combout\,
	datab => \fsm|WideOr12~0_combout\,
	datac => \fsm|current_state.Write36~q\,
	datad => \fsm|WideOr14~0_combout\,
	combout => \fsm|WideOr14~1_combout\);

-- Location: LCCOMB_X24_Y20_N26
\fsm|WideOr13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr13~combout\ = (\fsm|current_state.Write25~q\) # ((\fsm|current_state.Write10~q\) # (!\fsm|WideOr13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.Write25~q\,
	datab => \fsm|current_state.Write10~q\,
	datad => \fsm|WideOr13~4_combout\,
	combout => \fsm|WideOr13~combout\);

-- Location: LCCOMB_X24_Y20_N24
\fsm|WideOr12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr12~1_combout\ = (\fsm|current_state.Write35~q\) # ((\fsm|current_state.Write29~q\) # ((\fsm|current_state.Write17~q\) # (\fsm|current_state.Write24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.Write35~q\,
	datab => \fsm|current_state.Write29~q\,
	datac => \fsm|current_state.Write17~q\,
	datad => \fsm|current_state.Write24~q\,
	combout => \fsm|WideOr12~1_combout\);

-- Location: LCCOMB_X25_Y20_N2
\fsm|WideOr12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr12~combout\ = (\fsm|WideOr12~1_combout\) # (((\fsm|current_state.Write9~q\) # (\fsm|current_state.Write5~q\)) # (!\fsm|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr12~1_combout\,
	datab => \fsm|WideOr12~0_combout\,
	datac => \fsm|current_state.Write9~q\,
	datad => \fsm|current_state.Write5~q\,
	combout => \fsm|WideOr12~combout\);

-- Location: LCCOMB_X24_Y20_N16
\fsm|WideOr11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr11~1_combout\ = (\fsm|current_state.Write34~q\) # ((\fsm|current_state.Write14~q\) # ((\fsm|current_state.Write36~q\) # (\fsm|current_state.Write37~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.Write34~q\,
	datab => \fsm|current_state.Write14~q\,
	datac => \fsm|current_state.Write36~q\,
	datad => \fsm|current_state.Write37~q\,
	combout => \fsm|WideOr11~1_combout\);

-- Location: LCCOMB_X24_Y20_N0
\fsm|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr11~0_combout\ = (\fsm|current_state.Write1~q\) # ((\fsm|current_state.Write29~q\) # ((\fsm|current_state.Write35~q\) # (\fsm|current_state.Write24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|current_state.Write1~q\,
	datab => \fsm|current_state.Write29~q\,
	datac => \fsm|current_state.Write35~q\,
	datad => \fsm|current_state.Write24~q\,
	combout => \fsm|WideOr11~0_combout\);

-- Location: LCCOMB_X24_Y20_N30
\fsm|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr11~combout\ = ((\fsm|WideOr11~1_combout\) # ((\fsm|current_state.SetAddress~q\) # (\fsm|WideOr11~0_combout\))) # (!\fsm|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr10~0_combout\,
	datab => \fsm|WideOr11~1_combout\,
	datac => \fsm|current_state.SetAddress~q\,
	datad => \fsm|WideOr11~0_combout\,
	combout => \fsm|WideOr11~combout\);

-- Location: LCCOMB_X24_Y20_N2
\fsm|WideOr10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr10~combout\ = ((\fsm|current_state.Write12~q\) # ((\fsm|current_state.Write13~q\) # (!\fsm|WideOr10~1_combout\))) # (!\fsm|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr10~0_combout\,
	datab => \fsm|current_state.Write12~q\,
	datac => \fsm|current_state.Write13~q\,
	datad => \fsm|WideOr10~1_combout\,
	combout => \fsm|WideOr10~combout\);

-- Location: LCCOMB_X23_Y20_N26
\fsm|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr9~combout\ = (\fsm|current_state.SetAddress~q\) # (!\fsm|WideOr18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|current_state.SetAddress~q\,
	datad => \fsm|WideOr18~0_combout\,
	combout => \fsm|WideOr9~combout\);

ww_rw <= \rw~output_o\;

ww_rs <= \rs~output_o\;

ww_e <= \e~output_o\;

ww_db(0) <= \db[0]~output_o\;

ww_db(1) <= \db[1]~output_o\;

ww_db(2) <= \db[2]~output_o\;

ww_db(3) <= \db[3]~output_o\;

ww_db(4) <= \db[4]~output_o\;

ww_db(5) <= \db[5]~output_o\;

ww_db(6) <= \db[6]~output_o\;

ww_db(7) <= \db[7]~output_o\;
END structure;


