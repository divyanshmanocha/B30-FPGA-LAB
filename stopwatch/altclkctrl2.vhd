-- megafunction wizard: %ALTCLKCTRL%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altclkctrl 

-- ============================================================
-- File Name: altclkctrl2.vhd
-- Megafunction Name(s):
-- 			altclkctrl
--
-- Simulation Library Files(s):
-- 			cycloneiii
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.1 Build 232 06/12/2013 SP 1 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


--altclkctrl CBX_AUTO_BLACKBOX="ALL" CLOCK_TYPE="Global Clock" DEVICE_FAMILY="Cyclone III" ENA_REGISTER_MODE="falling edge" USE_GLITCH_FREE_SWITCH_OVER_IMPLEMENTATION="OFF" clkselect ena inclk outclk
--VERSION_BEGIN 13.0 cbx_altclkbuf 2013:06:12:18:03:43:SJ cbx_cycloneii 2013:06:12:18:03:43:SJ cbx_lpm_add_sub 2013:06:12:18:03:43:SJ cbx_lpm_compare 2013:06:12:18:03:43:SJ cbx_lpm_decode 2013:06:12:18:03:43:SJ cbx_lpm_mux 2013:06:12:18:03:43:SJ cbx_mgl 2013:06:12:18:05:10:SJ cbx_stratix 2013:06:12:18:03:43:SJ cbx_stratixii 2013:06:12:18:03:43:SJ cbx_stratixiii 2013:06:12:18:03:43:SJ cbx_stratixv 2013:06:12:18:03:43:SJ  VERSION_END

 LIBRARY cycloneiii;
 USE cycloneiii.all;

--synthesis_resources = clkctrl 1 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  altclkctrl2_altclkctrl_uhi IS 
	 PORT 
	 ( 
		 clkselect	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0) := (OTHERS => '0');
		 ena	:	IN  STD_LOGIC := '1';
		 inclk	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0) := (OTHERS => '0');
		 outclk	:	OUT  STD_LOGIC
	 ); 
 END altclkctrl2_altclkctrl_uhi;

 ARCHITECTURE RTL OF altclkctrl2_altclkctrl_uhi IS

	 SIGNAL  wire_clkctrl1_outclk	:	STD_LOGIC;
	 SIGNAL  clkselect_wire :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  inclk_wire :	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 COMPONENT  cycloneiii_clkctrl
	 GENERIC 
	 (
		clock_type	:	STRING;
		ena_register_mode	:	STRING := "falling edge";
		lpm_type	:	STRING := "cycloneiii_clkctrl"
	 );
	 PORT
	 ( 
		clkselect	:	IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		ena	:	IN STD_LOGIC;
		inclk	:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		outclk	:	OUT STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	clkselect_wire <= ( clkselect);
	inclk_wire <= ( inclk);
	outclk <= wire_clkctrl1_outclk;
	clkctrl1 :  cycloneiii_clkctrl
	  GENERIC MAP (
		clock_type => "Global Clock",
		ena_register_mode => "falling edge"
	  )
	  PORT MAP ( 
		clkselect => clkselect_wire,
		ena => ena,
		inclk => inclk_wire,
		outclk => wire_clkctrl1_outclk
	  );

 END RTL; --altclkctrl2_altclkctrl_uhi
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY altclkctrl2 IS
	PORT
	(
		inclk		: IN STD_LOGIC ;
		outclk		: OUT STD_LOGIC 
	);
END altclkctrl2;


ARCHITECTURE RTL OF altclkctrl2 IS

	SIGNAL sub_wire0	: STD_LOGIC ;
	SIGNAL sub_wire1_bv	: BIT_VECTOR (1 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (1 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3	: STD_LOGIC ;
	SIGNAL sub_wire4	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire5_bv	: BIT_VECTOR (2 DOWNTO 0);
	SIGNAL sub_wire5	: STD_LOGIC_VECTOR (2 DOWNTO 0);



	COMPONENT altclkctrl2_altclkctrl_uhi
	PORT (
			clkselect	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			ena	: IN STD_LOGIC ;
			inclk	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			outclk	: OUT STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	sub_wire1_bv(1 DOWNTO 0) <= "00";
	sub_wire1    <= To_stdlogicvector(sub_wire1_bv);
	sub_wire2    <= '1';
	sub_wire5_bv(2 DOWNTO 0) <= "000";
	sub_wire5    <= To_stdlogicvector(sub_wire5_bv);
	outclk    <= sub_wire0;
	sub_wire3    <= inclk;
	sub_wire4    <= sub_wire5(2 DOWNTO 0) & sub_wire3;

	altclkctrl2_altclkctrl_uhi_component : altclkctrl2_altclkctrl_uhi
	PORT MAP (
		clkselect => sub_wire1,
		ena => sub_wire2,
		inclk => sub_wire4,
		outclk => sub_wire0
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: clock_inputs NUMERIC "1"
-- Retrieval info: CONSTANT: ENA_REGISTER_MODE STRING "falling edge"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: CONSTANT: USE_GLITCH_FREE_SWITCH_OVER_IMPLEMENTATION STRING "OFF"
-- Retrieval info: CONSTANT: clock_type STRING "Global Clock"
-- Retrieval info: USED_PORT: inclk 0 0 0 0 INPUT NODEFVAL "inclk"
-- Retrieval info: USED_PORT: outclk 0 0 0 0 OUTPUT NODEFVAL "outclk"
-- Retrieval info: CONNECT: @clkselect 0 0 2 0 GND 0 0 2 0
-- Retrieval info: CONNECT: @ena 0 0 0 0 VCC 0 0 0 0
-- Retrieval info: CONNECT: @inclk 0 0 3 1 GND 0 0 3 0
-- Retrieval info: CONNECT: @inclk 0 0 1 0 inclk 0 0 0 0
-- Retrieval info: CONNECT: outclk 0 0 0 0 @outclk 0 0 0 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL altclkctrl2.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altclkctrl2.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altclkctrl2.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altclkctrl2.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL altclkctrl2_inst.vhd FALSE
-- Retrieval info: LIB_FILE: cycloneiii
