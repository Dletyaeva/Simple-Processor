----------------------------------------------------------------------------------
-- Name:		Daleela Letyaeva
-- Date:		11/09/2023
-- Course:	CSCE 230
-- File:		ControlUnit.vhd
-- HW:		Group Project Lab 2
-- Purp:		Implements a 16-Bit Control Unit for our processor
--
-- Doc:		Lecture Notes
-- 	
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity ControlUnit is
	port(
		clock	: in  std_logic;
		reset	: in  std_logic;
		status: in  std_logic_vector(15 downto 0);
		MFC	: in  std_logic;
		IR		: in  std_logic_vector(15 downto 0);
		
		RF_write	: out std_logic;
		C_select	: out std_logic_vector(1 downto 0);
		B_select : out std_logic;
		Y_select	: out std_logic_vector(1 downto 0);
		ALU_op	: out std_logic_vector(1 downto 0);
		A_inv		: out std_logic;
		B_inv		: out std_logic;
		C_in		: out std_logic;
		MEM_read	: out std_logic;
		MEM_write: out std_logic;
		MA_select: out std_logic;
		IR_enable: out std_logic;
		PC_select: out std_logic_vector(1 downto 0);
		PC_enable: out std_logic;
		INC_select: out std_logic;
		extend	: out std_logic_vector(2 downto 0);
		Status_enable : out std_logic;
		-- for ModelSim debugging only
		debug_state	: out std_logic_vector(2 downto 0)
	);
end ControlUnit;

architecture implementation of ControlUnit is
	signal current_state : std_logic_vector(2 downto 0);
	signal next_state   	: std_logic_vector(2 downto 0);
	signal WMFC				: std_logic;
	signal OP_code			: std_logic_vector(2 downto 0);
	signal OPX				: std_logic_vector(3 downto 0);
	signal N,C,V,Z			: std_logic;
begin
	OP_code <= IR(2 downto 0);
	OPX <= IR(6 downto 3);
	N <= status(3);
	C <= status(2);
	V <= status(1);
	Z <= status(0);

	-- for debugging only
	debug_state <= current_state;

	-- current state logic
	process(clock, reset)
	begin
		if (reset = '1') then
			current_state <= "000";
		elsif rising_edge(clock) then
			current_state <= next_state;
		end if;
	end process;

	-- next state logic
	process(current_state, WMFC, MFC)
	begin
	case current_state is
	       when "000"  =>  
					next_state <= "001";		-- start with stage 1
	       when "001"  =>  
				if (WMFC='0') then 
					next_state <= "010";   	-- not wait for mem (for clarity, not necessary)
		      elsif (MFC='1') then 
					next_state <= "010";   	-- mem ready
		      else 		
					next_state <= "001";		-- mem not ready
				end if; 
	       when "010"  =>  
					next_state <= "011";
	       when "011"  =>  
					next_state <= "100";
	       when "100"  =>  
				if (WMFC='0') then 
					next_state <= "101";    -- not wait for mem
		      elsif (MFC='1') then 
					next_state <= "101";    -- mem ready
		      else 		
					next_state <= "100"; 	-- mem not ready
				end if;  
	       when "101"  =>  
					next_state <= "001";
	       when others =>  
					next_state <= "000"; 	-- something wrong, reset
	end case;
	end process;

	
	-- Mealy output logic
	process(current_state, MFC, OP_code, OPX, N, C, V, Z)
	begin
		-- set all output signals to the default 0
		RF_write <= '0'; C_select <= "00";  B_select <= '0'; Y_select <= "00";
		ALU_op <= "00"; A_inv <= '0'; B_inv <= '0'; C_in <= '0';
		MEM_read <= '0'; MEM_write <= '0'; MA_select <= '0'; IR_enable <= '0';
		PC_select <= "00"; PC_enable <= '0'; INC_select <= '0'; extend <= "000";
		Status_enable <= '0';
		-- set internal WMFC signal to the default 0
		WMFC <= '0'; 

		-- Student Code:  set output signals and WMFC for each instruction and each stage
		-- signal names at the top for op_code and opx
		
			if(current_state= "001") then --> same for all instructions
				MA_select	<= '1';
				MEM_read		<= '1';	
				MEM_write	<= '0';
				WMFC			<= '1';
				if (MFC = '1') then
					IR_enable <= '1';
				else
					IR_enable <= '0';
				end if;
				
				INC_select <='0';
				PC_select <= "01";
				
				if (MFC = '1') then 
					PC_enable <= '1';
				else
					PC_enable <= '0';
				end if;
			end if;
			
		-- R type
			
			--if((OP_code="") and (OPX="")) then
				-- if (current_state = "010") then
				-- elsif (current_state = "011") - ALU signals 
					-- B_select	<= '0';
					-- ALU_op 	<= ''; -- this changes based on the operation
					-- A_inv 	<= '0';
					-- B_inv 	<= '0';
					-- C_in 		<= '0';
				-- elsif (current_state = "100") -- signals for mux to write from RZ to RY
					--Y_select <= "00";
				-- elsif (current_state = "101") -- signals to write to destination register
					-- RF_write <= '1';
					-- C_select <= "01";
				--end if;
			-- end if;
			
			
			--add 	!
			if((OP_code="000") and (OPX="0000")) then
				if (current_state = "010") then
				elsif (current_state = "011") then -- ALU signals 
					B_select	<= '0';
					ALU_op 	<="11";
					A_inv 	<= '0';
					B_inv 	<= '0';
					C_in 		<= '0';
				elsif (current_state = "100") then -- signals for mux to write from RZ to RY
					Y_select <= "00";
				elsif (current_state = "101") then -- signals to write to destination register
					RF_write <= '1';
					C_select <= "01";
				end if;
			end if;
			
			--sub		! 
			if((OP_code="000") and (OPX="0001")) then
				if (current_state = "010") then
				elsif (current_state = "011") then-- ALU signals 
					B_select	<= '0';
					ALU_op 	<="11";
					A_inv 	<= '0';
					B_inv 	<= '1'; -- 1 bit complement of second value
					C_in 		<= '1'; -- carry in ?
				elsif (current_state = "100") then-- signals for mux to write from RZ to RY
					Y_select <= "00";
				elsif (current_state = "101") then-- signals to write to destination register
					RF_write <= '1';
					C_select <= "01";
				end if;
			end if;
			
			--or		!
			if((OP_code="000") and (OPX="0011")) then
				if (current_state = "010") then
				elsif (current_state = "011") then -- ALU signals 
					B_select	<= '0';
					ALU_op 	<= "01";
					A_inv 	<= '0';
					B_inv 	<= '0';
					C_in 		<= '0';
				elsif (current_state = "100") then-- signals for mux to write from RZ to RY
					Y_select <= "00";
				elsif (current_state = "101") then-- signals to write to destination register
					RF_write <= '1';
					C_select <= "01";
				end if;
			end if;
			
			--nor		 -- opposite of and function
			if((OP_code="000") and (OPX="0110")) then
				if (current_state = "010") then
				elsif (current_state = "011") then-- ALU signals 
					B_select	<= '0';
					ALU_op 	<= "00"; -- and
					A_inv 	<= '1';  -- invert to get opposite result
					B_inv 	<= '1';
					C_in 		<= '0';
				elsif (current_state = "100") then-- signals for mux to write from RZ to RY
					Y_select <= "00";
				elsif (current_state = "101") then-- signals to write to destination register
					RF_write <= '1';
					C_select <= "01";
				end if;
			end if;
			
			--xor		!
			if((OP_code="000") and (OPX="0100")) then
				if (current_state = "010") then
				elsif (current_state = "011") then-- ALU signals 
					B_select	<= '0';
					ALU_op 	<= "10"; 
					A_inv 	<= '0';
					B_inv 	<= '0';
					C_in 		<= '0';
				elsif (current_state = "100") then -- signals for mux to write from RZ to RY
					Y_select <= "00";
				elsif (current_state = "101") then -- signals to write to destination register
					RF_write <= '1';
					C_select <= "01";
				end if;
			end if;
			
			--ret !!
			if((OP_code="000") and (OPX="1011")) then
				if (current_state = "010") then
				elsif (current_state = "011") then
					PC_select <= "00";
					PC_enable <= '1';
				elsif (current_state = "100") then 
				elsif (current_state = "101") then 
				end if;
			end if;
			
			
			--cmp !!
			if((OP_code="000") and (OPX="1000")) then
				if (current_state = "010") then
				elsif (current_state = "011") then 
					B_select	<= '0';
					ALU_op 	<= "11"; 
					A_inv 	<= '0';
					B_inv 	<= '1';
					C_in 		<= '1';
					status_enable <= '1';
				elsif (current_state = "100") then 
				elsif (current_state = "101") then 
				end if;
			end if;
			
			--nand
			--and
			--nxor
			--jmp
			--callr
			
			
		-- I Type
		--there is a diff! from R-type Bselect and Cselect are different
			--if((OP_code="")) then
				-- if (current_state = "010") then
				-- elsif (current_state = "011") - ALU signals
					-- extend	<= "000"; <-- diff!
					-- B_select	<= '1';
					-- ALU_op	<= "";   <-- diff!
					-- A_inv 	<= '0';
					-- B_inv 	<= '0';
					-- C_in 		<= '0';
				-- elsif (current_state = "100") - signals for mux to write from RZ to RY
					--Y_select	<="00";
				-- elsif (current_state = "101") - signals to write to destination register
					-- RF_write <= '1';
					-- C_select <= "00";
				--end if;
			-- end if;		
		
			--addi	!
			if(OP_code="011") then
				if (current_state = "010") then
				elsif (current_state = "011") then-- ALU signals
					extend	<= "000";
					B_select	<= '1';
					ALU_op	<= "11";
					A_inv 	<= '0';
					B_inv 	<= '0';
					C_in 		<= '0';
				elsif (current_state = "100") then -- signals for mux to write from RZ to RY
					Y_select	<="00";
				elsif (current_state = "101") then -- signals to write to destination register
					RF_write <= '1';
					C_select <= "00";
				end if;
			end if;
			
			--ori		!
			if(OP_code="100") then
				if (current_state = "010") then
				elsif (current_state = "011") then-- ALU signals
					extend	<= "001";
					B_select	<= '1';
					ALU_op	<= "01";
					A_inv 	<= '0';
					B_inv 	<= '0';
					C_in 		<= '0';
				elsif (current_state = "100") then -- signals for mux to write from RZ to RY
					Y_select	<="00";
				elsif (current_state = "101") then -- signals to write to destination register
					RF_write <= '1';
					C_select <= "00";
				end if;
			end if;	
			
			--orhi 	! --??? how do u make it read the top 8 bits?
			if(OP_code="101") then
				if (current_state = "010") then
				elsif (current_state = "011") then -- ALU signals
					extend	<= "010"; 
					B_select	<= '1'; 
					ALU_op	<= "01";  -- or
					A_inv 	<= '0';
					B_inv 	<= '0';
					C_in 		<= '0';
				elsif (current_state = "100") then -- signals for mux to write from RZ to RY
					Y_select	<="00";
				elsif (current_state = "101") then -- signals to write to destination register
					RF_write <= '1';
					C_select <= "00";
				end if;
			end if;

		
--			--bne
--			--bgeu
--			--bltu
--			--bgtu
--			--bleu
--			--blt
--			--bgt
--			--ble
--			
			--call !!
			if(OP_code="111") then
				if (current_state = "010") then
				elsif (current_state = "011") then 
					extend	<= "100"; 
					PC_select <= "10";
					PC_enable <= '1';
				elsif (current_state = "100") then 
					Y_select <= "10";
				elsif (current_state = "101") then
					RF_write <= '1';
					C_select <= "10";
				end if;
			end if;
				
--			--ldw !!
			if(OP_code="001") then
				if (current_state = "010") then
				elsif (current_state = "011") then 
					extend	<= "000"; 
					B_select	<= '1'; 
					ALU_op	<= "11"; 
					A_inv 	<= '0';
					B_inv 	<= '0';
					C_in 		<= '0';
				elsif (current_state = "100") then -- reading from memory
						MA_select	<= '0';
						MEM_read		<= '1';
						MEM_write	<= '0';
						WMFC			<= '1';
						Y_select		<= "01";
				elsif (current_state = "101") then 
					RF_write <= '1';
					C_select <= "00";
				end if;
			end if;
		
--			
			--stw !!
			if(OP_code="010") then
				if (current_state = "010") then
				elsif (current_state = "011") then 
					extend	<= "000"; 
					B_select	<= '1'; 
					ALU_op	<= "11";  
					A_inv 	<= '0';
					B_inv 	<= '0';
					C_in 		<= '0';
				elsif (current_state = "100") then --writing to memory
						MA_select	<= '0';
						MEM_read		<= '0';
						MEM_write	<= '1';
						WMFC			<= '1';
				elsif (current_state = "101") then
				end if;
			end if;
			

		-- B type
			--br !!
			if((OP_code="110") and (OPX="0000")) then
				if (current_state = "010") then
				elsif (current_state = "011") then -- ALU signals
					extend		<= "011"; 
					INC_select	<= '1';
					PC_select	<= "01";
					PC_enable	<= '1';
				elsif (current_state = "100") then 
				elsif (current_state = "101") then
				end if;
			end if;	

			--bge !!
			if((OP_code="110") and (OPX="0111")) then
				if (current_state = "010") then
				elsif (current_state = "011") then -- ALU signals
					if(N=V) then
						extend		<= "011"; 
						INC_select	<= '1';
						PC_select 	<= "01";
						PC_enable 	<= '1';
					end if;
				elsif (current_state = "100") then 
				elsif (current_state = "101") then
				end if;
			end if;
			
--			--beq	
			if((OP_code="110") and (OPX="0001")) then
				if (current_state = "010") then
				elsif (current_state = "011") then -- ALU signals
					if(Z='1') then
						extend		<= "011"; 
						INC_select	<= '1';
						PC_select 	<= "01";
						PC_enable 	<= '1';
					end if;
				elsif (current_state = "100") then 
				elsif (current_state = "101") then
				end if;
			end if;
		
	
			
	
	end process;
	
end implementation;
	
