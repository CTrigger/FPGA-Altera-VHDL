LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_arith.all;
use IEEE.Std_Logic_Unsigned.all;

ENTITY Projeto_Base IS
	PORT
	(
		-- clocks Availble
		CLOCK_25 : IN bit_vector (0 to 1);
		CLOCK_27 : IN bit_vector (0 to 1);
		CLOCK_50 : IN bit;
		
		-- memoria SRAM
		SRAM_ADDR 	: 		OUT 		std_logic_vector (17 downto 0);
		SRAM_DQ 		: 		INOUT 	std_logic_vector (15 downto 0);
		SRAM_WE_N	: 		OUT 		bit; -- write enable 0
		SRAM_OE_N	: 		OUT 		bit; -- read enable 0
		SRAM_UB_N	: 		OUT 		bit; -- Data Mask High-Byte 0
		SRAM_LB_N	: 		OUT 		bit; -- Data Mask Low-Byte 0
		SRAM_CE_N	: 		OUT 		bit; -- Chip Enable 0
		
		-- memoria FLASH
		fl_addr		:		out		std_logic_vector (21 downto 0);
		fl_dq			:		inout		std_logic_vector (7 downto 0);
		fl_oe_n		:		out		bit; -- read/output Enable in 0
		fl_rst_n		:		out		bit; -- reset enable in 0
		fl_we_n		:		out		bit; -- write enable in 0
		
		
		-- interface
		HEX0 : OUT bit_vector (0 to 6);
		HEX1 : OUT bit_vector (0 to 6);
		HEX2 : OUT bit_vector (0 to 6);
		HEX3 : OUT bit_vector (0 to 6);
		
		LEDG : OUT std_logic_vector (7 downto 0);
		LEDR : OUT std_logic_vector (9 downto 0);
		
		SW: IN std_logic_vector (9 downto 0);
		KEY: IN bit_vector (0 to 3)
		
	);
END Projeto_Base;
 
ARCHITECTURE Kim OF Projeto_Base IS
	-- aux variables to button state
	SIGNAL button3: bit;
	SIGNAL button2: bit;
	SIGNAL button1: bit;
	SIGNAL button0: bit;
	
	-- conversion the address to hex display
	TYPE Dec IS ARRAY (0 to 15) OF bit_vector (0 to 6);
	CONSTANT DB: Dec :=(
		0 =>  "0000001",
		1 =>  "1001111",
		2 =>  "0010010",
		3 =>  "0000110",
		4 =>  "1001100",		
		5 =>  "0100100",		
		6 =>  "0100000",		
		7 =>  "0001101",
		8 =>  "0000000",
		9 =>  "0000100",
		10=>  "0001000",
		11=>  "1100000",
		12=>  "0110001",
		13=>  "1000010",
		14=>  "0110000",
		15=>  "0111000"
		
	);
	-- memory SRAM
	-- Address
	--signal  		address17Bit	: 	std_logic_vector (17 downto 0) 	:= 	"000000000000000001";	
	--constant  	oneBit			: 	std_logic_vector (17 downto 0) 	:= 	"000000000000000001";
	
	-- data
	constant		ioLocker			:	std_logic_vector (15 downto 0)	:=		"ZZZZZZZZZZZZZZZZ";
	
	-- controller
	signal		writeEnable		: 	bit;
	signal		readEnable		: 	bit;
	
	
	-- memory flash
	-- address
	signal  		address21Bit	: 	std_logic_vector (21 downto 0) 	:= 	"0000000000000000000000";	
	constant  	one21Bit			: 	std_logic_vector (21 downto 0) 	:= 	"0000000000000000000001";
	constant  	address21Start	: 	std_logic_vector (21 downto 0) 	:= 	"0000000000000000000000";

	
	
	BEGIN	
		-- INTERFACE
		LEDR <= SW;	
					
		--hex3 <= db(to_integer(ieee.numeric_std.unsigned(address17Bit(15 downto 12))));
		--hex2 <= db(to_integer(ieee.numeric_std.unsigned(address21Bit(11 downto 8))));
		hex3 <= db(to_integer(ieee.numeric_std.unsigned(sw(9 downto 9))));
		hex2 <= db(to_integer(ieee.numeric_std.unsigned(sw(8 downto 8))));
		hex1 <= db(to_integer(ieee.numeric_std.unsigned(address21Bit(7 downto 4))));
		hex0 <= db(to_integer(ieee.numeric_std.unsigned(address21Bit(3 downto 0))));
		
		-- MEMORY SRAM
		SRAM_ADDR 		<= 	address21Bit(17 downto 0);
		writeEnable		<=		to_bit(SW(9));
		readEnable		<=		to_bit(SW(8));
		SRAM_CE_N		<=		'0'; -- Chip Enable 0
		SRAM_UB_N 		<= 	'0'; -- Data Mask High-Byte 0
		SRAM_LB_N 		<= 	'0'; -- Data Mask Low-Byte 0
		
		--SRAM_OE_N		<=		to_bit(SW(8)); -- read enable 0
		--SRAM_WE_N   	<=		to_bit(SW(9));
		
		--SRAM_WE_N: in bit; -- write enable 0
		--SRAM_OE_N: in bit; -- read enable 0
		
		-- MEMORY FLASH
		--fl_addr 			<= 	address21Bit;
		--fl_rst_n 		<= 	'0'; 
		--fl_dq				<= 	sw(7 downto 0); -- write state at key2
		--fl_oe_n 			<= 	to_bit(sw(8));
		--fl_we_n 			<= 	to_bit(sw(9));
		
		
		PROCESS (CLOCK_50)
			BEGIN
			IF (CLOCK_50'EVENT and CLOCK_50 = '0')THEN
				-- Locked the I/O
				if	writeEnable = '1' and readEnable = '1' then
				-- =========================
					SRAM_DQ 			<= 	ioLocker;
					SRAM_OE_N		<=		'1';
					SRAM_WE_N   	<=		'1';
				-- =========================
					
					-- Enable Move Address to UP
					IF (KEY(3) = '0') THEN
						IF button3 = '0' then
							--address17Bit <= address17Bit + oneBit;
							address21Bit <= address21Bit + one21Bit;
							button3 <= '1';
						end if;
						
					ELSE
						button3 <= '0';
					END IF;
					
					-- Enable Move Address to DOWN
					IF (KEY(2) = '0') THEN
						if button2 = '0' then
							--address17Bit <= oneBit;
							address21Bit <= address21Start;
							button2	<= '1';
						end if;
					ELSE
						button2 <= '0';
					END IF;
				
				--	read is enabled
				elsif writeEnable = '1' and readEnable = '0'  then
				-- =========================
					SRAM_OE_N		<=		'0';
					SRAM_WE_N   	<=		'1';
				-- =========================
					-- read
					IF (KEY(0) = '0') THEN
						if button0 = '0' then
							button0	<= 	'1';
							--ledg 		<= 	fl_dq;
							LEDG 	<= 	SRAM_DQ(7 downto 0);
						end if;
					ELSE
						button0 <= '0';
					END IF;
		
				-- write is enabled
				elsif writeEnable = '0' and readEnable = '0'  then
				-- =========================
					SRAM_OE_N		<=		'0';
					SRAM_WE_N   	<=		'0';
				-- =========================
					-- write
					IF (KEY(1) = '0') THEN
						if button1 = '0' then
							button1		<= 	'1';
							SRAM_DQ 	<= 	("000000"&SW(9 downto 0));
							--fl_dq 		<= 	(sw(7 downto 0));
						end if;
					ELSE
						button1 <= '0';
					END IF;
					
				end if;
				
			END IF;
		END PROCESS;
	
END Kim;
