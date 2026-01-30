-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "01/30/2026 01:13:25"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ethernet_flow_control IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	pause : IN std_logic;
	p_time : IN std_logic_vector(15 DOWNTO 0);
	is_paused : OUT std_logic;
	in_data : IN std_logic_vector(7 DOWNTO 0);
	in_valid : IN std_logic;
	in_sop : IN std_logic;
	in_eop : IN std_logic;
	in_ready : OUT std_logic;
	out_data : OUT std_logic_vector(7 DOWNTO 0);
	out_valid : OUT std_logic;
	out_sop : OUT std_logic;
	out_eop : OUT std_logic;
	out_ready : IN std_logic
	);
END ethernet_flow_control;

-- Design Ports Information
-- is_paused	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_ready	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_valid	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sop	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_eop	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_valid	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_eop	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_sop	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ready	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pause	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[9]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[10]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[11]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[12]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[14]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[15]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_time[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ethernet_flow_control IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_pause : std_logic;
SIGNAL ww_p_time : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_is_paused : std_logic;
SIGNAL ww_in_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_valid : std_logic;
SIGNAL ww_in_sop : std_logic;
SIGNAL ww_in_eop : std_logic;
SIGNAL ww_in_ready : std_logic;
SIGNAL ww_out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_valid : std_logic;
SIGNAL ww_out_sop : std_logic;
SIGNAL ww_out_eop : std_logic;
SIGNAL ww_out_ready : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \in_valid~input_o\ : std_logic;
SIGNAL \in_sop~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \rx_counter[3]~8_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \rx_counter[4]~7_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector25~7_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \in_eop~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Selector25~4_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \rx_state.WAIT_EOP~q\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~8_combout\ : std_logic;
SIGNAL \Selector25~6_combout\ : std_logic;
SIGNAL \rx_state.CHECK_DEST~q\ : std_logic;
SIGNAL \rx_counter[0]~2_combout\ : std_logic;
SIGNAL \rx_counter[0]~5_combout\ : std_logic;
SIGNAL \rx_counter[1]~9_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \rx_counter[2]~10_combout\ : std_logic;
SIGNAL \pause_timer_sig[22]~0_combout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \rx_state.WAIT_SOP~q\ : std_logic;
SIGNAL \Selector25~5_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \rx_state.CHECK_SRC~q\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \rx_state.CHECK_TYPE~q\ : std_logic;
SIGNAL \rx_counter[2]~0_combout\ : std_logic;
SIGNAL \rx_counter[2]~1_combout\ : std_logic;
SIGNAL \rx_counter[5]~6_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \rx_state~19_combout\ : std_logic;
SIGNAL \rx_state.CHECK_OPCODE~0_combout\ : std_logic;
SIGNAL \rx_state.CHECK_OPCODE~q\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \rx_state.GET_PTIME~q\ : std_logic;
SIGNAL \rx_counter[1]~3_combout\ : std_logic;
SIGNAL \rx_counter[2]~4_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \rx_state.HOLD_PAUSE~0_combout\ : std_logic;
SIGNAL \rx_state.HOLD_PAUSE~1_combout\ : std_logic;
SIGNAL \rx_state.HOLD_PAUSE~q\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \pause_timer_sig[6]~feeder_combout\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \captured_ptime[0]~feeder_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \pause_timer_sig[7]~feeder_combout\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \pause_timer_sig[8]~feeder_combout\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \pause_timer_sig[9]~feeder_combout\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \captured_ptime[8]~feeder_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \is_paused~reg0_q\ : std_logic;
SIGNAL \pause~input_o\ : std_logic;
SIGNAL \out_ready~input_o\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \tx_state.SEND_SRC~0_combout\ : std_logic;
SIGNAL \tx_state.SEND_SRC~1_combout\ : std_logic;
SIGNAL \tx_state.SEND_SRC~q\ : std_logic;
SIGNAL \tx_counter[1]~0_combout\ : std_logic;
SIGNAL \tx_counter[1]~1_combout\ : std_logic;
SIGNAL \tx_counter[2]~3_combout\ : std_logic;
SIGNAL \tx_counter[3]~7_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \tx_counter[5]~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \tx_state.SEND_DEST~q\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \tx_counter[1]~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \tx_state.SEND_TYPE~q\ : std_logic;
SIGNAL \tx_state~18_combout\ : std_logic;
SIGNAL \tx_state.SEND_OPCODE~q\ : std_logic;
SIGNAL \tx_state.SEND_PTIME~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \tx_state.SEND_PADDING~q\ : std_logic;
SIGNAL \tx_counter[1]~2_combout\ : std_logic;
SIGNAL \tx_counter[4]~6_combout\ : std_logic;
SIGNAL \out_eop~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \tx_state.IDLE~q\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \p_time[0]~input_o\ : std_logic;
SIGNAL \p_time[8]~input_o\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Selector22~4_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~5_combout\ : std_logic;
SIGNAL \out_data[0]~reg0_q\ : std_logic;
SIGNAL \p_time[9]~input_o\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \p_time[1]~input_o\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \Selector21~4_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~5_combout\ : std_logic;
SIGNAL \out_data[1]~reg0_q\ : std_logic;
SIGNAL \p_time[2]~input_o\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \p_time[10]~input_o\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~4_combout\ : std_logic;
SIGNAL \Selector20~3_combout\ : std_logic;
SIGNAL \out_data[2]~reg0_q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \p_time[11]~input_o\ : std_logic;
SIGNAL \p_time[3]~input_o\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \out_data[3]~reg0_q\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \p_time[4]~input_o\ : std_logic;
SIGNAL \p_time[12]~input_o\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \out_data[4]~reg0_q\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \p_time[13]~input_o\ : std_logic;
SIGNAL \p_time[5]~input_o\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \out_data[5]~reg0_q\ : std_logic;
SIGNAL \Selector21~6_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \p_time[6]~input_o\ : std_logic;
SIGNAL \p_time[14]~input_o\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \out_data[6]~reg0_q\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \p_time[15]~input_o\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \p_time[7]~input_o\ : std_logic;
SIGNAL \Selector15~5_combout\ : std_logic;
SIGNAL \Selector15~6_combout\ : std_logic;
SIGNAL \out_data[7]~reg0_q\ : std_logic;
SIGNAL \out_valid~reg0_q\ : std_logic;
SIGNAL \out_sop~0_combout\ : std_logic;
SIGNAL \out_sop~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \out_eop~reg0_q\ : std_logic;
SIGNAL pause_timer_sig : std_logic_vector(23 DOWNTO 0);
SIGNAL rx_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL tx_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL captured_ptime : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_out_eop~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~3_combout\ : std_logic;
SIGNAL \ALT_INV_tx_state.IDLE~q\ : std_logic;
SIGNAL \ALT_INV_Selector22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_tx_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \ALT_INV_tx_state.SEND_PADDING~q\ : std_logic;
SIGNAL \ALT_INV_tx_state.SEND_PTIME~q\ : std_logic;
SIGNAL \ALT_INV_tx_state.SEND_OPCODE~q\ : std_logic;
SIGNAL \ALT_INV_tx_state.SEND_TYPE~q\ : std_logic;
SIGNAL \ALT_INV_tx_state.SEND_SRC~q\ : std_logic;
SIGNAL \ALT_INV_tx_state.SEND_DEST~q\ : std_logic;
SIGNAL \ALT_INV_rx_state.HOLD_PAUSE~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_rx_state.GET_PTIME~q\ : std_logic;
SIGNAL \ALT_INV_Selector25~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \ALT_INV_rx_state.CHECK_OPCODE~q\ : std_logic;
SIGNAL \ALT_INV_rx_state.CHECK_TYPE~q\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_rx_state.CHECK_SRC~q\ : std_logic;
SIGNAL \ALT_INV_Selector25~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL ALT_INV_rx_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_rx_state.CHECK_DEST~q\ : std_logic;
SIGNAL \ALT_INV_Selector25~2_combout\ : std_logic;
SIGNAL \ALT_INV_rx_state.WAIT_EOP~q\ : std_logic;
SIGNAL \ALT_INV_rx_state.WAIT_SOP~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_out_eop~reg0_q\ : std_logic;
SIGNAL \ALT_INV_out_sop~reg0_q\ : std_logic;
SIGNAL \ALT_INV_out_data[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_out_data[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_out_data[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_out_data[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_out_data[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_out_data[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_out_data[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_out_data[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rx_state.HOLD_PAUSE~q\ : std_logic;
SIGNAL \ALT_INV_is_paused~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Selector20~4_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL ALT_INV_pause_timer_sig : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_in_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_pause~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_p_time[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_out_ready~input_o\ : std_logic;
SIGNAL \ALT_INV_in_sop~input_o\ : std_logic;
SIGNAL \ALT_INV_in_eop~input_o\ : std_logic;
SIGNAL \ALT_INV_in_valid~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector25~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~7_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_tx_counter[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_tx_counter[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_tx_counter[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \ALT_INV_tx_state.SEND_SRC~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~5_combout\ : std_logic;
SIGNAL \ALT_INV_rx_state~19_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_rx_counter[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_rx_counter[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_rx_counter[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_rx_counter[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_pause <= pause;
ww_p_time <= p_time;
is_paused <= ww_is_paused;
ww_in_data <= in_data;
ww_in_valid <= in_valid;
ww_in_sop <= in_sop;
ww_in_eop <= in_eop;
in_ready <= ww_in_ready;
out_data <= ww_out_data;
out_valid <= ww_out_valid;
out_sop <= ww_out_sop;
out_eop <= ww_out_eop;
ww_out_ready <= out_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_out_eop~0_combout\ <= NOT \out_eop~0_combout\;
\ALT_INV_Selector15~5_combout\ <= NOT \Selector15~5_combout\;
\ALT_INV_Selector15~4_combout\ <= NOT \Selector15~4_combout\;
\ALT_INV_Selector15~3_combout\ <= NOT \Selector15~3_combout\;
\ALT_INV_Selector15~2_combout\ <= NOT \Selector15~2_combout\;
\ALT_INV_Selector16~3_combout\ <= NOT \Selector16~3_combout\;
\ALT_INV_Selector16~2_combout\ <= NOT \Selector16~2_combout\;
\ALT_INV_Selector16~1_combout\ <= NOT \Selector16~1_combout\;
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\ALT_INV_Selector17~2_combout\ <= NOT \Selector17~2_combout\;
\ALT_INV_Selector17~1_combout\ <= NOT \Selector17~1_combout\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_Selector18~2_combout\ <= NOT \Selector18~2_combout\;
\ALT_INV_Selector18~1_combout\ <= NOT \Selector18~1_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector19~2_combout\ <= NOT \Selector19~2_combout\;
\ALT_INV_Selector15~1_combout\ <= NOT \Selector15~1_combout\;
\ALT_INV_Selector15~0_combout\ <= NOT \Selector15~0_combout\;
\ALT_INV_Selector19~1_combout\ <= NOT \Selector19~1_combout\;
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
\ALT_INV_Selector20~2_combout\ <= NOT \Selector20~2_combout\;
\ALT_INV_Selector20~1_combout\ <= NOT \Selector20~1_combout\;
\ALT_INV_Selector21~6_combout\ <= NOT \Selector21~6_combout\;
\ALT_INV_Selector20~0_combout\ <= NOT \Selector20~0_combout\;
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
\ALT_INV_Selector21~4_combout\ <= NOT \Selector21~4_combout\;
\ALT_INV_Selector21~3_combout\ <= NOT \Selector21~3_combout\;
\ALT_INV_Selector21~2_combout\ <= NOT \Selector21~2_combout\;
\ALT_INV_Selector21~1_combout\ <= NOT \Selector21~1_combout\;
\ALT_INV_Selector21~0_combout\ <= NOT \Selector21~0_combout\;
\ALT_INV_Selector22~4_combout\ <= NOT \Selector22~4_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Selector22~3_combout\ <= NOT \Selector22~3_combout\;
\ALT_INV_tx_state.IDLE~q\ <= NOT \tx_state.IDLE~q\;
\ALT_INV_Selector22~2_combout\ <= NOT \Selector22~2_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Selector22~1_combout\ <= NOT \Selector22~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_tx_counter(3) <= NOT tx_counter(3);
ALT_INV_tx_counter(4) <= NOT tx_counter(4);
ALT_INV_tx_counter(5) <= NOT tx_counter(5);
ALT_INV_tx_counter(1) <= NOT tx_counter(1);
ALT_INV_tx_counter(2) <= NOT tx_counter(2);
ALT_INV_tx_counter(0) <= NOT tx_counter(0);
\ALT_INV_Selector22~0_combout\ <= NOT \Selector22~0_combout\;
\ALT_INV_tx_state.SEND_PADDING~q\ <= NOT \tx_state.SEND_PADDING~q\;
\ALT_INV_tx_state.SEND_PTIME~q\ <= NOT \tx_state.SEND_PTIME~q\;
\ALT_INV_tx_state.SEND_OPCODE~q\ <= NOT \tx_state.SEND_OPCODE~q\;
\ALT_INV_tx_state.SEND_TYPE~q\ <= NOT \tx_state.SEND_TYPE~q\;
\ALT_INV_tx_state.SEND_SRC~q\ <= NOT \tx_state.SEND_SRC~q\;
\ALT_INV_tx_state.SEND_DEST~q\ <= NOT \tx_state.SEND_DEST~q\;
\ALT_INV_rx_state.HOLD_PAUSE~0_combout\ <= NOT \rx_state.HOLD_PAUSE~0_combout\;
\ALT_INV_Selector25~5_combout\ <= NOT \Selector25~5_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_rx_state.GET_PTIME~q\ <= NOT \rx_state.GET_PTIME~q\;
\ALT_INV_Selector25~4_combout\ <= NOT \Selector25~4_combout\;
\ALT_INV_Selector26~0_combout\ <= NOT \Selector26~0_combout\;
\ALT_INV_rx_state.CHECK_OPCODE~q\ <= NOT \rx_state.CHECK_OPCODE~q\;
\ALT_INV_rx_state.CHECK_TYPE~q\ <= NOT \rx_state.CHECK_TYPE~q\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_rx_state.CHECK_SRC~q\ <= NOT \rx_state.CHECK_SRC~q\;
\ALT_INV_Selector25~3_combout\ <= NOT \Selector25~3_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
ALT_INV_rx_counter(1) <= NOT rx_counter(1);
ALT_INV_rx_counter(3) <= NOT rx_counter(3);
ALT_INV_rx_counter(4) <= NOT rx_counter(4);
ALT_INV_rx_counter(5) <= NOT rx_counter(5);
ALT_INV_rx_counter(0) <= NOT rx_counter(0);
\ALT_INV_rx_state.CHECK_DEST~q\ <= NOT \rx_state.CHECK_DEST~q\;
ALT_INV_rx_counter(2) <= NOT rx_counter(2);
\ALT_INV_Selector25~2_combout\ <= NOT \Selector25~2_combout\;
\ALT_INV_rx_state.WAIT_EOP~q\ <= NOT \rx_state.WAIT_EOP~q\;
\ALT_INV_rx_state.WAIT_SOP~q\ <= NOT \rx_state.WAIT_SOP~q\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_out_eop~reg0_q\ <= NOT \out_eop~reg0_q\;
\ALT_INV_out_sop~reg0_q\ <= NOT \out_sop~reg0_q\;
\ALT_INV_out_data[7]~reg0_q\ <= NOT \out_data[7]~reg0_q\;
\ALT_INV_out_data[6]~reg0_q\ <= NOT \out_data[6]~reg0_q\;
\ALT_INV_out_data[5]~reg0_q\ <= NOT \out_data[5]~reg0_q\;
\ALT_INV_out_data[4]~reg0_q\ <= NOT \out_data[4]~reg0_q\;
\ALT_INV_out_data[3]~reg0_q\ <= NOT \out_data[3]~reg0_q\;
\ALT_INV_out_data[2]~reg0_q\ <= NOT \out_data[2]~reg0_q\;
\ALT_INV_out_data[1]~reg0_q\ <= NOT \out_data[1]~reg0_q\;
\ALT_INV_out_data[0]~reg0_q\ <= NOT \out_data[0]~reg0_q\;
\ALT_INV_rx_state.HOLD_PAUSE~q\ <= NOT \rx_state.HOLD_PAUSE~q\;
\ALT_INV_is_paused~reg0_q\ <= NOT \is_paused~reg0_q\;
\ALT_INV_Selector20~4_combout\ <= NOT \Selector20~4_combout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
ALT_INV_pause_timer_sig(21) <= NOT pause_timer_sig(21);
ALT_INV_pause_timer_sig(20) <= NOT pause_timer_sig(20);
ALT_INV_pause_timer_sig(19) <= NOT pause_timer_sig(19);
ALT_INV_pause_timer_sig(18) <= NOT pause_timer_sig(18);
ALT_INV_pause_timer_sig(1) <= NOT pause_timer_sig(1);
ALT_INV_pause_timer_sig(5) <= NOT pause_timer_sig(5);
ALT_INV_pause_timer_sig(4) <= NOT pause_timer_sig(4);
ALT_INV_pause_timer_sig(3) <= NOT pause_timer_sig(3);
ALT_INV_pause_timer_sig(2) <= NOT pause_timer_sig(2);
ALT_INV_pause_timer_sig(0) <= NOT pause_timer_sig(0);
ALT_INV_pause_timer_sig(23) <= NOT pause_timer_sig(23);
ALT_INV_pause_timer_sig(22) <= NOT pause_timer_sig(22);
ALT_INV_pause_timer_sig(11) <= NOT pause_timer_sig(11);
ALT_INV_pause_timer_sig(10) <= NOT pause_timer_sig(10);
ALT_INV_pause_timer_sig(9) <= NOT pause_timer_sig(9);
ALT_INV_pause_timer_sig(7) <= NOT pause_timer_sig(7);
ALT_INV_pause_timer_sig(6) <= NOT pause_timer_sig(6);
ALT_INV_pause_timer_sig(8) <= NOT pause_timer_sig(8);
ALT_INV_pause_timer_sig(17) <= NOT pause_timer_sig(17);
ALT_INV_pause_timer_sig(16) <= NOT pause_timer_sig(16);
ALT_INV_pause_timer_sig(15) <= NOT pause_timer_sig(15);
ALT_INV_pause_timer_sig(14) <= NOT pause_timer_sig(14);
ALT_INV_pause_timer_sig(13) <= NOT pause_timer_sig(13);
ALT_INV_pause_timer_sig(12) <= NOT pause_timer_sig(12);
\ALT_INV_in_data[0]~input_o\ <= NOT \in_data[0]~input_o\;
\ALT_INV_p_time[7]~input_o\ <= NOT \p_time[7]~input_o\;
\ALT_INV_p_time[15]~input_o\ <= NOT \p_time[15]~input_o\;
\ALT_INV_p_time[14]~input_o\ <= NOT \p_time[14]~input_o\;
\ALT_INV_p_time[6]~input_o\ <= NOT \p_time[6]~input_o\;
\ALT_INV_p_time[13]~input_o\ <= NOT \p_time[13]~input_o\;
\ALT_INV_p_time[5]~input_o\ <= NOT \p_time[5]~input_o\;
\ALT_INV_p_time[12]~input_o\ <= NOT \p_time[12]~input_o\;
\ALT_INV_p_time[4]~input_o\ <= NOT \p_time[4]~input_o\;
\ALT_INV_p_time[3]~input_o\ <= NOT \p_time[3]~input_o\;
\ALT_INV_p_time[11]~input_o\ <= NOT \p_time[11]~input_o\;
\ALT_INV_p_time[2]~input_o\ <= NOT \p_time[2]~input_o\;
\ALT_INV_p_time[10]~input_o\ <= NOT \p_time[10]~input_o\;
\ALT_INV_p_time[1]~input_o\ <= NOT \p_time[1]~input_o\;
\ALT_INV_p_time[9]~input_o\ <= NOT \p_time[9]~input_o\;
\ALT_INV_pause~input_o\ <= NOT \pause~input_o\;
\ALT_INV_p_time[8]~input_o\ <= NOT \p_time[8]~input_o\;
\ALT_INV_p_time[0]~input_o\ <= NOT \p_time[0]~input_o\;
\ALT_INV_out_ready~input_o\ <= NOT \out_ready~input_o\;
\ALT_INV_in_sop~input_o\ <= NOT \in_sop~input_o\;
\ALT_INV_in_eop~input_o\ <= NOT \in_eop~input_o\;
\ALT_INV_in_valid~input_o\ <= NOT \in_valid~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Selector25~8_combout\ <= NOT \Selector25~8_combout\;
\ALT_INV_Selector25~7_combout\ <= NOT \Selector25~7_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_tx_counter[1]~2_combout\ <= NOT \tx_counter[1]~2_combout\;
\ALT_INV_tx_counter[1]~1_combout\ <= NOT \tx_counter[1]~1_combout\;
\ALT_INV_tx_counter[1]~0_combout\ <= NOT \tx_counter[1]~0_combout\;
\ALT_INV_Selector13~2_combout\ <= NOT \Selector13~2_combout\;
\ALT_INV_Selector13~1_combout\ <= NOT \Selector13~1_combout\;
\ALT_INV_tx_state.SEND_SRC~0_combout\ <= NOT \tx_state.SEND_SRC~0_combout\;
\ALT_INV_Selector2~5_combout\ <= NOT \Selector2~5_combout\;
\ALT_INV_rx_state~19_combout\ <= NOT \rx_state~19_combout\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;
\ALT_INV_Selector26~1_combout\ <= NOT \Selector26~1_combout\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_rx_counter[1]~3_combout\ <= NOT \rx_counter[1]~3_combout\;
\ALT_INV_rx_counter[0]~2_combout\ <= NOT \rx_counter[0]~2_combout\;
\ALT_INV_rx_counter[2]~1_combout\ <= NOT \rx_counter[2]~1_combout\;
\ALT_INV_rx_counter[2]~0_combout\ <= NOT \rx_counter[2]~0_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;

-- Location: IOOBUF_X58_Y0_N76
\is_paused~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \is_paused~reg0_q\,
	devoe => ww_devoe,
	o => ww_is_paused);

-- Location: IOOBUF_X62_Y0_N53
\in_ready~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	devoe => ww_devoe,
	o => ww_in_ready);

-- Location: IOOBUF_X52_Y0_N19
\out_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_data(0));

-- Location: IOOBUF_X54_Y0_N19
\out_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_data(1));

-- Location: IOOBUF_X66_Y0_N76
\out_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_data(2));

-- Location: IOOBUF_X70_Y0_N2
\out_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_data(3));

-- Location: IOOBUF_X56_Y0_N36
\out_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_data(4));

-- Location: IOOBUF_X66_Y0_N59
\out_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_data(5));

-- Location: IOOBUF_X64_Y0_N53
\out_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_data(6));

-- Location: IOOBUF_X72_Y0_N36
\out_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_data(7));

-- Location: IOOBUF_X58_Y0_N59
\out_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_valid~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_valid);

-- Location: IOOBUF_X56_Y0_N2
\out_sop~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_sop~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_sop);

-- Location: IOOBUF_X66_Y0_N42
\out_eop~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_eop~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_eop);

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X62_Y5_N30
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( pause_timer_sig(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~58\ = CARRY(( pause_timer_sig(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pause_timer_sig(0),
	cin => GND,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: IOIBUF_X60_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\in_valid~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_valid,
	o => \in_valid~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\in_sop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_sop,
	o => \in_sop~input_o\);

-- Location: LABCELL_X63_Y4_N54
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( pause_timer_sig(11) & ( pause_timer_sig(8) ) ) # ( !pause_timer_sig(11) & ( pause_timer_sig(8) ) ) # ( pause_timer_sig(11) & ( !pause_timer_sig(8) ) ) # ( !pause_timer_sig(11) & ( !pause_timer_sig(8) & ( (((pause_timer_sig(6)) # 
-- (pause_timer_sig(7))) # (pause_timer_sig(9))) # (pause_timer_sig(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pause_timer_sig(10),
	datab => ALT_INV_pause_timer_sig(9),
	datac => ALT_INV_pause_timer_sig(7),
	datad => ALT_INV_pause_timer_sig(6),
	datae => ALT_INV_pause_timer_sig(11),
	dataf => ALT_INV_pause_timer_sig(8),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X62_Y4_N21
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( pause_timer_sig(17) ) + ( VCC ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( pause_timer_sig(17) ) + ( VCC ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pause_timer_sig(17),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X62_Y4_N24
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( pause_timer_sig(18) ) + ( VCC ) + ( \Add2~22\ ))
-- \Add2~82\ = CARRY(( pause_timer_sig(18) ) + ( VCC ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pause_timer_sig(18),
	cin => \Add2~22\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: IOIBUF_X60_Y0_N52
\in_data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: LABCELL_X60_Y2_N39
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( rx_counter(1) & ( (rx_counter(2) & rx_counter(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rx_counter(2),
	datac => ALT_INV_rx_counter(0),
	dataf => ALT_INV_rx_counter(1),
	combout => \Add1~1_combout\);

-- Location: LABCELL_X60_Y2_N9
\rx_counter[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[3]~8_combout\ = ( \rx_counter[0]~2_combout\ & ( (!\rx_counter[2]~1_combout\ & (((rx_counter(3))))) # (\rx_counter[2]~1_combout\ & (\rx_counter[1]~3_combout\ & (!\Add1~1_combout\ $ (!rx_counter(3))))) ) ) # ( !\rx_counter[0]~2_combout\ & ( 
-- (!\rx_counter[2]~1_combout\ & rx_counter(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000001110111000000000111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_counter[1]~3_combout\,
	datab => \ALT_INV_rx_counter[2]~1_combout\,
	datac => \ALT_INV_Add1~1_combout\,
	datad => ALT_INV_rx_counter(3),
	dataf => \ALT_INV_rx_counter[0]~2_combout\,
	combout => \rx_counter[3]~8_combout\);

-- Location: FF_X60_Y2_N11
\rx_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rx_counter[3]~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_counter(3));

-- Location: LABCELL_X60_Y2_N51
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( rx_counter(1) & ( (rx_counter(0) & (rx_counter(2) & rx_counter(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rx_counter(0),
	datac => ALT_INV_rx_counter(2),
	datad => ALT_INV_rx_counter(3),
	dataf => ALT_INV_rx_counter(1),
	combout => \Add1~0_combout\);

-- Location: LABCELL_X60_Y2_N6
\rx_counter[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[4]~7_combout\ = ( \rx_counter[0]~2_combout\ & ( (!\rx_counter[2]~1_combout\ & (((rx_counter(4))))) # (\rx_counter[2]~1_combout\ & (\rx_counter[1]~3_combout\ & (!\Add1~0_combout\ $ (!rx_counter(4))))) ) ) # ( !\rx_counter[0]~2_combout\ & ( 
-- (!\rx_counter[2]~1_combout\ & rx_counter(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000001110111000000000111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_counter[1]~3_combout\,
	datab => \ALT_INV_rx_counter[2]~1_combout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => ALT_INV_rx_counter(4),
	dataf => \ALT_INV_rx_counter[0]~2_combout\,
	combout => \rx_counter[4]~7_combout\);

-- Location: FF_X60_Y2_N8
\rx_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rx_counter[4]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_counter(4));

-- Location: LABCELL_X60_Y2_N42
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !rx_counter(4) & ( (!rx_counter(5) & (!rx_counter(3) & (!rx_counter(1) & !rx_counter(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rx_counter(5),
	datab => ALT_INV_rx_counter(3),
	datac => ALT_INV_rx_counter(1),
	datad => ALT_INV_rx_counter(0),
	dataf => ALT_INV_rx_counter(4),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X61_Y4_N0
\Selector25~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~7_combout\ = ( \rx_state.GET_PTIME~q\ & ( \Equal6~0_combout\ & ( ((\in_sop~input_o\ & (!\rx_state.WAIT_SOP~q\ & \in_valid~input_o\))) # (\rx_state.CHECK_DEST~q\) ) ) ) # ( !\rx_state.GET_PTIME~q\ & ( \Equal6~0_combout\ & ( ((\in_sop~input_o\ & 
-- (!\rx_state.WAIT_SOP~q\ & \in_valid~input_o\))) # (\rx_state.CHECK_DEST~q\) ) ) ) # ( \rx_state.GET_PTIME~q\ & ( !\Equal6~0_combout\ & ( (!\in_valid~input_o\ & \rx_state.CHECK_DEST~q\) ) ) ) # ( !\rx_state.GET_PTIME~q\ & ( !\Equal6~0_combout\ & ( 
-- ((\in_sop~input_o\ & (!\rx_state.WAIT_SOP~q\ & \in_valid~input_o\))) # (\rx_state.CHECK_DEST~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000000001111000000000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_in_sop~input_o\,
	datab => \ALT_INV_rx_state.WAIT_SOP~q\,
	datac => \ALT_INV_in_valid~input_o\,
	datad => \ALT_INV_rx_state.CHECK_DEST~q\,
	datae => \ALT_INV_rx_state.GET_PTIME~q\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \Selector25~7_combout\);

-- Location: LABCELL_X60_Y2_N36
\Selector25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = ( \rx_state.CHECK_DEST~q\ & ( (rx_counter(2) & (\Equal3~0_combout\ & \in_valid~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rx_counter(2),
	datac => \ALT_INV_Equal3~0_combout\,
	datad => \ALT_INV_in_valid~input_o\,
	dataf => \ALT_INV_rx_state.CHECK_DEST~q\,
	combout => \Selector25~3_combout\);

-- Location: IOIBUF_X70_Y0_N35
\in_eop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_eop,
	o => \in_eop~input_o\);

-- Location: LABCELL_X62_Y4_N48
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( pause_timer_sig(19) & ( pause_timer_sig(1) ) ) # ( !pause_timer_sig(19) & ( pause_timer_sig(1) ) ) # ( pause_timer_sig(19) & ( !pause_timer_sig(1) ) ) # ( !pause_timer_sig(19) & ( !pause_timer_sig(1) & ( (((pause_timer_sig(5)) # 
-- (pause_timer_sig(18))) # (pause_timer_sig(20))) # (pause_timer_sig(21)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pause_timer_sig(21),
	datab => ALT_INV_pause_timer_sig(20),
	datac => ALT_INV_pause_timer_sig(18),
	datad => ALT_INV_pause_timer_sig(5),
	datae => ALT_INV_pause_timer_sig(19),
	dataf => ALT_INV_pause_timer_sig(1),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X63_Y4_N30
\Selector25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~4_combout\ = ( \rx_state.HOLD_PAUSE~q\ & ( (!\LessThan0~1_combout\ & (!\LessThan0~0_combout\ & (!\LessThan0~2_combout\ & !\LessThan0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	combout => \Selector25~4_combout\);

-- Location: LABCELL_X63_Y4_N48
\Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = ( \rx_state.WAIT_EOP~q\ & ( !\Selector25~4_combout\ & ( (!\in_valid~input_o\) # (!\in_eop~input_o\) ) ) ) # ( !\rx_state.WAIT_EOP~q\ & ( !\Selector25~4_combout\ & ( (\in_valid~input_o\ & (\rx_state.GET_PTIME~q\ & 
-- !\Equal6~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111011101110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_in_valid~input_o\,
	datab => \ALT_INV_in_eop~input_o\,
	datac => \ALT_INV_rx_state.GET_PTIME~q\,
	datad => \ALT_INV_Equal6~0_combout\,
	datae => \ALT_INV_rx_state.WAIT_EOP~q\,
	dataf => \ALT_INV_Selector25~4_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X63_Y4_N50
\rx_state.WAIT_EOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector30~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.WAIT_EOP~q\);

-- Location: LABCELL_X63_Y4_N33
\Selector25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = ( \rx_state.WAIT_EOP~q\ & ( (\in_eop~input_o\ & \in_valid~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_in_eop~input_o\,
	datad => \ALT_INV_in_valid~input_o\,
	dataf => \ALT_INV_rx_state.WAIT_EOP~q\,
	combout => \Selector25~2_combout\);

-- Location: LABCELL_X61_Y4_N12
\Selector25~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~8_combout\ = ( \in_valid~input_o\ & ( !\rx_state.WAIT_SOP~q\ & ( \in_sop~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_in_sop~input_o\,
	datae => \ALT_INV_in_valid~input_o\,
	dataf => \ALT_INV_rx_state.WAIT_SOP~q\,
	combout => \Selector25~8_combout\);

-- Location: LABCELL_X63_Y4_N27
\Selector25~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~6_combout\ = ( \Selector25~8_combout\ & ( !\Selector25~4_combout\ & ( (\Selector25~7_combout\ & !\Selector25~2_combout\) ) ) ) # ( !\Selector25~8_combout\ & ( !\Selector25~4_combout\ & ( (!\Selector26~0_combout\ & (\Selector25~7_combout\ & 
-- (!\Selector25~3_combout\ & !\Selector25~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector26~0_combout\,
	datab => \ALT_INV_Selector25~7_combout\,
	datac => \ALT_INV_Selector25~3_combout\,
	datad => \ALT_INV_Selector25~2_combout\,
	datae => \ALT_INV_Selector25~8_combout\,
	dataf => \ALT_INV_Selector25~4_combout\,
	combout => \Selector25~6_combout\);

-- Location: FF_X63_Y4_N29
\rx_state.CHECK_DEST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector25~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.CHECK_DEST~q\);

-- Location: LABCELL_X60_Y2_N27
\rx_counter[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[0]~2_combout\ = ( \rx_state.CHECK_DEST~q\ & ( (\rx_state.WAIT_SOP~q\ & ((!\Equal3~0_combout\) # (!rx_counter(2)))) ) ) # ( !\rx_state.CHECK_DEST~q\ & ( \rx_state.WAIT_SOP~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datac => ALT_INV_rx_counter(2),
	datad => \ALT_INV_rx_state.WAIT_SOP~q\,
	dataf => \ALT_INV_rx_state.CHECK_DEST~q\,
	combout => \rx_counter[0]~2_combout\);

-- Location: LABCELL_X60_Y2_N57
\rx_counter[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[0]~5_combout\ = ( \rx_counter[0]~2_combout\ & ( (!\rx_counter[2]~1_combout\ & ((rx_counter(0)))) # (\rx_counter[2]~1_combout\ & ((!rx_counter(0)) # (\rx_state.GET_PTIME~q\))) ) ) # ( !\rx_counter[0]~2_combout\ & ( (!\rx_counter[2]~1_combout\ & 
-- ((rx_counter(0)))) # (\rx_counter[2]~1_combout\ & (\rx_state.GET_PTIME~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100001111111101010000111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_state.GET_PTIME~q\,
	datac => \ALT_INV_rx_counter[2]~1_combout\,
	datad => ALT_INV_rx_counter(0),
	dataf => \ALT_INV_rx_counter[0]~2_combout\,
	combout => \rx_counter[0]~5_combout\);

-- Location: FF_X60_Y2_N59
\rx_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rx_counter[0]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_counter(0));

-- Location: LABCELL_X60_Y2_N48
\rx_counter[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[1]~9_combout\ = ( \rx_counter[0]~2_combout\ & ( (!\rx_counter[2]~1_combout\ & (((rx_counter(1))))) # (\rx_counter[2]~1_combout\ & (\rx_counter[1]~3_combout\ & (!rx_counter(0) $ (!rx_counter(1))))) ) ) # ( !\rx_counter[0]~2_combout\ & ( 
-- (!\rx_counter[2]~1_combout\ & rx_counter(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000001111101000000000111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_counter[1]~3_combout\,
	datab => ALT_INV_rx_counter(0),
	datac => \ALT_INV_rx_counter[2]~1_combout\,
	datad => ALT_INV_rx_counter(1),
	dataf => \ALT_INV_rx_counter[0]~2_combout\,
	combout => \rx_counter[1]~9_combout\);

-- Location: FF_X60_Y2_N50
\rx_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rx_counter[1]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_counter(1));

-- Location: LABCELL_X60_Y2_N18
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( !rx_counter(0) & ( !rx_counter(2) & ( (!rx_counter(1) & (!rx_counter(4) & (!rx_counter(5) & !rx_counter(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rx_counter(1),
	datab => ALT_INV_rx_counter(4),
	datac => ALT_INV_rx_counter(5),
	datad => ALT_INV_rx_counter(3),
	datae => ALT_INV_rx_counter(0),
	dataf => ALT_INV_rx_counter(2),
	combout => \Equal6~0_combout\);

-- Location: LABCELL_X61_Y4_N6
\rx_counter[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[2]~10_combout\ = ( \Equal6~0_combout\ & ( (\in_valid~input_o\ & \rx_state.GET_PTIME~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_in_valid~input_o\,
	datac => \ALT_INV_rx_state.GET_PTIME~q\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \rx_counter[2]~10_combout\);

-- Location: FF_X62_Y4_N53
\captured_ptime[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \rx_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(12));

-- Location: LABCELL_X62_Y4_N54
\pause_timer_sig[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pause_timer_sig[22]~0_combout\ = ( \LessThan0~2_combout\ & ( \LessThan0~3_combout\ & ( (\Selector25~2_combout\) # (\rx_state.HOLD_PAUSE~q\) ) ) ) # ( !\LessThan0~2_combout\ & ( \LessThan0~3_combout\ & ( (\Selector25~2_combout\) # 
-- (\rx_state.HOLD_PAUSE~q\) ) ) ) # ( \LessThan0~2_combout\ & ( !\LessThan0~3_combout\ & ( (\Selector25~2_combout\) # (\rx_state.HOLD_PAUSE~q\) ) ) ) # ( !\LessThan0~2_combout\ & ( !\LessThan0~3_combout\ & ( ((\rx_state.HOLD_PAUSE~q\ & 
-- ((\LessThan0~1_combout\) # (\LessThan0~0_combout\)))) # (\Selector25~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_Selector25~2_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \pause_timer_sig[22]~0_combout\);

-- Location: FF_X62_Y4_N26
\pause_timer_sig[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~81_sumout\,
	asdata => captured_ptime(12),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(18));

-- Location: LABCELL_X62_Y4_N27
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( pause_timer_sig(19) ) + ( VCC ) + ( \Add2~82\ ))
-- \Add2~86\ = CARRY(( pause_timer_sig(19) ) + ( VCC ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pause_timer_sig(19),
	cin => \Add2~82\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: IOIBUF_X60_Y0_N1
\in_data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: FF_X60_Y4_N31
\captured_ptime[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \rx_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(13));

-- Location: FF_X62_Y4_N29
\pause_timer_sig[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~85_sumout\,
	asdata => captured_ptime(13),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(19));

-- Location: LABCELL_X62_Y4_N30
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( pause_timer_sig(20) ) + ( VCC ) + ( \Add2~86\ ))
-- \Add2~90\ = CARRY(( pause_timer_sig(20) ) + ( VCC ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pause_timer_sig(20),
	cin => \Add2~86\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: IOIBUF_X56_Y0_N18
\in_data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: FF_X62_Y4_N59
\captured_ptime[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \rx_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(14));

-- Location: FF_X62_Y4_N32
\pause_timer_sig[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~89_sumout\,
	asdata => captured_ptime(14),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(20));

-- Location: LABCELL_X62_Y4_N33
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( pause_timer_sig(21) ) + ( VCC ) + ( \Add2~90\ ))
-- \Add2~94\ = CARRY(( pause_timer_sig(21) ) + ( VCC ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pause_timer_sig(21),
	cin => \Add2~90\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: IOIBUF_X58_Y0_N92
\in_data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: FF_X62_Y4_N43
\captured_ptime[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \rx_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(15));

-- Location: FF_X62_Y4_N35
\pause_timer_sig[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~93_sumout\,
	asdata => captured_ptime(15),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(21));

-- Location: LABCELL_X62_Y4_N36
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( pause_timer_sig(22) ) + ( VCC ) + ( \Add2~94\ ))
-- \Add2~50\ = CARRY(( pause_timer_sig(22) ) + ( VCC ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pause_timer_sig(22),
	cin => \Add2~94\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X63_Y4_N5
\pause_timer_sig[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Add2~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	sload => VCC,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(22));

-- Location: LABCELL_X62_Y4_N39
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( pause_timer_sig(23) ) + ( VCC ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pause_timer_sig(23),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\);

-- Location: FF_X63_Y4_N8
\pause_timer_sig[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Add2~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	sload => VCC,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(23));

-- Location: LABCELL_X63_Y4_N0
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( pause_timer_sig(22) & ( pause_timer_sig(23) ) ) # ( !pause_timer_sig(22) & ( pause_timer_sig(23) ) ) # ( pause_timer_sig(22) & ( !pause_timer_sig(23) ) ) # ( !pause_timer_sig(22) & ( !pause_timer_sig(23) & ( 
-- (((pause_timer_sig(4)) # (pause_timer_sig(2))) # (pause_timer_sig(0))) # (pause_timer_sig(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pause_timer_sig(3),
	datab => ALT_INV_pause_timer_sig(0),
	datac => ALT_INV_pause_timer_sig(2),
	datad => ALT_INV_pause_timer_sig(4),
	datae => ALT_INV_pause_timer_sig(22),
	dataf => ALT_INV_pause_timer_sig(23),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X63_Y4_N15
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !\LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & (!\LessThan0~0_combout\ & !\LessThan0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X61_Y4_N9
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( \rx_state.HOLD_PAUSE~q\ & ( (!\LessThan0~4_combout\ & (((\in_sop~input_o\ & \in_valid~input_o\)) # (\rx_state.WAIT_SOP~q\))) ) ) # ( !\rx_state.HOLD_PAUSE~q\ & ( ((\in_sop~input_o\ & \in_valid~input_o\)) # 
-- (\rx_state.WAIT_SOP~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100010000111100000001000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_in_sop~input_o\,
	datab => \ALT_INV_in_valid~input_o\,
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_rx_state.WAIT_SOP~q\,
	dataf => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X61_Y4_N11
\rx_state.WAIT_SOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector24~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.WAIT_SOP~q\);

-- Location: LABCELL_X60_Y2_N24
\Selector25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~5_combout\ = ( \rx_state.GET_PTIME~q\ & ( (\in_valid~input_o\ & !\Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_in_valid~input_o\,
	datac => \ALT_INV_Equal6~0_combout\,
	dataf => \ALT_INV_rx_state.GET_PTIME~q\,
	combout => \Selector25~5_combout\);

-- Location: LABCELL_X63_Y4_N9
\Selector26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\rx_state.CHECK_SRC~q\ & ((!\in_valid~input_o\) # ((!\in_sop~input_o\) # (\rx_state.WAIT_SOP~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101100001111000010110000111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_in_valid~input_o\,
	datab => \ALT_INV_rx_state.WAIT_SOP~q\,
	datac => \ALT_INV_rx_state.CHECK_SRC~q\,
	datad => \ALT_INV_in_sop~input_o\,
	combout => \Selector26~1_combout\);

-- Location: LABCELL_X63_Y4_N18
\Selector26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = ( \Selector25~3_combout\ & ( !\Selector25~4_combout\ & ( (!\Selector25~5_combout\ & !\Selector25~2_combout\) ) ) ) # ( !\Selector25~3_combout\ & ( !\Selector25~4_combout\ & ( (!\Selector26~0_combout\ & (!\Selector25~5_combout\ & 
-- (!\Selector25~2_combout\ & \Selector26~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector26~0_combout\,
	datab => \ALT_INV_Selector25~5_combout\,
	datac => \ALT_INV_Selector25~2_combout\,
	datad => \ALT_INV_Selector26~1_combout\,
	datae => \ALT_INV_Selector25~3_combout\,
	dataf => \ALT_INV_Selector25~4_combout\,
	combout => \Selector26~2_combout\);

-- Location: FF_X63_Y4_N20
\rx_state.CHECK_SRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector26~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.CHECK_SRC~q\);

-- Location: LABCELL_X61_Y4_N54
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( \rx_state.CHECK_SRC~q\ & ( (!\Equal4~0_combout\ & (\rx_state.CHECK_TYPE~q\)) # (\Equal4~0_combout\ & ((!\in_valid~input_o\ & (\rx_state.CHECK_TYPE~q\)) # (\in_valid~input_o\ & ((rx_counter(2)))))) ) ) # ( !\rx_state.CHECK_SRC~q\ 
-- & ( (\rx_state.CHECK_TYPE~q\ & ((!\Equal4~0_combout\) # ((!\in_valid~input_o\) # (rx_counter(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100011001100110010011100110011001000110011001100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => \ALT_INV_rx_state.CHECK_TYPE~q\,
	datac => ALT_INV_rx_counter(2),
	datad => \ALT_INV_in_valid~input_o\,
	datae => \ALT_INV_rx_state.CHECK_SRC~q\,
	combout => \Selector27~0_combout\);

-- Location: LABCELL_X63_Y4_N12
\Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = ( !\Selector25~4_combout\ & ( (!\Selector25~5_combout\ & (!\Selector25~2_combout\ & \Selector27~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector25~5_combout\,
	datac => \ALT_INV_Selector25~2_combout\,
	datad => \ALT_INV_Selector27~0_combout\,
	dataf => \ALT_INV_Selector25~4_combout\,
	combout => \Selector27~1_combout\);

-- Location: FF_X63_Y4_N14
\rx_state.CHECK_TYPE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector27~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.CHECK_TYPE~q\);

-- Location: LABCELL_X61_Y4_N51
\rx_counter[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[2]~0_combout\ = ( !\rx_state.CHECK_SRC~q\ & ( !\rx_state.CHECK_DEST~q\ & ( (!\rx_state.CHECK_TYPE~q\ & !\rx_state.CHECK_OPCODE~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rx_state.CHECK_TYPE~q\,
	datac => \ALT_INV_rx_state.CHECK_OPCODE~q\,
	datae => \ALT_INV_rx_state.CHECK_SRC~q\,
	dataf => \ALT_INV_rx_state.CHECK_DEST~q\,
	combout => \rx_counter[2]~0_combout\);

-- Location: LABCELL_X60_Y2_N30
\rx_counter[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[2]~1_combout\ = ( \in_sop~input_o\ & ( \Equal6~0_combout\ & ( (\in_valid~input_o\ & ((!\rx_state.WAIT_SOP~q\) # ((!\rx_counter[2]~0_combout\) # (\rx_state.GET_PTIME~q\)))) ) ) ) # ( !\in_sop~input_o\ & ( \Equal6~0_combout\ & ( 
-- (\in_valid~input_o\ & ((!\rx_counter[2]~0_combout\) # (\rx_state.GET_PTIME~q\))) ) ) ) # ( \in_sop~input_o\ & ( !\Equal6~0_combout\ & ( (\in_valid~input_o\ & ((!\rx_state.WAIT_SOP~q\) # (!\rx_counter[2]~0_combout\))) ) ) ) # ( !\in_sop~input_o\ & ( 
-- !\Equal6~0_combout\ & ( (\in_valid~input_o\ & !\rx_counter[2]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110010001000110011000000110011001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_state.WAIT_SOP~q\,
	datab => \ALT_INV_in_valid~input_o\,
	datac => \ALT_INV_rx_state.GET_PTIME~q\,
	datad => \ALT_INV_rx_counter[2]~0_combout\,
	datae => \ALT_INV_in_sop~input_o\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \rx_counter[2]~1_combout\);

-- Location: LABCELL_X60_Y2_N0
\rx_counter[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[5]~6_combout\ = ( rx_counter(5) & ( \rx_counter[0]~2_combout\ & ( (!\rx_counter[2]~1_combout\) # ((\rx_counter[1]~3_combout\ & ((!\Add1~0_combout\) # (!rx_counter(4))))) ) ) ) # ( !rx_counter(5) & ( \rx_counter[0]~2_combout\ & ( 
-- (\rx_counter[1]~3_combout\ & (\rx_counter[2]~1_combout\ & (\Add1~0_combout\ & rx_counter(4)))) ) ) ) # ( rx_counter(5) & ( !\rx_counter[0]~2_combout\ & ( !\rx_counter[2]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000011101110111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_counter[1]~3_combout\,
	datab => \ALT_INV_rx_counter[2]~1_combout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => ALT_INV_rx_counter(4),
	datae => ALT_INV_rx_counter(5),
	dataf => \ALT_INV_rx_counter[0]~2_combout\,
	combout => \rx_counter[5]~6_combout\);

-- Location: FF_X60_Y2_N2
\rx_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rx_counter[5]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_counter(5));

-- Location: LABCELL_X60_Y2_N45
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( !rx_counter(1) & ( (!rx_counter(5) & (!rx_counter(3) & (!rx_counter(4) & rx_counter(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rx_counter(5),
	datab => ALT_INV_rx_counter(3),
	datac => ALT_INV_rx_counter(4),
	datad => ALT_INV_rx_counter(0),
	dataf => ALT_INV_rx_counter(1),
	combout => \Equal4~0_combout\);

-- Location: LABCELL_X61_Y4_N24
\rx_state~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_state~19_combout\ = ( \Equal4~0_combout\ & ( !rx_counter(2) & ( \in_valid~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_in_valid~input_o\,
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => ALT_INV_rx_counter(2),
	combout => \rx_state~19_combout\);

-- Location: LABCELL_X63_Y4_N42
\rx_state.CHECK_OPCODE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_state.CHECK_OPCODE~0_combout\ = ( \rx_state.CHECK_OPCODE~q\ & ( \LessThan0~4_combout\ & ( (!\rx_state~19_combout\ & (((!\Selector25~5_combout\ & !\rx_state.HOLD_PAUSE~q\)))) # (\rx_state~19_combout\ & (\rx_state.CHECK_TYPE~q\)) ) ) ) # ( 
-- !\rx_state.CHECK_OPCODE~q\ & ( \LessThan0~4_combout\ & ( (\rx_state~19_combout\ & \rx_state.CHECK_TYPE~q\) ) ) ) # ( \rx_state.CHECK_OPCODE~q\ & ( !\LessThan0~4_combout\ & ( (!\rx_state~19_combout\ & (((!\Selector25~5_combout\) # 
-- (\rx_state.HOLD_PAUSE~q\)))) # (\rx_state~19_combout\ & (\rx_state.CHECK_TYPE~q\)) ) ) ) # ( !\rx_state.CHECK_OPCODE~q\ & ( !\LessThan0~4_combout\ & ( (\rx_state~19_combout\ & \rx_state.CHECK_TYPE~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101100011011101100010001000100011011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_state~19_combout\,
	datab => \ALT_INV_rx_state.CHECK_TYPE~q\,
	datac => \ALT_INV_Selector25~5_combout\,
	datad => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	datae => \ALT_INV_rx_state.CHECK_OPCODE~q\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \rx_state.CHECK_OPCODE~0_combout\);

-- Location: FF_X63_Y4_N44
\rx_state.CHECK_OPCODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rx_state.CHECK_OPCODE~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.CHECK_OPCODE~q\);

-- Location: LABCELL_X61_Y4_N36
\Selector29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = ( \rx_state.GET_PTIME~q\ & ( \Equal3~0_combout\ & ( (!rx_counter(2)) # (!\in_valid~input_o\) ) ) ) # ( !\rx_state.GET_PTIME~q\ & ( \Equal3~0_combout\ & ( (!rx_counter(2) & (\rx_state.CHECK_OPCODE~q\ & (\Equal4~0_combout\ & 
-- \in_valid~input_o\))) ) ) ) # ( \rx_state.GET_PTIME~q\ & ( !\Equal3~0_combout\ & ( (!\in_valid~input_o\) # ((!rx_counter(2) & (\rx_state.CHECK_OPCODE~q\ & \Equal4~0_combout\))) ) ) ) # ( !\rx_state.GET_PTIME~q\ & ( !\Equal3~0_combout\ & ( (!rx_counter(2) 
-- & (\rx_state.CHECK_OPCODE~q\ & (\Equal4~0_combout\ & \in_valid~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111110000001000000000000000101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rx_counter(2),
	datab => \ALT_INV_rx_state.CHECK_OPCODE~q\,
	datac => \ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_in_valid~input_o\,
	datae => \ALT_INV_rx_state.GET_PTIME~q\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector29~2_combout\);

-- Location: FF_X61_Y4_N38
\rx_state.GET_PTIME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector29~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.GET_PTIME~q\);

-- Location: LABCELL_X60_Y2_N54
\rx_counter[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[1]~3_combout\ = ( rx_counter(2) & ( (!\rx_state.GET_PTIME~q\ & (((!\rx_state.CHECK_SRC~q\) # (!\Equal4~0_combout\)) # (\rx_state.CHECK_DEST~q\))) ) ) # ( !rx_counter(2) & ( (!\rx_state.GET_PTIME~q\ & (((!\Equal4~0_combout\) # 
-- (\rx_state.CHECK_SRC~q\)) # (\rx_state.CHECK_DEST~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000101010101010100010101010101010101000101010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_state.GET_PTIME~q\,
	datab => \ALT_INV_rx_state.CHECK_DEST~q\,
	datac => \ALT_INV_rx_state.CHECK_SRC~q\,
	datad => \ALT_INV_Equal4~0_combout\,
	dataf => ALT_INV_rx_counter(2),
	combout => \rx_counter[1]~3_combout\);

-- Location: LABCELL_X60_Y2_N12
\rx_counter[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_counter[2]~4_combout\ = ( rx_counter(2) & ( \rx_counter[0]~2_combout\ & ( (!\rx_counter[2]~1_combout\) # ((\rx_counter[1]~3_combout\ & ((!rx_counter(1)) # (!rx_counter(0))))) ) ) ) # ( !rx_counter(2) & ( \rx_counter[0]~2_combout\ & ( 
-- (\rx_counter[1]~3_combout\ & (\rx_counter[2]~1_combout\ & (rx_counter(1) & rx_counter(0)))) ) ) ) # ( rx_counter(2) & ( !\rx_counter[0]~2_combout\ & ( !\rx_counter[2]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000011101110111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_counter[1]~3_combout\,
	datab => \ALT_INV_rx_counter[2]~1_combout\,
	datac => ALT_INV_rx_counter(1),
	datad => ALT_INV_rx_counter(0),
	datae => ALT_INV_rx_counter(2),
	dataf => \ALT_INV_rx_counter[0]~2_combout\,
	combout => \rx_counter[2]~4_combout\);

-- Location: FF_X60_Y2_N14
\rx_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rx_counter[2]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_counter(2));

-- Location: LABCELL_X61_Y4_N30
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( \Equal4~0_combout\ & ( \rx_state.CHECK_TYPE~q\ & ( (\in_valid~input_o\ & ((!rx_counter(2)) # (\rx_state.CHECK_SRC~q\))) ) ) ) # ( \Equal4~0_combout\ & ( !\rx_state.CHECK_TYPE~q\ & ( (\in_valid~input_o\ & ((!rx_counter(2) & 
-- (\rx_state.CHECK_OPCODE~q\)) # (rx_counter(2) & ((\rx_state.CHECK_SRC~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010011100000000000000000000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rx_counter(2),
	datab => \ALT_INV_rx_state.CHECK_OPCODE~q\,
	datac => \ALT_INV_rx_state.CHECK_SRC~q\,
	datad => \ALT_INV_in_valid~input_o\,
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => \ALT_INV_rx_state.CHECK_TYPE~q\,
	combout => \Selector26~0_combout\);

-- Location: LABCELL_X63_Y4_N6
\rx_state.HOLD_PAUSE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_state.HOLD_PAUSE~0_combout\ = ( \rx_state.HOLD_PAUSE~q\ & ( (!\in_valid~input_o\) # ((!\in_sop~input_o\) # (\rx_state.WAIT_SOP~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_in_valid~input_o\,
	datab => \ALT_INV_rx_state.WAIT_SOP~q\,
	datac => \ALT_INV_in_sop~input_o\,
	dataf => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	combout => \rx_state.HOLD_PAUSE~0_combout\);

-- Location: LABCELL_X63_Y4_N39
\rx_state.HOLD_PAUSE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_state.HOLD_PAUSE~1_combout\ = ( \Selector25~3_combout\ & ( \Selector25~4_combout\ & ( \Selector25~2_combout\ ) ) ) # ( !\Selector25~3_combout\ & ( \Selector25~4_combout\ & ( \Selector25~2_combout\ ) ) ) # ( \Selector25~3_combout\ & ( 
-- !\Selector25~4_combout\ & ( \Selector25~2_combout\ ) ) ) # ( !\Selector25~3_combout\ & ( !\Selector25~4_combout\ & ( ((!\Selector26~0_combout\ & (\rx_state.HOLD_PAUSE~0_combout\ & !\Selector25~5_combout\))) # (\Selector25~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector26~0_combout\,
	datab => \ALT_INV_rx_state.HOLD_PAUSE~0_combout\,
	datac => \ALT_INV_Selector25~5_combout\,
	datad => \ALT_INV_Selector25~2_combout\,
	datae => \ALT_INV_Selector25~3_combout\,
	dataf => \ALT_INV_Selector25~4_combout\,
	combout => \rx_state.HOLD_PAUSE~1_combout\);

-- Location: FF_X63_Y4_N41
\rx_state.HOLD_PAUSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rx_state.HOLD_PAUSE~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state.HOLD_PAUSE~q\);

-- Location: FF_X62_Y5_N32
\pause_timer_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(0));

-- Location: LABCELL_X62_Y5_N33
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( pause_timer_sig(1) ) + ( VCC ) + ( \Add2~58\ ))
-- \Add2~78\ = CARRY(( pause_timer_sig(1) ) + ( VCC ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pause_timer_sig(1),
	cin => \Add2~58\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X62_Y5_N35
\pause_timer_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(1));

-- Location: LABCELL_X62_Y5_N36
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( pause_timer_sig(2) ) + ( VCC ) + ( \Add2~78\ ))
-- \Add2~62\ = CARRY(( pause_timer_sig(2) ) + ( VCC ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pause_timer_sig(2),
	cin => \Add2~78\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X62_Y5_N38
\pause_timer_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(2));

-- Location: LABCELL_X62_Y5_N39
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( pause_timer_sig(3) ) + ( VCC ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( pause_timer_sig(3) ) + ( VCC ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pause_timer_sig(3),
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X62_Y5_N41
\pause_timer_sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(3));

-- Location: LABCELL_X62_Y5_N42
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( pause_timer_sig(4) ) + ( VCC ) + ( \Add2~66\ ))
-- \Add2~70\ = CARRY(( pause_timer_sig(4) ) + ( VCC ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pause_timer_sig(4),
	cin => \Add2~66\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X62_Y5_N44
\pause_timer_sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(4));

-- Location: LABCELL_X62_Y5_N45
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( pause_timer_sig(5) ) + ( VCC ) + ( \Add2~70\ ))
-- \Add2~74\ = CARRY(( pause_timer_sig(5) ) + ( VCC ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pause_timer_sig(5),
	cin => \Add2~70\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X62_Y5_N47
\pause_timer_sig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(5));

-- Location: LABCELL_X62_Y5_N48
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( pause_timer_sig(6) ) + ( VCC ) + ( \Add2~74\ ))
-- \Add2~30\ = CARRY(( pause_timer_sig(6) ) + ( VCC ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pause_timer_sig(6),
	cin => \Add2~74\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: LABCELL_X63_Y5_N9
\pause_timer_sig[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pause_timer_sig[6]~feeder_combout\ = ( \Add2~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~29_sumout\,
	combout => \pause_timer_sig[6]~feeder_combout\);

-- Location: IOIBUF_X52_Y0_N35
\in_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: LABCELL_X60_Y4_N54
\captured_ptime[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \captured_ptime[0]~feeder_combout\ = ( \in_data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_in_data[0]~input_o\,
	combout => \captured_ptime[0]~feeder_combout\);

-- Location: FF_X60_Y4_N55
\captured_ptime[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \captured_ptime[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Selector25~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(0));

-- Location: FF_X63_Y5_N11
\pause_timer_sig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pause_timer_sig[6]~feeder_combout\,
	asdata => captured_ptime(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(6));

-- Location: LABCELL_X62_Y5_N51
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( pause_timer_sig(7) ) + ( VCC ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( pause_timer_sig(7) ) + ( VCC ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pause_timer_sig(7),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: LABCELL_X63_Y5_N15
\pause_timer_sig[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pause_timer_sig[7]~feeder_combout\ = ( \Add2~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~33_sumout\,
	combout => \pause_timer_sig[7]~feeder_combout\);

-- Location: IOIBUF_X62_Y0_N1
\in_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: FF_X61_Y3_N22
\captured_ptime[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Selector25~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(1));

-- Location: FF_X63_Y5_N17
\pause_timer_sig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pause_timer_sig[7]~feeder_combout\,
	asdata => captured_ptime(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(7));

-- Location: LABCELL_X62_Y5_N54
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( pause_timer_sig(8) ) + ( VCC ) + ( \Add2~34\ ))
-- \Add2~26\ = CARRY(( pause_timer_sig(8) ) + ( VCC ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pause_timer_sig(8),
	cin => \Add2~34\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: LABCELL_X63_Y5_N3
\pause_timer_sig[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pause_timer_sig[8]~feeder_combout\ = ( \Add2~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~25_sumout\,
	combout => \pause_timer_sig[8]~feeder_combout\);

-- Location: IOIBUF_X62_Y0_N35
\in_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: FF_X61_Y3_N46
\captured_ptime[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Selector25~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(2));

-- Location: FF_X63_Y5_N5
\pause_timer_sig[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pause_timer_sig[8]~feeder_combout\,
	asdata => captured_ptime(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(8));

-- Location: LABCELL_X62_Y5_N57
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( pause_timer_sig(9) ) + ( VCC ) + ( \Add2~26\ ))
-- \Add2~38\ = CARRY(( pause_timer_sig(9) ) + ( VCC ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pause_timer_sig(9),
	cin => \Add2~26\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: LABCELL_X61_Y4_N21
\pause_timer_sig[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pause_timer_sig[9]~feeder_combout\ = ( \Add2~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~37_sumout\,
	combout => \pause_timer_sig[9]~feeder_combout\);

-- Location: IOIBUF_X58_Y0_N41
\in_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: FF_X61_Y4_N59
\captured_ptime[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Selector25~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(3));

-- Location: FF_X61_Y4_N23
\pause_timer_sig[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pause_timer_sig[9]~feeder_combout\,
	asdata => captured_ptime(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(9));

-- Location: LABCELL_X62_Y4_N0
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( pause_timer_sig(10) ) + ( VCC ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( pause_timer_sig(10) ) + ( VCC ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pause_timer_sig(10),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X61_Y4_N34
\captured_ptime[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Selector25~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(4));

-- Location: FF_X62_Y4_N2
\pause_timer_sig[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	asdata => captured_ptime(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(10));

-- Location: LABCELL_X62_Y4_N3
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( pause_timer_sig(11) ) + ( VCC ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( pause_timer_sig(11) ) + ( VCC ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pause_timer_sig(11),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X60_Y4_N28
\captured_ptime[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Selector25~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(5));

-- Location: FF_X62_Y4_N5
\pause_timer_sig[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	asdata => captured_ptime(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(11));

-- Location: LABCELL_X62_Y4_N6
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( pause_timer_sig(12) ) + ( VCC ) + ( \Add2~46\ ))
-- \Add2~2\ = CARRY(( pause_timer_sig(12) ) + ( VCC ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pause_timer_sig(12),
	cin => \Add2~46\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X61_Y4_N16
\captured_ptime[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Selector25~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(6));

-- Location: FF_X62_Y4_N8
\pause_timer_sig[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	asdata => captured_ptime(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(12));

-- Location: LABCELL_X62_Y4_N9
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( pause_timer_sig(13) ) + ( VCC ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( pause_timer_sig(13) ) + ( VCC ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pause_timer_sig(13),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X60_Y2_N26
\captured_ptime[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Selector25~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(7));

-- Location: FF_X62_Y4_N11
\pause_timer_sig[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	asdata => captured_ptime(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(13));

-- Location: LABCELL_X62_Y4_N12
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( pause_timer_sig(14) ) + ( VCC ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( pause_timer_sig(14) ) + ( VCC ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pause_timer_sig(14),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X60_Y4_N15
\captured_ptime[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \captured_ptime[8]~feeder_combout\ = ( \in_data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_in_data[0]~input_o\,
	combout => \captured_ptime[8]~feeder_combout\);

-- Location: FF_X60_Y4_N16
\captured_ptime[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \captured_ptime[8]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \rx_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(8));

-- Location: FF_X62_Y4_N14
\pause_timer_sig[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	asdata => captured_ptime(8),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(14));

-- Location: LABCELL_X62_Y4_N15
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( pause_timer_sig(15) ) + ( VCC ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( pause_timer_sig(15) ) + ( VCC ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pause_timer_sig(15),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X62_Y4_N38
\captured_ptime[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \rx_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(9));

-- Location: FF_X62_Y4_N17
\pause_timer_sig[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	asdata => captured_ptime(9),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(15));

-- Location: LABCELL_X62_Y4_N18
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( pause_timer_sig(16) ) + ( VCC ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( pause_timer_sig(16) ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pause_timer_sig(16),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X62_Y4_N56
\captured_ptime[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \rx_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(10));

-- Location: FF_X62_Y4_N20
\pause_timer_sig[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	asdata => captured_ptime(10),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(16));

-- Location: FF_X62_Y4_N46
\captured_ptime[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \rx_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => captured_ptime(11));

-- Location: FF_X62_Y4_N23
\pause_timer_sig[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	asdata => captured_ptime(11),
	clrn => \ALT_INV_reset~input_o\,
	sload => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	ena => \pause_timer_sig[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pause_timer_sig(17));

-- Location: LABCELL_X62_Y4_N42
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( pause_timer_sig(15) & ( pause_timer_sig(12) ) ) # ( !pause_timer_sig(15) & ( pause_timer_sig(12) ) ) # ( pause_timer_sig(15) & ( !pause_timer_sig(12) ) ) # ( !pause_timer_sig(15) & ( !pause_timer_sig(12) & ( 
-- (((pause_timer_sig(14)) # (pause_timer_sig(16))) # (pause_timer_sig(13))) # (pause_timer_sig(17)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pause_timer_sig(17),
	datab => ALT_INV_pause_timer_sig(13),
	datac => ALT_INV_pause_timer_sig(16),
	datad => ALT_INV_pause_timer_sig(14),
	datae => ALT_INV_pause_timer_sig(15),
	dataf => ALT_INV_pause_timer_sig(12),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X61_Y4_N42
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( !\rx_state.HOLD_PAUSE~q\ & ( (((\rx_state.WAIT_SOP~q\ & ((\is_paused~reg0_q\))))) ) ) # ( \rx_state.HOLD_PAUSE~q\ & ( ((((\LessThan0~1_combout\)) # (\LessThan0~3_combout\)) # (\LessThan0~2_combout\)) # (\LessThan0~0_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000011111111111111100001111000011110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_rx_state.HOLD_PAUSE~q\,
	dataf => \ALT_INV_is_paused~reg0_q\,
	datag => \ALT_INV_rx_state.WAIT_SOP~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X61_Y4_N43
\is_paused~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector23~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \is_paused~reg0_q\);

-- Location: IOIBUF_X62_Y0_N18
\pause~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pause,
	o => \pause~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\out_ready~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_ready,
	o => \out_ready~input_o\);

-- Location: LABCELL_X60_Y3_N21
\Selector2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = ( \pause~input_o\ & ( !\tx_state.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tx_state.IDLE~q\,
	dataf => \ALT_INV_pause~input_o\,
	combout => \Selector2~5_combout\);

-- Location: LABCELL_X62_Y3_N45
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( !\tx_state.SEND_TYPE~q\ & ( (!\tx_state.SEND_PTIME~q\ & !\tx_state.SEND_OPCODE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tx_state.SEND_PTIME~q\,
	datad => \ALT_INV_tx_state.SEND_OPCODE~q\,
	dataf => \ALT_INV_tx_state.SEND_TYPE~q\,
	combout => \Selector13~0_combout\);

-- Location: LABCELL_X60_Y3_N0
\tx_state.SEND_SRC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_state.SEND_SRC~0_combout\ = ( \out_eop~0_combout\ & ( (!\tx_state.SEND_PADDING~q\ & (((!\pause~input_o\) # (\tx_state.IDLE~q\)))) # (\tx_state.SEND_PADDING~q\ & (!\out_ready~input_o\)) ) ) # ( !\out_eop~0_combout\ & ( (!\pause~input_o\) # 
-- ((\tx_state.SEND_PADDING~q\) # (\tx_state.IDLE~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111110011111111111111001111101010101100111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_pause~input_o\,
	datac => \ALT_INV_tx_state.IDLE~q\,
	datad => \ALT_INV_tx_state.SEND_PADDING~q\,
	dataf => \ALT_INV_out_eop~0_combout\,
	combout => \tx_state.SEND_SRC~0_combout\);

-- Location: LABCELL_X61_Y3_N48
\tx_state.SEND_SRC~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_state.SEND_SRC~1_combout\ = ( !\Equal0~1_combout\ & ( (\tx_state.SEND_SRC~0_combout\ & (\tx_state.SEND_SRC~q\ & ((!\out_ready~input_o\) # ((\Equal1~0_combout\) # (\Selector13~0_combout\))))) ) ) # ( \Equal0~1_combout\ & ( (!\out_ready~input_o\ & 
-- ((((\tx_state.SEND_SRC~0_combout\ & \tx_state.SEND_SRC~q\))))) # (\out_ready~input_o\ & (((\tx_state.SEND_DEST~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000001010000010100000000101111110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_tx_state.SEND_DEST~q\,
	datad => \ALT_INV_tx_state.SEND_SRC~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_tx_state.SEND_SRC~q\,
	datag => \ALT_INV_Equal1~0_combout\,
	combout => \tx_state.SEND_SRC~1_combout\);

-- Location: FF_X61_Y3_N50
\tx_state.SEND_SRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \tx_state.SEND_SRC~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_state.SEND_SRC~q\);

-- Location: LABCELL_X61_Y3_N42
\tx_counter[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_counter[1]~0_combout\ = ( !\tx_state.IDLE~q\ & ( \tx_state.SEND_TYPE~q\ & ( (!\tx_state.SEND_SRC~q\ & !\tx_state.SEND_DEST~q\) ) ) ) # ( \tx_state.IDLE~q\ & ( !\tx_state.SEND_TYPE~q\ & ( (!\tx_state.SEND_SRC~q\ & (!\tx_state.SEND_OPCODE~q\ & 
-- (!\tx_state.SEND_PTIME~q\ & !\tx_state.SEND_DEST~q\))) ) ) ) # ( !\tx_state.IDLE~q\ & ( !\tx_state.SEND_TYPE~q\ & ( (!\tx_state.SEND_SRC~q\ & !\tx_state.SEND_DEST~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000100000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.SEND_SRC~q\,
	datab => \ALT_INV_tx_state.SEND_OPCODE~q\,
	datac => \ALT_INV_tx_state.SEND_PTIME~q\,
	datad => \ALT_INV_tx_state.SEND_DEST~q\,
	datae => \ALT_INV_tx_state.IDLE~q\,
	dataf => \ALT_INV_tx_state.SEND_TYPE~q\,
	combout => \tx_counter[1]~0_combout\);

-- Location: LABCELL_X61_Y2_N12
\tx_counter[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_counter[1]~1_combout\ = ( \tx_state.SEND_PADDING~q\ & ( \tx_counter[1]~0_combout\ & ( (!\out_eop~0_combout\ & (\out_ready~input_o\ & ((\tx_state.IDLE~q\) # (\pause~input_o\)))) ) ) ) # ( !\tx_state.SEND_PADDING~q\ & ( \tx_counter[1]~0_combout\ & ( 
-- (\tx_state.IDLE~q\) # (\pause~input_o\) ) ) ) # ( \tx_state.SEND_PADDING~q\ & ( !\tx_counter[1]~0_combout\ & ( (!\out_eop~0_combout\ & (\out_ready~input_o\ & ((\tx_state.IDLE~q\) # (\pause~input_o\)))) ) ) ) # ( !\tx_state.SEND_PADDING~q\ & ( 
-- !\tx_counter[1]~0_combout\ & ( (\out_ready~input_o\ & ((\tx_state.IDLE~q\) # (\pause~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000100110001011111010111110000000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pause~input_o\,
	datab => \ALT_INV_out_eop~0_combout\,
	datac => \ALT_INV_tx_state.IDLE~q\,
	datad => \ALT_INV_out_ready~input_o\,
	datae => \ALT_INV_tx_state.SEND_PADDING~q\,
	dataf => \ALT_INV_tx_counter[1]~0_combout\,
	combout => \tx_counter[1]~1_combout\);

-- Location: LABCELL_X61_Y2_N45
\tx_counter[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_counter[2]~3_combout\ = ( tx_counter(1) & ( (!\tx_counter[1]~1_combout\ & (((tx_counter(2))))) # (\tx_counter[1]~1_combout\ & (\tx_counter[1]~2_combout\ & (!tx_counter(0) $ (!tx_counter(2))))) ) ) # ( !tx_counter(1) & ( (tx_counter(2) & 
-- ((!\tx_counter[1]~1_combout\) # (\tx_counter[1]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000001101110100000001110111000000000111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_counter[1]~2_combout\,
	datab => \ALT_INV_tx_counter[1]~1_combout\,
	datac => ALT_INV_tx_counter(0),
	datad => ALT_INV_tx_counter(2),
	dataf => ALT_INV_tx_counter(1),
	combout => \tx_counter[2]~3_combout\);

-- Location: FF_X61_Y2_N47
\tx_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \tx_counter[2]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_counter(2));

-- Location: LABCELL_X61_Y2_N36
\tx_counter[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_counter[3]~7_combout\ = ( tx_counter(3) & ( tx_counter(2) & ( (!\tx_counter[1]~1_combout\) # ((\tx_counter[1]~2_combout\ & ((!tx_counter(0)) # (!tx_counter(1))))) ) ) ) # ( !tx_counter(3) & ( tx_counter(2) & ( (tx_counter(0) & 
-- (\tx_counter[1]~1_combout\ & (\tx_counter[1]~2_combout\ & tx_counter(1)))) ) ) ) # ( tx_counter(3) & ( !tx_counter(2) & ( (!\tx_counter[1]~1_combout\) # (\tx_counter[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111100000000000000011100111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(0),
	datab => \ALT_INV_tx_counter[1]~1_combout\,
	datac => \ALT_INV_tx_counter[1]~2_combout\,
	datad => ALT_INV_tx_counter(1),
	datae => ALT_INV_tx_counter(3),
	dataf => ALT_INV_tx_counter(2),
	combout => \tx_counter[3]~7_combout\);

-- Location: FF_X61_Y2_N38
\tx_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \tx_counter[3]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_counter(3));

-- Location: LABCELL_X61_Y2_N57
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( tx_counter(2) & ( (tx_counter(3) & (tx_counter(1) & tx_counter(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(3),
	datac => ALT_INV_tx_counter(1),
	datad => ALT_INV_tx_counter(0),
	dataf => ALT_INV_tx_counter(2),
	combout => \Add0~0_combout\);

-- Location: LABCELL_X61_Y2_N42
\tx_counter[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_counter[5]~5_combout\ = ( \Add0~0_combout\ & ( (!\tx_counter[1]~1_combout\ & (((tx_counter(5))))) # (\tx_counter[1]~1_combout\ & (\tx_counter[1]~2_combout\ & (!tx_counter(4) $ (!tx_counter(5))))) ) ) # ( !\Add0~0_combout\ & ( (tx_counter(5) & 
-- ((!\tx_counter[1]~1_combout\) # (\tx_counter[1]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000001101110100000001110111000000000111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_counter[1]~2_combout\,
	datab => \ALT_INV_tx_counter[1]~1_combout\,
	datac => ALT_INV_tx_counter(4),
	datad => ALT_INV_tx_counter(5),
	dataf => \ALT_INV_Add0~0_combout\,
	combout => \tx_counter[5]~5_combout\);

-- Location: FF_X61_Y2_N44
\tx_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \tx_counter[5]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_counter(5));

-- Location: LABCELL_X61_Y2_N3
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !tx_counter(3) & ( !tx_counter(5) & ( (!tx_counter(4) & (tx_counter(2) & (!tx_counter(1) & tx_counter(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(4),
	datab => ALT_INV_tx_counter(2),
	datac => ALT_INV_tx_counter(1),
	datad => ALT_INV_tx_counter(0),
	datae => ALT_INV_tx_counter(3),
	dataf => ALT_INV_tx_counter(5),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X61_Y3_N39
\Selector2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = ( \tx_state.SEND_DEST~q\ & ( \tx_state.SEND_PADDING~q\ & ( (!\out_ready~input_o\) # ((!\out_eop~0_combout\ & ((!\Equal0~1_combout\) # (\Selector2~5_combout\)))) ) ) ) # ( !\tx_state.SEND_DEST~q\ & ( \tx_state.SEND_PADDING~q\ & ( 
-- (\Selector2~5_combout\ & ((!\out_ready~input_o\) # (!\out_eop~0_combout\))) ) ) ) # ( \tx_state.SEND_DEST~q\ & ( !\tx_state.SEND_PADDING~q\ & ( (!\out_ready~input_o\) # ((!\Equal0~1_combout\) # (\Selector2~5_combout\)) ) ) ) # ( !\tx_state.SEND_DEST~q\ & 
-- ( !\tx_state.SEND_PADDING~q\ & ( \Selector2~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111011101100110010001100101111101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_Selector2~5_combout\,
	datac => \ALT_INV_out_eop~0_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_tx_state.SEND_DEST~q\,
	dataf => \ALT_INV_tx_state.SEND_PADDING~q\,
	combout => \Selector2~6_combout\);

-- Location: FF_X61_Y3_N41
\tx_state.SEND_DEST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector2~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_state.SEND_DEST~q\);

-- Location: LABCELL_X63_Y3_N24
\Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = ( \out_ready~input_o\ & ( \tx_state.IDLE~q\ & ( (!tx_counter(0) & ((\tx_state.SEND_SRC~q\) # (\tx_state.SEND_DEST~q\))) ) ) ) # ( !\out_ready~input_o\ & ( \tx_state.IDLE~q\ & ( (tx_counter(0) & ((\tx_state.SEND_SRC~q\) # 
-- (\tx_state.SEND_DEST~q\))) ) ) ) # ( \out_ready~input_o\ & ( !\tx_state.IDLE~q\ & ( (!tx_counter(0) & (((\tx_state.SEND_SRC~q\) # (\tx_state.SEND_DEST~q\)))) # (tx_counter(0) & (!\pause~input_o\)) ) ) ) # ( !\out_ready~input_o\ & ( !\tx_state.IDLE~q\ & ( 
-- (tx_counter(0) & ((!\pause~input_o\) # ((\tx_state.SEND_SRC~q\) # (\tx_state.SEND_DEST~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101010011101110111000000101010101010000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(0),
	datab => \ALT_INV_pause~input_o\,
	datac => \ALT_INV_tx_state.SEND_DEST~q\,
	datad => \ALT_INV_tx_state.SEND_SRC~q\,
	datae => \ALT_INV_out_ready~input_o\,
	dataf => \ALT_INV_tx_state.IDLE~q\,
	combout => \Selector13~2_combout\);

-- Location: LABCELL_X62_Y3_N24
\Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = ( \out_eop~0_combout\ & ( (tx_counter(0) & \tx_state.SEND_PADDING~q\) ) ) # ( !\out_eop~0_combout\ & ( (\tx_state.SEND_PADDING~q\ & (!tx_counter(0) $ (!\out_ready~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tx_counter(0),
	datac => \ALT_INV_tx_state.SEND_PADDING~q\,
	datad => \ALT_INV_out_ready~input_o\,
	dataf => \ALT_INV_out_eop~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: LABCELL_X62_Y3_N6
\Selector13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = ( tx_counter(0) & ( \Selector13~1_combout\ ) ) # ( !tx_counter(0) & ( \Selector13~1_combout\ ) ) # ( tx_counter(0) & ( !\Selector13~1_combout\ & ( ((!\Selector13~0_combout\ & ((!\out_ready~input_o\) # (\Equal1~0_combout\)))) # 
-- (\Selector13~2_combout\) ) ) ) # ( !tx_counter(0) & ( !\Selector13~1_combout\ & ( ((\out_ready~input_o\ & (!\Selector13~0_combout\ & \Equal1~0_combout\))) # (\Selector13~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110101110101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector13~2_combout\,
	datab => \ALT_INV_out_ready~input_o\,
	datac => \ALT_INV_Selector13~0_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => ALT_INV_tx_counter(0),
	dataf => \ALT_INV_Selector13~1_combout\,
	combout => \Selector13~3_combout\);

-- Location: FF_X62_Y3_N8
\tx_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector13~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_counter(0));

-- Location: LABCELL_X61_Y2_N6
\tx_counter[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_counter[1]~4_combout\ = ( tx_counter(1) & ( \tx_counter[1]~1_combout\ & ( (!tx_counter(0) & \tx_counter[1]~2_combout\) ) ) ) # ( !tx_counter(1) & ( \tx_counter[1]~1_combout\ & ( (tx_counter(0) & \tx_counter[1]~2_combout\) ) ) ) # ( tx_counter(1) & ( 
-- !\tx_counter[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tx_counter(0),
	datac => \ALT_INV_tx_counter[1]~2_combout\,
	datae => ALT_INV_tx_counter(1),
	dataf => \ALT_INV_tx_counter[1]~1_combout\,
	combout => \tx_counter[1]~4_combout\);

-- Location: FF_X61_Y2_N8
\tx_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \tx_counter[1]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_counter(1));

-- Location: LABCELL_X61_Y2_N18
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !tx_counter(2) & ( !tx_counter(0) & ( (!tx_counter(4) & (!tx_counter(1) & (!tx_counter(3) & !tx_counter(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(4),
	datab => ALT_INV_tx_counter(1),
	datac => ALT_INV_tx_counter(3),
	datad => ALT_INV_tx_counter(5),
	datae => ALT_INV_tx_counter(2),
	dataf => ALT_INV_tx_counter(0),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X62_Y3_N42
\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( \Equal0~1_combout\ & ( (!\out_ready~input_o\ & (((\tx_state.SEND_TYPE~q\)))) # (\out_ready~input_o\ & (((\Equal1~0_combout\ & \tx_state.SEND_TYPE~q\)) # (\tx_state.SEND_SRC~q\))) ) ) # ( !\Equal0~1_combout\ & ( 
-- (\tx_state.SEND_TYPE~q\ & ((!\out_ready~input_o\) # (\Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000001101110100000011110111110000001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_out_ready~input_o\,
	datac => \ALT_INV_tx_state.SEND_SRC~q\,
	datad => \ALT_INV_tx_state.SEND_TYPE~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X62_Y3_N44
\tx_state.SEND_TYPE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_state.SEND_TYPE~q\);

-- Location: LABCELL_X61_Y2_N54
\tx_state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_state~18_combout\ = ( !\Equal1~0_combout\ & ( \out_ready~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_out_ready~input_o\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \tx_state~18_combout\);

-- Location: FF_X61_Y3_N35
\tx_state.SEND_OPCODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \tx_state.SEND_TYPE~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \tx_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_state.SEND_OPCODE~q\);

-- Location: FF_X61_Y3_N26
\tx_state.SEND_PTIME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \tx_state.SEND_OPCODE~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \tx_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_state.SEND_PTIME~q\);

-- Location: LABCELL_X61_Y3_N6
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \Equal1~0_combout\ & ( (\tx_state.SEND_PADDING~q\ & ((!\out_ready~input_o\) # (!\out_eop~0_combout\))) ) ) # ( !\Equal1~0_combout\ & ( (!\out_ready~input_o\ & (((\tx_state.SEND_PADDING~q\)))) # (\out_ready~input_o\ & 
-- (((!\out_eop~0_combout\ & \tx_state.SEND_PADDING~q\)) # (\tx_state.SEND_PTIME~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111101111000001011110111100000000111011100000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_out_eop~0_combout\,
	datac => \ALT_INV_tx_state.SEND_PTIME~q\,
	datad => \ALT_INV_tx_state.SEND_PADDING~q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X61_Y3_N8
\tx_state.SEND_PADDING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_state.SEND_PADDING~q\);

-- Location: LABCELL_X61_Y2_N48
\tx_counter[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_counter[1]~2_combout\ = ( \Equal0~1_combout\ & ( (\tx_state.SEND_PADDING~q\ & (!\tx_state.SEND_DEST~q\ & !\tx_state.SEND_SRC~q\)) ) ) # ( !\Equal0~1_combout\ & ( ((\tx_state.SEND_SRC~q\) # (\tx_state.SEND_DEST~q\)) # (\tx_state.SEND_PADDING~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tx_state.SEND_PADDING~q\,
	datac => \ALT_INV_tx_state.SEND_DEST~q\,
	datad => \ALT_INV_tx_state.SEND_SRC~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \tx_counter[1]~2_combout\);

-- Location: LABCELL_X61_Y2_N33
\tx_counter[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_counter[4]~6_combout\ = ( \tx_counter[1]~1_combout\ & ( (\tx_counter[1]~2_combout\ & (!\Add0~0_combout\ $ (!tx_counter(4)))) ) ) # ( !\tx_counter[1]~1_combout\ & ( tx_counter(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_counter[1]~2_combout\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => ALT_INV_tx_counter(4),
	dataf => \ALT_INV_tx_counter[1]~1_combout\,
	combout => \tx_counter[4]~6_combout\);

-- Location: FF_X61_Y2_N35
\tx_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \tx_counter[4]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_counter(4));

-- Location: LABCELL_X61_Y2_N24
\out_eop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_eop~0_combout\ = ( tx_counter(3) & ( tx_counter(5) & ( (!tx_counter(4) & (!tx_counter(1) & (!tx_counter(0) & tx_counter(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(4),
	datab => ALT_INV_tx_counter(1),
	datac => ALT_INV_tx_counter(0),
	datad => ALT_INV_tx_counter(2),
	datae => ALT_INV_tx_counter(3),
	dataf => ALT_INV_tx_counter(5),
	combout => \out_eop~0_combout\);

-- Location: LABCELL_X61_Y3_N9
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \tx_state.SEND_PADDING~q\ & ( (!\out_ready~input_o\ & (((\tx_state.IDLE~q\) # (\pause~input_o\)))) # (\out_ready~input_o\ & (!\out_eop~0_combout\ & ((\tx_state.IDLE~q\) # (\pause~input_o\)))) ) ) # ( !\tx_state.SEND_PADDING~q\ & 
-- ( (\tx_state.IDLE~q\) # (\pause~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001110111011100000111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_out_eop~0_combout\,
	datac => \ALT_INV_pause~input_o\,
	datad => \ALT_INV_tx_state.IDLE~q\,
	dataf => \ALT_INV_tx_state.SEND_PADDING~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X61_Y3_N11
\tx_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_state.IDLE~q\);

-- Location: LABCELL_X60_Y3_N27
\Selector22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = ( \out_data[0]~reg0_q\ & ( !\tx_state.IDLE~q\ ) ) # ( !\out_data[0]~reg0_q\ & ( (\pause~input_o\ & !\tx_state.IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pause~input_o\,
	datad => \ALT_INV_tx_state.IDLE~q\,
	dataf => \ALT_INV_out_data[0]~reg0_q\,
	combout => \Selector22~3_combout\);

-- Location: IOIBUF_X52_Y0_N52
\p_time[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(0),
	o => \p_time[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\p_time[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(8),
	o => \p_time[8]~input_o\);

-- Location: LABCELL_X60_Y3_N18
\Selector22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = ( \Equal1~0_combout\ & ( ((\p_time[0]~input_o\ & \tx_state.SEND_PTIME~q\)) # (\tx_state.SEND_OPCODE~q\) ) ) # ( !\Equal1~0_combout\ & ( (\p_time[8]~input_o\ & \tx_state.SEND_OPCODE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p_time[0]~input_o\,
	datab => \ALT_INV_p_time[8]~input_o\,
	datac => \ALT_INV_tx_state.SEND_OPCODE~q\,
	datad => \ALT_INV_tx_state.SEND_PTIME~q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector22~2_combout\);

-- Location: LABCELL_X61_Y2_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !tx_counter(4) & ( (!tx_counter(5) & !tx_counter(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tx_counter(5),
	datad => ALT_INV_tx_counter(3),
	dataf => ALT_INV_tx_counter(4),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X60_Y3_N36
\Selector22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = ( tx_counter(2) & ( \Equal0~0_combout\ & ( (!tx_counter(1) & (((\tx_state.SEND_SRC~q\ & !tx_counter(0))) # (\tx_state.SEND_DEST~q\))) ) ) ) # ( !tx_counter(2) & ( \Equal0~0_combout\ & ( (\tx_state.SEND_SRC~q\ & (tx_counter(0) & 
-- !tx_counter(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.SEND_DEST~q\,
	datab => \ALT_INV_tx_state.SEND_SRC~q\,
	datac => ALT_INV_tx_counter(0),
	datad => ALT_INV_tx_counter(1),
	datae => ALT_INV_tx_counter(2),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Selector22~1_combout\);

-- Location: LABCELL_X61_Y2_N30
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !tx_counter(5) & ( (!tx_counter(2) & (!tx_counter(4) & !tx_counter(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tx_counter(2),
	datac => ALT_INV_tx_counter(4),
	datad => ALT_INV_tx_counter(3),
	dataf => ALT_INV_tx_counter(5),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X60_Y3_N24
\Selector22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~4_combout\ = ( \Equal0~1_combout\ & ( (\tx_state.SEND_DEST~q\ & (\out_data[0]~reg0_q\ & !\Equal1~1_combout\)) ) ) # ( !\Equal0~1_combout\ & ( (\out_data[0]~reg0_q\ & (!\Equal1~1_combout\ & ((\tx_state.SEND_SRC~q\) # (\tx_state.SEND_DEST~q\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000000100000011000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.SEND_DEST~q\,
	datab => \ALT_INV_out_data[0]~reg0_q\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_tx_state.SEND_SRC~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Selector22~4_combout\);

-- Location: LABCELL_X61_Y3_N12
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( \tx_state.SEND_TYPE~q\ & ( \tx_state.SEND_SRC~q\ ) ) # ( !\tx_state.SEND_TYPE~q\ & ( \tx_state.SEND_SRC~q\ ) ) # ( \tx_state.SEND_TYPE~q\ & ( !\tx_state.SEND_SRC~q\ ) ) # ( !\tx_state.SEND_TYPE~q\ & ( !\tx_state.SEND_SRC~q\ & ( 
-- (((\tx_state.SEND_DEST~q\) # (\tx_state.SEND_OPCODE~q\)) # (\tx_state.SEND_PADDING~q\)) # (\tx_state.SEND_PTIME~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.SEND_PTIME~q\,
	datab => \ALT_INV_tx_state.SEND_PADDING~q\,
	datac => \ALT_INV_tx_state.SEND_OPCODE~q\,
	datad => \ALT_INV_tx_state.SEND_DEST~q\,
	datae => \ALT_INV_tx_state.SEND_TYPE~q\,
	dataf => \ALT_INV_tx_state.SEND_SRC~q\,
	combout => \Selector22~0_combout\);

-- Location: LABCELL_X60_Y3_N12
\Selector22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~5_combout\ = ( !\out_ready~input_o\ & ( ((((\Selector22~0_combout\ & \out_data[0]~reg0_q\)) # (\Selector22~4_combout\))) # (\Selector22~3_combout\) ) ) # ( \out_ready~input_o\ & ( ((((\Selector22~4_combout\)) # (\Selector22~1_combout\)) # 
-- (\Selector22~2_combout\)) # (\Selector22~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101011111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector22~3_combout\,
	datab => \ALT_INV_Selector22~2_combout\,
	datac => \ALT_INV_Selector22~1_combout\,
	datad => \ALT_INV_out_data[0]~reg0_q\,
	datae => \ALT_INV_out_ready~input_o\,
	dataf => \ALT_INV_Selector22~4_combout\,
	datag => \ALT_INV_Selector22~0_combout\,
	combout => \Selector22~5_combout\);

-- Location: FF_X60_Y3_N14
\out_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector22~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[0]~reg0_q\);

-- Location: IOIBUF_X54_Y0_N1
\p_time[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(9),
	o => \p_time[9]~input_o\);

-- Location: LABCELL_X60_Y3_N3
\Selector21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = ( \tx_state.SEND_OPCODE~q\ & ( (\p_time[9]~input_o\ & !\Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_p_time[9]~input_o\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_tx_state.SEND_OPCODE~q\,
	combout => \Selector21~2_combout\);

-- Location: LABCELL_X61_Y3_N18
\Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = ( \Selector22~0_combout\ & ( (!\out_ready~input_o\) # ((!\pause~input_o\ & !\tx_state.IDLE~q\)) ) ) # ( !\Selector22~0_combout\ & ( (!\pause~input_o\ & !\tx_state.IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_pause~input_o\,
	datad => \ALT_INV_tx_state.IDLE~q\,
	dataf => \ALT_INV_Selector22~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: IOIBUF_X54_Y0_N35
\p_time[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(1),
	o => \p_time[1]~input_o\);

-- Location: LABCELL_X60_Y3_N54
\Selector21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = ( !tx_counter(2) & ( tx_counter(1) & ( (tx_counter(0) & \tx_state.SEND_SRC~q\) ) ) ) # ( tx_counter(2) & ( !tx_counter(1) & ( (!tx_counter(0) & \tx_state.SEND_SRC~q\) ) ) ) # ( !tx_counter(2) & ( !tx_counter(1) & ( ((tx_counter(0) 
-- & \tx_state.SEND_DEST~q\)) # (\tx_state.SEND_SRC~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001000100010001000010001000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(0),
	datab => \ALT_INV_tx_state.SEND_SRC~q\,
	datac => \ALT_INV_tx_state.SEND_DEST~q\,
	datae => ALT_INV_tx_counter(2),
	dataf => ALT_INV_tx_counter(1),
	combout => \Selector21~3_combout\);

-- Location: LABCELL_X60_Y3_N48
\Selector21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~4_combout\ = ( \Selector21~3_combout\ & ( \Equal0~1_combout\ & ( (\tx_state.SEND_PTIME~q\ & (\Equal1~0_combout\ & \p_time[1]~input_o\)) ) ) ) # ( !\Selector21~3_combout\ & ( \Equal0~1_combout\ & ( (\tx_state.SEND_PTIME~q\ & (\Equal1~0_combout\ 
-- & \p_time[1]~input_o\)) ) ) ) # ( \Selector21~3_combout\ & ( !\Equal0~1_combout\ & ( ((\tx_state.SEND_PTIME~q\ & (\Equal1~0_combout\ & \p_time[1]~input_o\))) # (\Equal0~0_combout\) ) ) ) # ( !\Selector21~3_combout\ & ( !\Equal0~1_combout\ & ( 
-- (\tx_state.SEND_PTIME~q\ & (\Equal1~0_combout\ & \p_time[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010101010101011100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_tx_state.SEND_PTIME~q\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_p_time[1]~input_o\,
	datae => \ALT_INV_Selector21~3_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Selector21~4_combout\);

-- Location: LABCELL_X60_Y3_N42
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( tx_counter(2) & ( \Equal0~0_combout\ & ( (!tx_counter(1) & (((!\tx_state.SEND_SRC~q\) # (tx_counter(0))))) # (tx_counter(1) & (!\tx_state.SEND_DEST~q\ & ((!\tx_state.SEND_SRC~q\)))) ) ) ) # ( !tx_counter(2) & ( 
-- \Equal0~0_combout\ & ( (!\tx_state.SEND_DEST~q\) # ((!tx_counter(0)) # (tx_counter(1))) ) ) ) # ( tx_counter(2) & ( !\Equal0~0_combout\ & ( (!\tx_state.SEND_DEST~q\ & !\tx_state.SEND_SRC~q\) ) ) ) # ( !tx_counter(2) & ( !\Equal0~0_combout\ & ( 
-- (!\tx_state.SEND_DEST~q\ & !\tx_state.SEND_SRC~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111011111110111110111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.SEND_DEST~q\,
	datab => ALT_INV_tx_counter(1),
	datac => ALT_INV_tx_counter(0),
	datad => \ALT_INV_tx_state.SEND_SRC~q\,
	datae => ALT_INV_tx_counter(2),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: LABCELL_X60_Y3_N30
\Selector21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~5_combout\ = ( \out_data[1]~reg0_q\ & ( \Selector21~0_combout\ & ( ((\out_ready~input_o\ & ((\Selector21~4_combout\) # (\Selector21~2_combout\)))) # (\Selector21~1_combout\) ) ) ) # ( !\out_data[1]~reg0_q\ & ( \Selector21~0_combout\ & ( 
-- (\out_ready~input_o\ & ((\Selector21~4_combout\) # (\Selector21~2_combout\))) ) ) ) # ( \out_data[1]~reg0_q\ & ( !\Selector21~0_combout\ ) ) # ( !\out_data[1]~reg0_q\ & ( !\Selector21~0_combout\ & ( (\out_ready~input_o\ & ((\Selector21~4_combout\) # 
-- (\Selector21~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111111111111111111100000000010111110011001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector21~2_combout\,
	datab => \ALT_INV_Selector21~1_combout\,
	datac => \ALT_INV_Selector21~4_combout\,
	datad => \ALT_INV_out_ready~input_o\,
	datae => \ALT_INV_out_data[1]~reg0_q\,
	dataf => \ALT_INV_Selector21~0_combout\,
	combout => \Selector21~5_combout\);

-- Location: FF_X60_Y3_N31
\out_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector21~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[1]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N18
\p_time[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(2),
	o => \p_time[2]~input_o\);

-- Location: LABCELL_X63_Y2_N42
\Selector20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = ( \tx_state.SEND_SRC~q\ & ( \Equal1~1_combout\ & ( (!tx_counter(0) & (((\tx_state.SEND_PTIME~q\ & \p_time[2]~input_o\)) # (tx_counter(1)))) ) ) ) # ( !\tx_state.SEND_SRC~q\ & ( \Equal1~1_combout\ & ( (!tx_counter(1) & 
-- (!tx_counter(0) & (\tx_state.SEND_PTIME~q\ & \p_time[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000100010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(1),
	datab => ALT_INV_tx_counter(0),
	datac => \ALT_INV_tx_state.SEND_PTIME~q\,
	datad => \ALT_INV_p_time[2]~input_o\,
	datae => \ALT_INV_tx_state.SEND_SRC~q\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \Selector20~2_combout\);

-- Location: IOIBUF_X68_Y0_N52
\p_time[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(10),
	o => \p_time[10]~input_o\);

-- Location: LABCELL_X62_Y2_N57
\Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = ( \tx_state.SEND_OPCODE~q\ & ( (!\Equal1~0_combout\ & \p_time[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_p_time[10]~input_o\,
	dataf => \ALT_INV_tx_state.SEND_OPCODE~q\,
	combout => \Selector20~1_combout\);

-- Location: LABCELL_X63_Y2_N51
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( \tx_state.SEND_PADDING~q\ & ( \Selector13~0_combout\ & ( (\out_ready~input_o\ & ((\pause~input_o\) # (\tx_state.IDLE~q\))) ) ) ) # ( !\tx_state.SEND_PADDING~q\ & ( \Selector13~0_combout\ & ( (\pause~input_o\) # 
-- (\tx_state.IDLE~q\) ) ) ) # ( \tx_state.SEND_PADDING~q\ & ( !\Selector13~0_combout\ & ( (\out_ready~input_o\ & ((\pause~input_o\) # (\tx_state.IDLE~q\))) ) ) ) # ( !\tx_state.SEND_PADDING~q\ & ( !\Selector13~0_combout\ & ( (\out_ready~input_o\ & 
-- ((\pause~input_o\) # (\tx_state.IDLE~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100111111001111110001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_tx_state.IDLE~q\,
	datac => \ALT_INV_pause~input_o\,
	datae => \ALT_INV_tx_state.SEND_PADDING~q\,
	dataf => \ALT_INV_Selector13~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: LABCELL_X62_Y2_N0
\Selector20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~4_combout\ = ( !\tx_state.SEND_SRC~q\ & ( (\tx_state.SEND_DEST~q\ & ((!\out_ready~input_o\) # ((!\Equal0~0_combout\) # ((tx_counter(1) & tx_counter(2)))))) ) ) # ( \tx_state.SEND_SRC~q\ & ( (!\out_ready~input_o\) # ((!\Equal0~0_combout\) # 
-- ((tx_counter(1) & ((!tx_counter(0)) # (tx_counter(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111111111111111111100001100000011011101110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(1),
	datab => \ALT_INV_out_ready~input_o\,
	datac => ALT_INV_tx_counter(0),
	datad => ALT_INV_tx_counter(2),
	datae => \ALT_INV_tx_state.SEND_SRC~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	datag => \ALT_INV_tx_state.SEND_DEST~q\,
	combout => \Selector20~4_combout\);

-- Location: LABCELL_X63_Y2_N27
\Selector20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~3_combout\ = ( \out_data[2]~reg0_q\ & ( \Selector20~4_combout\ ) ) # ( !\out_data[2]~reg0_q\ & ( \Selector20~4_combout\ & ( (\out_ready~input_o\ & ((\Selector20~1_combout\) # (\Selector20~2_combout\))) ) ) ) # ( \out_data[2]~reg0_q\ & ( 
-- !\Selector20~4_combout\ & ( (!\Selector20~0_combout\) # ((\out_ready~input_o\ & ((\Selector20~1_combout\) # (\Selector20~2_combout\)))) ) ) ) # ( !\out_data[2]~reg0_q\ & ( !\Selector20~4_combout\ & ( (\out_ready~input_o\ & ((\Selector20~1_combout\) # 
-- (\Selector20~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101111111110001010100010101000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_Selector20~2_combout\,
	datac => \ALT_INV_Selector20~1_combout\,
	datad => \ALT_INV_Selector20~0_combout\,
	datae => \ALT_INV_out_data[2]~reg0_q\,
	dataf => \ALT_INV_Selector20~4_combout\,
	combout => \Selector20~3_combout\);

-- Location: FF_X63_Y2_N28
\out_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector20~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[2]~reg0_q\);

-- Location: LABCELL_X62_Y3_N30
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( tx_counter(0) & ( (\tx_state.SEND_SRC~q\ & (!tx_counter(1) $ (!tx_counter(2)))) ) ) # ( !tx_counter(0) & ( (\tx_state.SEND_SRC~q\ & (!tx_counter(1) & tx_counter(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.SEND_SRC~q\,
	datac => ALT_INV_tx_counter(1),
	datad => ALT_INV_tx_counter(2),
	dataf => ALT_INV_tx_counter(0),
	combout => \Selector15~0_combout\);

-- Location: LABCELL_X62_Y3_N33
\Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = ( \Selector15~0_combout\ & ( \Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: IOIBUF_X72_Y0_N52
\p_time[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(11),
	o => \p_time[11]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\p_time[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(3),
	o => \p_time[3]~input_o\);

-- Location: LABCELL_X62_Y3_N48
\Selector19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = ( \tx_state.SEND_OPCODE~q\ & ( \Equal1~0_combout\ & ( ((\p_time[3]~input_o\ & \tx_state.SEND_PTIME~q\)) # (\tx_state.SEND_TYPE~q\) ) ) ) # ( !\tx_state.SEND_OPCODE~q\ & ( \Equal1~0_combout\ & ( ((\p_time[3]~input_o\ & 
-- \tx_state.SEND_PTIME~q\)) # (\tx_state.SEND_TYPE~q\) ) ) ) # ( \tx_state.SEND_OPCODE~q\ & ( !\Equal1~0_combout\ & ( \p_time[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p_time[11]~input_o\,
	datab => \ALT_INV_tx_state.SEND_TYPE~q\,
	datac => \ALT_INV_p_time[3]~input_o\,
	datad => \ALT_INV_tx_state.SEND_PTIME~q\,
	datae => \ALT_INV_tx_state.SEND_OPCODE~q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector19~2_combout\);

-- Location: LABCELL_X61_Y3_N3
\Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = ( \tx_state.IDLE~q\ & ( \Equal1~1_combout\ & ( (!\Selector22~0_combout\) # (\out_ready~input_o\) ) ) ) # ( !\tx_state.IDLE~q\ & ( \Equal1~1_combout\ & ( (\pause~input_o\ & ((!\Selector22~0_combout\) # (\out_ready~input_o\))) ) ) ) 
-- # ( \tx_state.IDLE~q\ & ( !\Equal1~1_combout\ & ( (!\tx_state.SEND_SRC~q\ & ((!\Selector22~0_combout\) # (\out_ready~input_o\))) ) ) ) # ( !\tx_state.IDLE~q\ & ( !\Equal1~1_combout\ & ( (\pause~input_o\ & (!\tx_state.SEND_SRC~q\ & 
-- ((!\Selector22~0_combout\) # (\out_ready~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000000111101010000000000110001001100011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_pause~input_o\,
	datac => \ALT_INV_Selector22~0_combout\,
	datad => \ALT_INV_tx_state.SEND_SRC~q\,
	datae => \ALT_INV_tx_state.IDLE~q\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \Selector19~1_combout\);

-- Location: LABCELL_X62_Y3_N15
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \tx_state.SEND_DEST~q\ & ( (!\Equal0~0_combout\) # ((tx_counter(2) & tx_counter(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(2),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_tx_counter(1),
	dataf => \ALT_INV_tx_state.SEND_DEST~q\,
	combout => \Selector19~0_combout\);

-- Location: LABCELL_X62_Y3_N36
\Selector19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = ( \out_data[3]~reg0_q\ & ( \Selector19~0_combout\ ) ) # ( !\out_data[3]~reg0_q\ & ( \Selector19~0_combout\ & ( (\out_ready~input_o\ & ((\Selector19~2_combout\) # (\Selector15~1_combout\))) ) ) ) # ( \out_data[3]~reg0_q\ & ( 
-- !\Selector19~0_combout\ & ( (!\Selector19~1_combout\) # ((\out_ready~input_o\ & ((\Selector19~2_combout\) # (\Selector15~1_combout\)))) ) ) ) # ( !\out_data[3]~reg0_q\ & ( !\Selector19~0_combout\ & ( (\out_ready~input_o\ & ((\Selector19~2_combout\) # 
-- (\Selector15~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011111111110001001100010011000100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~1_combout\,
	datab => \ALT_INV_out_ready~input_o\,
	datac => \ALT_INV_Selector19~2_combout\,
	datad => \ALT_INV_Selector19~1_combout\,
	datae => \ALT_INV_out_data[3]~reg0_q\,
	dataf => \ALT_INV_Selector19~0_combout\,
	combout => \Selector19~3_combout\);

-- Location: FF_X62_Y3_N37
\out_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector19~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[3]~reg0_q\);

-- Location: LABCELL_X61_Y3_N27
\Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ( tx_counter(2) & ( \Equal0~0_combout\ & ( (!tx_counter(1) & ((!tx_counter(0) & (\tx_state.SEND_SRC~q\)) # (tx_counter(0) & ((\tx_state.SEND_DEST~q\))))) ) ) ) # ( !tx_counter(2) & ( \Equal0~0_combout\ & ( (\tx_state.SEND_SRC~q\ & 
-- (tx_counter(0) & !tx_counter(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000100000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.SEND_SRC~q\,
	datab => ALT_INV_tx_counter(0),
	datac => ALT_INV_tx_counter(1),
	datad => \ALT_INV_tx_state.SEND_DEST~q\,
	datae => ALT_INV_tx_counter(2),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: IOIBUF_X52_Y0_N1
\p_time[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(4),
	o => \p_time[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\p_time[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(12),
	o => \p_time[12]~input_o\);

-- Location: LABCELL_X60_Y3_N9
\Selector18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = ( \tx_state.SEND_PTIME~q\ & ( \Equal1~0_combout\ & ( \p_time[4]~input_o\ ) ) ) # ( \tx_state.SEND_PTIME~q\ & ( !\Equal1~0_combout\ & ( (\p_time[12]~input_o\ & \tx_state.SEND_OPCODE~q\) ) ) ) # ( !\tx_state.SEND_PTIME~q\ & ( 
-- !\Equal1~0_combout\ & ( (\p_time[12]~input_o\ & \tx_state.SEND_OPCODE~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p_time[4]~input_o\,
	datac => \ALT_INV_p_time[12]~input_o\,
	datad => \ALT_INV_tx_state.SEND_OPCODE~q\,
	datae => \ALT_INV_tx_state.SEND_PTIME~q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector18~2_combout\);

-- Location: LABCELL_X61_Y3_N30
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( tx_counter(2) & ( \Equal0~0_combout\ & ( (!tx_counter(1) & ((!tx_counter(0) & ((!\tx_state.SEND_SRC~q\))) # (tx_counter(0) & (!\tx_state.SEND_DEST~q\)))) # (tx_counter(1) & (!\tx_state.SEND_DEST~q\ & (!\tx_state.SEND_SRC~q\))) ) 
-- ) ) # ( !tx_counter(2) & ( \Equal0~0_combout\ ) ) # ( tx_counter(2) & ( !\Equal0~0_combout\ & ( (!\tx_state.SEND_DEST~q\ & !\tx_state.SEND_SRC~q\) ) ) ) # ( !tx_counter(2) & ( !\Equal0~0_combout\ & ( (!\tx_state.SEND_DEST~q\ & !\tx_state.SEND_SRC~q\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011111111111111111110000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.SEND_DEST~q\,
	datab => ALT_INV_tx_counter(1),
	datac => \ALT_INV_tx_state.SEND_SRC~q\,
	datad => ALT_INV_tx_counter(0),
	datae => ALT_INV_tx_counter(2),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X61_Y3_N54
\Selector18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = ( \out_data[4]~reg0_q\ & ( \Selector18~0_combout\ & ( ((\out_ready~input_o\ & ((\Selector18~2_combout\) # (\Selector18~1_combout\)))) # (\Selector21~1_combout\) ) ) ) # ( !\out_data[4]~reg0_q\ & ( \Selector18~0_combout\ & ( 
-- (\out_ready~input_o\ & ((\Selector18~2_combout\) # (\Selector18~1_combout\))) ) ) ) # ( \out_data[4]~reg0_q\ & ( !\Selector18~0_combout\ ) ) # ( !\out_data[4]~reg0_q\ & ( !\Selector18~0_combout\ & ( (\out_ready~input_o\ & ((\Selector18~2_combout\) # 
-- (\Selector18~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011111111111111111100000011001100110101011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector21~1_combout\,
	datab => \ALT_INV_out_ready~input_o\,
	datac => \ALT_INV_Selector18~1_combout\,
	datad => \ALT_INV_Selector18~2_combout\,
	datae => \ALT_INV_out_data[4]~reg0_q\,
	dataf => \ALT_INV_Selector18~0_combout\,
	combout => \Selector18~3_combout\);

-- Location: FF_X61_Y3_N55
\out_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector18~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[4]~reg0_q\);

-- Location: LABCELL_X62_Y2_N18
\Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = ( \tx_state.SEND_DEST~q\ & ( \Equal0~0_combout\ & ( (tx_counter(2) & (((!tx_counter(0) & \tx_state.SEND_SRC~q\)) # (tx_counter(1)))) ) ) ) # ( !\tx_state.SEND_DEST~q\ & ( \Equal0~0_combout\ & ( (tx_counter(2) & 
-- (\tx_state.SEND_SRC~q\ & ((!tx_counter(0)) # (tx_counter(1))))) ) ) ) # ( \tx_state.SEND_DEST~q\ & ( !\Equal0~0_combout\ ) ) # ( !\tx_state.SEND_DEST~q\ & ( !\Equal0~0_combout\ & ( \tx_state.SEND_SRC~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000001000110000001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(0),
	datab => ALT_INV_tx_counter(2),
	datac => ALT_INV_tx_counter(1),
	datad => \ALT_INV_tx_state.SEND_SRC~q\,
	datae => \ALT_INV_tx_state.SEND_DEST~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Selector17~2_combout\);

-- Location: LABCELL_X62_Y2_N42
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \tx_state.SEND_SRC~q\ & ( tx_counter(0) & ( (\Equal0~0_combout\ & !tx_counter(2)) ) ) ) # ( \tx_state.SEND_SRC~q\ & ( !tx_counter(0) & ( (\Equal0~0_combout\ & !tx_counter(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => ALT_INV_tx_counter(2),
	datad => ALT_INV_tx_counter(1),
	datae => \ALT_INV_tx_state.SEND_SRC~q\,
	dataf => ALT_INV_tx_counter(0),
	combout => \Selector17~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\p_time[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(13),
	o => \p_time[13]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\p_time[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(5),
	o => \p_time[5]~input_o\);

-- Location: LABCELL_X62_Y2_N48
\Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = ( \tx_state.SEND_PTIME~q\ & ( \tx_state.SEND_OPCODE~q\ & ( (!\Equal1~0_combout\ & (\p_time[13]~input_o\)) # (\Equal1~0_combout\ & ((\p_time[5]~input_o\))) ) ) ) # ( !\tx_state.SEND_PTIME~q\ & ( \tx_state.SEND_OPCODE~q\ & ( 
-- (\p_time[13]~input_o\ & !\Equal1~0_combout\) ) ) ) # ( \tx_state.SEND_PTIME~q\ & ( !\tx_state.SEND_OPCODE~q\ & ( (\p_time[5]~input_o\ & \Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100110011000000000011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p_time[13]~input_o\,
	datac => \ALT_INV_p_time[5]~input_o\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_tx_state.SEND_PTIME~q\,
	dataf => \ALT_INV_tx_state.SEND_OPCODE~q\,
	combout => \Selector17~1_combout\);

-- Location: LABCELL_X62_Y2_N30
\Selector17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = ( \out_data[5]~reg0_q\ & ( \Selector17~1_combout\ & ( ((\Selector21~1_combout\) # (\out_ready~input_o\)) # (\Selector17~2_combout\) ) ) ) # ( !\out_data[5]~reg0_q\ & ( \Selector17~1_combout\ & ( \out_ready~input_o\ ) ) ) # ( 
-- \out_data[5]~reg0_q\ & ( !\Selector17~1_combout\ & ( (((\out_ready~input_o\ & \Selector17~0_combout\)) # (\Selector21~1_combout\)) # (\Selector17~2_combout\) ) ) ) # ( !\out_data[5]~reg0_q\ & ( !\Selector17~1_combout\ & ( (\out_ready~input_o\ & 
-- \Selector17~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010111110111111100110011001100110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector17~2_combout\,
	datab => \ALT_INV_out_ready~input_o\,
	datac => \ALT_INV_Selector21~1_combout\,
	datad => \ALT_INV_Selector17~0_combout\,
	datae => \ALT_INV_out_data[5]~reg0_q\,
	dataf => \ALT_INV_Selector17~1_combout\,
	combout => \Selector17~3_combout\);

-- Location: FF_X62_Y2_N31
\out_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector17~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[5]~reg0_q\);

-- Location: LABCELL_X62_Y2_N39
\Selector21~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~6_combout\ = (tx_counter(2) & tx_counter(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tx_counter(2),
	datad => ALT_INV_tx_counter(1),
	combout => \Selector21~6_combout\);

-- Location: LABCELL_X62_Y2_N24
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( !\tx_state.SEND_DEST~q\ & ( \Selector21~6_combout\ & ( (!\tx_state.SEND_SRC~q\) # ((\Equal0~0_combout\ & (\out_ready~input_o\ & !tx_counter(0)))) ) ) ) # ( \tx_state.SEND_DEST~q\ & ( !\Selector21~6_combout\ & ( 
-- (\Equal0~0_combout\ & \out_ready~input_o\) ) ) ) # ( !\tx_state.SEND_DEST~q\ & ( !\Selector21~6_combout\ & ( (!\tx_state.SEND_SRC~q\) # ((\Equal0~0_combout\ & \out_ready~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010001000100010001000111111111000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_out_ready~input_o\,
	datac => ALT_INV_tx_counter(0),
	datad => \ALT_INV_tx_state.SEND_SRC~q\,
	datae => \ALT_INV_tx_state.SEND_DEST~q\,
	dataf => \ALT_INV_Selector21~6_combout\,
	combout => \Selector16~0_combout\);

-- Location: IOIBUF_X68_Y0_N1
\p_time[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(6),
	o => \p_time[6]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\p_time[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(14),
	o => \p_time[14]~input_o\);

-- Location: LABCELL_X62_Y2_N36
\Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = ( \Equal1~0_combout\ & ( (\p_time[6]~input_o\ & \tx_state.SEND_PTIME~q\) ) ) # ( !\Equal1~0_combout\ & ( (\p_time[14]~input_o\ & \tx_state.SEND_OPCODE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p_time[6]~input_o\,
	datab => \ALT_INV_p_time[14]~input_o\,
	datac => \ALT_INV_tx_state.SEND_OPCODE~q\,
	datad => \ALT_INV_tx_state.SEND_PTIME~q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector16~1_combout\);

-- Location: LABCELL_X62_Y2_N15
\Selector16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = ( tx_counter(0) & ( (\tx_state.SEND_DEST~q\ & !tx_counter(1)) ) ) # ( !tx_counter(0) & ( (\tx_state.SEND_SRC~q\ & tx_counter(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.SEND_DEST~q\,
	datac => \ALT_INV_tx_state.SEND_SRC~q\,
	datad => ALT_INV_tx_counter(1),
	dataf => ALT_INV_tx_counter(0),
	combout => \Selector16~2_combout\);

-- Location: LABCELL_X62_Y2_N9
\Selector16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = ( \out_ready~input_o\ & ( \Selector16~2_combout\ & ( (!\Equal0~1_combout\ & ((\out_data[6]~reg0_q\) # (\Equal1~1_combout\))) ) ) ) # ( !\out_ready~input_o\ & ( \Selector16~2_combout\ & ( (\out_data[6]~reg0_q\ & 
-- !\Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_out_data[6]~reg0_q\,
	datac => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_out_ready~input_o\,
	dataf => \ALT_INV_Selector16~2_combout\,
	combout => \Selector16~3_combout\);

-- Location: LABCELL_X63_Y2_N18
\Selector16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = ( \out_data[6]~reg0_q\ & ( \Selector16~3_combout\ ) ) # ( !\out_data[6]~reg0_q\ & ( \Selector16~3_combout\ ) ) # ( \out_data[6]~reg0_q\ & ( !\Selector16~3_combout\ & ( (!\Selector16~0_combout\) # ((!\Selector20~0_combout\) # 
-- ((\out_ready~input_o\ & \Selector16~1_combout\))) ) ) ) # ( !\out_data[6]~reg0_q\ & ( !\Selector16~3_combout\ & ( (\out_ready~input_o\ & \Selector16~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111001111110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_Selector16~0_combout\,
	datac => \ALT_INV_Selector20~0_combout\,
	datad => \ALT_INV_Selector16~1_combout\,
	datae => \ALT_INV_out_data[6]~reg0_q\,
	dataf => \ALT_INV_Selector16~3_combout\,
	combout => \Selector16~4_combout\);

-- Location: FF_X63_Y2_N20
\out_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector16~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[6]~reg0_q\);

-- Location: LABCELL_X62_Y3_N27
\Selector15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = ( \tx_state.SEND_DEST~q\ & ( (!\Equal0~0_combout\) # ((!tx_counter(2) & (tx_counter(0) & !tx_counter(1))) # (tx_counter(2) & ((tx_counter(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110010111101011111001011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(2),
	datab => ALT_INV_tx_counter(0),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_tx_counter(1),
	dataf => \ALT_INV_tx_state.SEND_DEST~q\,
	combout => \Selector15~2_combout\);

-- Location: IOIBUF_X70_Y0_N52
\p_time[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(15),
	o => \p_time[15]~input_o\);

-- Location: LABCELL_X62_Y3_N12
\Selector15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\tx_state.SEND_OPCODE~q\ & (\p_time[15]~input_o\ & !\Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tx_state.SEND_OPCODE~q\,
	datac => \ALT_INV_p_time[15]~input_o\,
	datad => \ALT_INV_Equal1~0_combout\,
	combout => \Selector15~3_combout\);

-- Location: LABCELL_X62_Y3_N54
\Selector15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = ( !tx_counter(1) & ( !tx_counter(4) & ( (!tx_counter(3) & (!tx_counter(2) & (\tx_state.SEND_DEST~q\ & !tx_counter(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tx_counter(3),
	datab => ALT_INV_tx_counter(2),
	datac => \ALT_INV_tx_state.SEND_DEST~q\,
	datad => ALT_INV_tx_counter(5),
	datae => ALT_INV_tx_counter(1),
	dataf => ALT_INV_tx_counter(4),
	combout => \Selector15~4_combout\);

-- Location: IOIBUF_X68_Y0_N18
\p_time[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_time(7),
	o => \p_time[7]~input_o\);

-- Location: LABCELL_X62_Y3_N18
\Selector15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~5_combout\ = ( \Equal1~0_combout\ & ( \Selector15~0_combout\ & ( (!\Selector15~4_combout\ & (!\Equal0~0_combout\ & ((!\p_time[7]~input_o\) # (!\tx_state.SEND_PTIME~q\)))) ) ) ) # ( !\Equal1~0_combout\ & ( \Selector15~0_combout\ & ( 
-- (!\Selector15~4_combout\ & !\Equal0~0_combout\) ) ) ) # ( \Equal1~0_combout\ & ( !\Selector15~0_combout\ & ( (!\Selector15~4_combout\ & ((!\p_time[7]~input_o\) # (!\tx_state.SEND_PTIME~q\))) ) ) ) # ( !\Equal1~0_combout\ & ( !\Selector15~0_combout\ & ( 
-- !\Selector15~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101000100010100000101000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~4_combout\,
	datab => \ALT_INV_p_time[7]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_tx_state.SEND_PTIME~q\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Selector15~0_combout\,
	combout => \Selector15~5_combout\);

-- Location: LABCELL_X62_Y3_N0
\Selector15~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~6_combout\ = ( \out_data[7]~reg0_q\ & ( \Selector15~5_combout\ & ( (!\Selector19~1_combout\) # (((\out_ready~input_o\ & \Selector15~3_combout\)) # (\Selector15~2_combout\)) ) ) ) # ( !\out_data[7]~reg0_q\ & ( \Selector15~5_combout\ & ( 
-- (\out_ready~input_o\ & \Selector15~3_combout\) ) ) ) # ( \out_data[7]~reg0_q\ & ( !\Selector15~5_combout\ & ( ((!\Selector19~1_combout\) # (\Selector15~2_combout\)) # (\out_ready~input_o\) ) ) ) # ( !\out_data[7]~reg0_q\ & ( !\Selector15~5_combout\ & ( 
-- \out_ready~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110111111101111100000000010101011100111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_ready~input_o\,
	datab => \ALT_INV_Selector19~1_combout\,
	datac => \ALT_INV_Selector15~2_combout\,
	datad => \ALT_INV_Selector15~3_combout\,
	datae => \ALT_INV_out_data[7]~reg0_q\,
	dataf => \ALT_INV_Selector15~5_combout\,
	combout => \Selector15~6_combout\);

-- Location: FF_X62_Y3_N1
\out_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector15~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_data[7]~reg0_q\);

-- Location: FF_X61_Y2_N22
\out_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \pause~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_tx_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_valid~reg0_q\);

-- Location: LABCELL_X62_Y2_N12
\out_sop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_sop~0_combout\ = ( \tx_state.IDLE~q\ & ( (\out_sop~reg0_q\ & ((!\tx_state.SEND_DEST~q\) # (!\out_ready~input_o\))) ) ) # ( !\tx_state.IDLE~q\ & ( (\out_sop~reg0_q\) # (\pause~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111011100000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.SEND_DEST~q\,
	datab => \ALT_INV_out_ready~input_o\,
	datac => \ALT_INV_pause~input_o\,
	datad => \ALT_INV_out_sop~reg0_q\,
	dataf => \ALT_INV_tx_state.IDLE~q\,
	combout => \out_sop~0_combout\);

-- Location: FF_X62_Y2_N13
\out_sop~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \out_sop~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_sop~reg0_q\);

-- Location: LABCELL_X62_Y2_N54
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \out_eop~0_combout\ & ( (!\tx_state.SEND_PADDING~q\ & (\tx_state.IDLE~q\ & ((\out_eop~reg0_q\)))) # (\tx_state.SEND_PADDING~q\ & (((\out_eop~reg0_q\) # (\out_ready~input_o\)))) ) ) # ( !\out_eop~0_combout\ & ( (\out_eop~reg0_q\ & 
-- ((\tx_state.SEND_PADDING~q\) # (\tx_state.IDLE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000011010111110000001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_state.IDLE~q\,
	datab => \ALT_INV_out_ready~input_o\,
	datac => \ALT_INV_tx_state.SEND_PADDING~q\,
	datad => \ALT_INV_out_eop~reg0_q\,
	dataf => \ALT_INV_out_eop~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X62_Y2_N55
\out_eop~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_eop~reg0_q\);

-- Location: LABCELL_X88_Y2_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


