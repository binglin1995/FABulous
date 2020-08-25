library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity  LUT4AB  is 
	Port (
	--  NORTH
		 N1BEG 	: out 	STD_LOGIC_VECTOR( 3 downto 0 );	 -- wires:4 X_offset:0 Y_offset:1  source_name:N1BEG destination_name:N1END  
		 N2BEG 	: out 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:0 Y_offset:1  source_name:N2BEG destination_name:N2MID  
		 N2BEGb 	: out 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:0 Y_offset:1  source_name:N2BEGb destination_name:N2END  
		 N4BEG 	: out 	STD_LOGIC_VECTOR( 15 downto 0 );	 -- wires:4 X_offset:0 Y_offset:4  source_name:N4BEG destination_name:N4END  
		 Co 	: out 	STD_LOGIC_VECTOR( 0 downto 0 );	 -- wires:1 X_offset:0 Y_offset:1  source_name:Co destination_name:NULL  
		 N1END 	: in 	STD_LOGIC_VECTOR( 3 downto 0 );	 -- wires:4 X_offset:0 Y_offset:1  source_name:N1BEG destination_name:N1END  
		 N2MID 	: in 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:0 Y_offset:1  source_name:N2BEG destination_name:N2MID  
		 N2END 	: in 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:0 Y_offset:1  source_name:N2BEGb destination_name:N2END  
		 N4END 	: in 	STD_LOGIC_VECTOR( 15 downto 0 );	 -- wires:4 X_offset:0 Y_offset:4  source_name:N4BEG destination_name:N4END  
	--  EAST
		 E1BEG 	: out 	STD_LOGIC_VECTOR( 3 downto 0 );	 -- wires:4 X_offset:1 Y_offset:0  source_name:E1BEG destination_name:E1END  
		 E2BEG 	: out 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:1 Y_offset:0  source_name:E2BEG destination_name:E2MID  
		 E2BEGb 	: out 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:1 Y_offset:0  source_name:E2BEGb destination_name:E2END  
		 E6BEG 	: out 	STD_LOGIC_VECTOR( 11 downto 0 );	 -- wires:2 X_offset:6 Y_offset:0  source_name:E6BEG destination_name:E6END  
		 E1END 	: in 	STD_LOGIC_VECTOR( 3 downto 0 );	 -- wires:4 X_offset:1 Y_offset:0  source_name:E1BEG destination_name:E1END  
		 E2MID 	: in 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:1 Y_offset:0  source_name:E2BEG destination_name:E2MID  
		 E2END 	: in 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:1 Y_offset:0  source_name:E2BEGb destination_name:E2END  
		 E6END 	: in 	STD_LOGIC_VECTOR( 11 downto 0 );	 -- wires:2 X_offset:6 Y_offset:0  source_name:E6BEG destination_name:E6END  
	--  SOUTH
		 S1BEG 	: out 	STD_LOGIC_VECTOR( 3 downto 0 );	 -- wires:4 X_offset:0 Y_offset:-1  source_name:S1BEG destination_name:S1END  
		 S2BEG 	: out 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:0 Y_offset:-1  source_name:S2BEG destination_name:S2MID  
		 S2BEGb 	: out 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:0 Y_offset:-1  source_name:S2BEGb destination_name:S2END  
		 S4BEG 	: out 	STD_LOGIC_VECTOR( 15 downto 0 );	 -- wires:4 X_offset:0 Y_offset:-4  source_name:S4BEG destination_name:S4END  
		 S1END 	: in 	STD_LOGIC_VECTOR( 3 downto 0 );	 -- wires:4 X_offset:0 Y_offset:-1  source_name:S1BEG destination_name:S1END  
		 S2MID 	: in 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:0 Y_offset:-1  source_name:S2BEG destination_name:S2MID  
		 S2END 	: in 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:0 Y_offset:-1  source_name:S2BEGb destination_name:S2END  
		 S4END 	: in 	STD_LOGIC_VECTOR( 15 downto 0 );	 -- wires:4 X_offset:0 Y_offset:-4  source_name:S4BEG destination_name:S4END  
		 Ci 	: in 	STD_LOGIC_VECTOR( 0 downto 0 );	 -- wires:1 X_offset:0 Y_offset:-1  source_name:NULL destination_name:Ci  
	--  WEST
		 W1BEG 	: out 	STD_LOGIC_VECTOR( 3 downto 0 );	 -- wires:4 X_offset:-1 Y_offset:0  source_name:W1BEG destination_name:W1END  
		 W2BEG 	: out 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:-1 Y_offset:0  source_name:W2BEG destination_name:W2MID  
		 W2BEGb 	: out 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:-1 Y_offset:0  source_name:W2BEGb destination_name:W2END  
		 W6BEG 	: out 	STD_LOGIC_VECTOR( 11 downto 0 );	 -- wires:2 X_offset:-6 Y_offset:0  source_name:W6BEG destination_name:W6END  
		 W1END 	: in 	STD_LOGIC_VECTOR( 3 downto 0 );	 -- wires:4 X_offset:-1 Y_offset:0  source_name:W1BEG destination_name:W1END  
		 W2MID 	: in 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:-1 Y_offset:0  source_name:W2BEG destination_name:W2MID  
		 W2END 	: in 	STD_LOGIC_VECTOR( 7 downto 0 );	 -- wires:8 X_offset:-1 Y_offset:0  source_name:W2BEGb destination_name:W2END  
		 W6END 	: in 	STD_LOGIC_VECTOR( 11 downto 0 );	 -- wires:2 X_offset:-6 Y_offset:0  source_name:W6BEG destination_name:W6END  
	-- global
		 MODE	: in 	 STD_LOGIC;	 -- global signal 1: configuration, 0: operation
		 CONFin	: in 	 STD_LOGIC;
		 CONFout	: out 	 STD_LOGIC;
		 CLK	: in 	 STD_LOGIC
	);
end entity LUT4AB ;

architecture Behavioral of  LUT4AB  is 

component LUT4c is
    -- Generic (LUT_SIZE : integer := 4);	
    Port (      -- IMPORTANT: this has to be in a dedicated line
	I0	: in	STD_LOGIC; -- LUT inputs
	I1	: in	STD_LOGIC;
	I2	: in	STD_LOGIC;
	I3	: in	STD_LOGIC;
	O	: out	STD_LOGIC; -- LUT output (combinatorial or FF)
	Ci	: in	STD_LOGIC; -- carry chain input
	Co	: out	STD_LOGIC; -- carry chain output
	-- GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
	MODE	: in 	 STD_LOGIC;	 -- 1 configuration, 0 action
	CONFin	: in 	 STD_LOGIC;
	CONFout	: out 	 STD_LOGIC;
	CLK	: in 	 STD_LOGIC
	);
end component LUT4c;

component MUX8LUT is
    -- Generic (LUT_SIZE : integer := 4);	
    Port (      -- IMPORTANT: this has to be in a dedicated line
	A	: in	STD_LOGIC; -- MUX inputs
	B	: in	STD_LOGIC;
	C	: in	STD_LOGIC;
	D	: in	STD_LOGIC;
	E	: in	STD_LOGIC; 
	F	: in	STD_LOGIC;
	G	: in	STD_LOGIC;
	H	: in	STD_LOGIC;
	S0	: in	STD_LOGIC;
	S1	: in	STD_LOGIC;
	S2	: in	STD_LOGIC;
	S3	: in	STD_LOGIC;
	M_AB: out	STD_LOGIC;
	M_AD: out	STD_LOGIC;
	M_AH: out	STD_LOGIC;
	M_EF: out	STD_LOGIC;
	-- GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
	MODE	: in 	 STD_LOGIC;	 -- 1 configuration, 0 action
	CONFin	: in 	 STD_LOGIC;
	CONFout	: out 	 STD_LOGIC;
	CLK	: in 	 STD_LOGIC
	);
end component MUX8LUT;


component  LUT4AB_switch_matrix  is 
	Port (
		 -- switch matrix inputs
		  N1END0 	: in 	 STD_LOGIC;
		  N1END1 	: in 	 STD_LOGIC;
		  N1END2 	: in 	 STD_LOGIC;
		  N1END3 	: in 	 STD_LOGIC;
		  N2MID0 	: in 	 STD_LOGIC;
		  N2MID1 	: in 	 STD_LOGIC;
		  N2MID2 	: in 	 STD_LOGIC;
		  N2MID3 	: in 	 STD_LOGIC;
		  N2MID4 	: in 	 STD_LOGIC;
		  N2MID5 	: in 	 STD_LOGIC;
		  N2MID6 	: in 	 STD_LOGIC;
		  N2MID7 	: in 	 STD_LOGIC;
		  N2END0 	: in 	 STD_LOGIC;
		  N2END1 	: in 	 STD_LOGIC;
		  N2END2 	: in 	 STD_LOGIC;
		  N2END3 	: in 	 STD_LOGIC;
		  N2END4 	: in 	 STD_LOGIC;
		  N2END5 	: in 	 STD_LOGIC;
		  N2END6 	: in 	 STD_LOGIC;
		  N2END7 	: in 	 STD_LOGIC;
		  N4END0 	: in 	 STD_LOGIC;
		  N4END1 	: in 	 STD_LOGIC;
		  N4END2 	: in 	 STD_LOGIC;
		  N4END3 	: in 	 STD_LOGIC;
		  E1END0 	: in 	 STD_LOGIC;
		  E1END1 	: in 	 STD_LOGIC;
		  E1END2 	: in 	 STD_LOGIC;
		  E1END3 	: in 	 STD_LOGIC;
		  E2MID0 	: in 	 STD_LOGIC;
		  E2MID1 	: in 	 STD_LOGIC;
		  E2MID2 	: in 	 STD_LOGIC;
		  E2MID3 	: in 	 STD_LOGIC;
		  E2MID4 	: in 	 STD_LOGIC;
		  E2MID5 	: in 	 STD_LOGIC;
		  E2MID6 	: in 	 STD_LOGIC;
		  E2MID7 	: in 	 STD_LOGIC;
		  E2END0 	: in 	 STD_LOGIC;
		  E2END1 	: in 	 STD_LOGIC;
		  E2END2 	: in 	 STD_LOGIC;
		  E2END3 	: in 	 STD_LOGIC;
		  E2END4 	: in 	 STD_LOGIC;
		  E2END5 	: in 	 STD_LOGIC;
		  E2END6 	: in 	 STD_LOGIC;
		  E2END7 	: in 	 STD_LOGIC;
		  E6END0 	: in 	 STD_LOGIC;
		  E6END1 	: in 	 STD_LOGIC;
		  S1END0 	: in 	 STD_LOGIC;
		  S1END1 	: in 	 STD_LOGIC;
		  S1END2 	: in 	 STD_LOGIC;
		  S1END3 	: in 	 STD_LOGIC;
		  S2MID0 	: in 	 STD_LOGIC;
		  S2MID1 	: in 	 STD_LOGIC;
		  S2MID2 	: in 	 STD_LOGIC;
		  S2MID3 	: in 	 STD_LOGIC;
		  S2MID4 	: in 	 STD_LOGIC;
		  S2MID5 	: in 	 STD_LOGIC;
		  S2MID6 	: in 	 STD_LOGIC;
		  S2MID7 	: in 	 STD_LOGIC;
		  S2END0 	: in 	 STD_LOGIC;
		  S2END1 	: in 	 STD_LOGIC;
		  S2END2 	: in 	 STD_LOGIC;
		  S2END3 	: in 	 STD_LOGIC;
		  S2END4 	: in 	 STD_LOGIC;
		  S2END5 	: in 	 STD_LOGIC;
		  S2END6 	: in 	 STD_LOGIC;
		  S2END7 	: in 	 STD_LOGIC;
		  S4END0 	: in 	 STD_LOGIC;
		  S4END1 	: in 	 STD_LOGIC;
		  S4END2 	: in 	 STD_LOGIC;
		  S4END3 	: in 	 STD_LOGIC;
		  Ci0 	: in 	 STD_LOGIC;
		  W1END0 	: in 	 STD_LOGIC;
		  W1END1 	: in 	 STD_LOGIC;
		  W1END2 	: in 	 STD_LOGIC;
		  W1END3 	: in 	 STD_LOGIC;
		  W2MID0 	: in 	 STD_LOGIC;
		  W2MID1 	: in 	 STD_LOGIC;
		  W2MID2 	: in 	 STD_LOGIC;
		  W2MID3 	: in 	 STD_LOGIC;
		  W2MID4 	: in 	 STD_LOGIC;
		  W2MID5 	: in 	 STD_LOGIC;
		  W2MID6 	: in 	 STD_LOGIC;
		  W2MID7 	: in 	 STD_LOGIC;
		  W2END0 	: in 	 STD_LOGIC;
		  W2END1 	: in 	 STD_LOGIC;
		  W2END2 	: in 	 STD_LOGIC;
		  W2END3 	: in 	 STD_LOGIC;
		  W2END4 	: in 	 STD_LOGIC;
		  W2END5 	: in 	 STD_LOGIC;
		  W2END6 	: in 	 STD_LOGIC;
		  W2END7 	: in 	 STD_LOGIC;
		  W6END0 	: in 	 STD_LOGIC;
		  W6END1 	: in 	 STD_LOGIC;
		  LA_O 	: in 	 STD_LOGIC;
		  LA_Co 	: in 	 STD_LOGIC;
		  LB_O 	: in 	 STD_LOGIC;
		  LB_Co 	: in 	 STD_LOGIC;
		  LC_O 	: in 	 STD_LOGIC;
		  LC_Co 	: in 	 STD_LOGIC;
		  LD_O 	: in 	 STD_LOGIC;
		  LD_Co 	: in 	 STD_LOGIC;
		  LE_O 	: in 	 STD_LOGIC;
		  LE_Co 	: in 	 STD_LOGIC;
		  LF_O 	: in 	 STD_LOGIC;
		  LF_Co 	: in 	 STD_LOGIC;
		  LG_O 	: in 	 STD_LOGIC;
		  LG_Co 	: in 	 STD_LOGIC;
		  LH_O 	: in 	 STD_LOGIC;
		  LH_Co 	: in 	 STD_LOGIC;
		  M_AB 	: in 	 STD_LOGIC;
		  M_AD 	: in 	 STD_LOGIC;
		  M_AH 	: in 	 STD_LOGIC;
		  M_EF 	: in 	 STD_LOGIC;
		  N1BEG0 	: out 	 STD_LOGIC;
		  N1BEG1 	: out 	 STD_LOGIC;
		  N1BEG2 	: out 	 STD_LOGIC;
		  N1BEG3 	: out 	 STD_LOGIC;
		  N2BEG0 	: out 	 STD_LOGIC;
		  N2BEG1 	: out 	 STD_LOGIC;
		  N2BEG2 	: out 	 STD_LOGIC;
		  N2BEG3 	: out 	 STD_LOGIC;
		  N2BEG4 	: out 	 STD_LOGIC;
		  N2BEG5 	: out 	 STD_LOGIC;
		  N2BEG6 	: out 	 STD_LOGIC;
		  N2BEG7 	: out 	 STD_LOGIC;
		  N2BEGb0 	: out 	 STD_LOGIC;
		  N2BEGb1 	: out 	 STD_LOGIC;
		  N2BEGb2 	: out 	 STD_LOGIC;
		  N2BEGb3 	: out 	 STD_LOGIC;
		  N2BEGb4 	: out 	 STD_LOGIC;
		  N2BEGb5 	: out 	 STD_LOGIC;
		  N2BEGb6 	: out 	 STD_LOGIC;
		  N2BEGb7 	: out 	 STD_LOGIC;
		  N4BEG0 	: out 	 STD_LOGIC;
		  N4BEG1 	: out 	 STD_LOGIC;
		  N4BEG2 	: out 	 STD_LOGIC;
		  N4BEG3 	: out 	 STD_LOGIC;
		  Co0 	: out 	 STD_LOGIC;
		  E1BEG0 	: out 	 STD_LOGIC;
		  E1BEG1 	: out 	 STD_LOGIC;
		  E1BEG2 	: out 	 STD_LOGIC;
		  E1BEG3 	: out 	 STD_LOGIC;
		  E2BEG0 	: out 	 STD_LOGIC;
		  E2BEG1 	: out 	 STD_LOGIC;
		  E2BEG2 	: out 	 STD_LOGIC;
		  E2BEG3 	: out 	 STD_LOGIC;
		  E2BEG4 	: out 	 STD_LOGIC;
		  E2BEG5 	: out 	 STD_LOGIC;
		  E2BEG6 	: out 	 STD_LOGIC;
		  E2BEG7 	: out 	 STD_LOGIC;
		  E2BEGb0 	: out 	 STD_LOGIC;
		  E2BEGb1 	: out 	 STD_LOGIC;
		  E2BEGb2 	: out 	 STD_LOGIC;
		  E2BEGb3 	: out 	 STD_LOGIC;
		  E2BEGb4 	: out 	 STD_LOGIC;
		  E2BEGb5 	: out 	 STD_LOGIC;
		  E2BEGb6 	: out 	 STD_LOGIC;
		  E2BEGb7 	: out 	 STD_LOGIC;
		  E6BEG0 	: out 	 STD_LOGIC;
		  E6BEG1 	: out 	 STD_LOGIC;
		  S1BEG0 	: out 	 STD_LOGIC;
		  S1BEG1 	: out 	 STD_LOGIC;
		  S1BEG2 	: out 	 STD_LOGIC;
		  S1BEG3 	: out 	 STD_LOGIC;
		  S2BEG0 	: out 	 STD_LOGIC;
		  S2BEG1 	: out 	 STD_LOGIC;
		  S2BEG2 	: out 	 STD_LOGIC;
		  S2BEG3 	: out 	 STD_LOGIC;
		  S2BEG4 	: out 	 STD_LOGIC;
		  S2BEG5 	: out 	 STD_LOGIC;
		  S2BEG6 	: out 	 STD_LOGIC;
		  S2BEG7 	: out 	 STD_LOGIC;
		  S2BEGb0 	: out 	 STD_LOGIC;
		  S2BEGb1 	: out 	 STD_LOGIC;
		  S2BEGb2 	: out 	 STD_LOGIC;
		  S2BEGb3 	: out 	 STD_LOGIC;
		  S2BEGb4 	: out 	 STD_LOGIC;
		  S2BEGb5 	: out 	 STD_LOGIC;
		  S2BEGb6 	: out 	 STD_LOGIC;
		  S2BEGb7 	: out 	 STD_LOGIC;
		  S4BEG0 	: out 	 STD_LOGIC;
		  S4BEG1 	: out 	 STD_LOGIC;
		  S4BEG2 	: out 	 STD_LOGIC;
		  S4BEG3 	: out 	 STD_LOGIC;
		  W1BEG0 	: out 	 STD_LOGIC;
		  W1BEG1 	: out 	 STD_LOGIC;
		  W1BEG2 	: out 	 STD_LOGIC;
		  W1BEG3 	: out 	 STD_LOGIC;
		  W2BEG0 	: out 	 STD_LOGIC;
		  W2BEG1 	: out 	 STD_LOGIC;
		  W2BEG2 	: out 	 STD_LOGIC;
		  W2BEG3 	: out 	 STD_LOGIC;
		  W2BEG4 	: out 	 STD_LOGIC;
		  W2BEG5 	: out 	 STD_LOGIC;
		  W2BEG6 	: out 	 STD_LOGIC;
		  W2BEG7 	: out 	 STD_LOGIC;
		  W2BEGb0 	: out 	 STD_LOGIC;
		  W2BEGb1 	: out 	 STD_LOGIC;
		  W2BEGb2 	: out 	 STD_LOGIC;
		  W2BEGb3 	: out 	 STD_LOGIC;
		  W2BEGb4 	: out 	 STD_LOGIC;
		  W2BEGb5 	: out 	 STD_LOGIC;
		  W2BEGb6 	: out 	 STD_LOGIC;
		  W2BEGb7 	: out 	 STD_LOGIC;
		  W6BEG0 	: out 	 STD_LOGIC;
		  W6BEG1 	: out 	 STD_LOGIC;
		  LA_I0 	: out 	 STD_LOGIC;
		  LA_I1 	: out 	 STD_LOGIC;
		  LA_I2 	: out 	 STD_LOGIC;
		  LA_I3 	: out 	 STD_LOGIC;
		  LA_Ci 	: out 	 STD_LOGIC;
		  LB_I0 	: out 	 STD_LOGIC;
		  LB_I1 	: out 	 STD_LOGIC;
		  LB_I2 	: out 	 STD_LOGIC;
		  LB_I3 	: out 	 STD_LOGIC;
		  LB_Ci 	: out 	 STD_LOGIC;
		  LC_I0 	: out 	 STD_LOGIC;
		  LC_I1 	: out 	 STD_LOGIC;
		  LC_I2 	: out 	 STD_LOGIC;
		  LC_I3 	: out 	 STD_LOGIC;
		  LC_Ci 	: out 	 STD_LOGIC;
		  LD_I0 	: out 	 STD_LOGIC;
		  LD_I1 	: out 	 STD_LOGIC;
		  LD_I2 	: out 	 STD_LOGIC;
		  LD_I3 	: out 	 STD_LOGIC;
		  LD_Ci 	: out 	 STD_LOGIC;
		  LE_I0 	: out 	 STD_LOGIC;
		  LE_I1 	: out 	 STD_LOGIC;
		  LE_I2 	: out 	 STD_LOGIC;
		  LE_I3 	: out 	 STD_LOGIC;
		  LE_Ci 	: out 	 STD_LOGIC;
		  LF_I0 	: out 	 STD_LOGIC;
		  LF_I1 	: out 	 STD_LOGIC;
		  LF_I2 	: out 	 STD_LOGIC;
		  LF_I3 	: out 	 STD_LOGIC;
		  LF_Ci 	: out 	 STD_LOGIC;
		  LG_I0 	: out 	 STD_LOGIC;
		  LG_I1 	: out 	 STD_LOGIC;
		  LG_I2 	: out 	 STD_LOGIC;
		  LG_I3 	: out 	 STD_LOGIC;
		  LG_Ci 	: out 	 STD_LOGIC;
		  LH_I0 	: out 	 STD_LOGIC;
		  LH_I1 	: out 	 STD_LOGIC;
		  LH_I2 	: out 	 STD_LOGIC;
		  LH_I3 	: out 	 STD_LOGIC;
		  LH_Ci 	: out 	 STD_LOGIC;
		  A 	: out 	 STD_LOGIC;
		  B 	: out 	 STD_LOGIC;
		  C 	: out 	 STD_LOGIC;
		  D 	: out 	 STD_LOGIC;
		  E 	: out 	 STD_LOGIC;
		  F 	: out 	 STD_LOGIC;
		  G 	: out 	 STD_LOGIC;
		  H 	: out 	 STD_LOGIC;
		  S0 	: out 	 STD_LOGIC;
		  S1 	: out 	 STD_LOGIC;
		  S2 	: out 	 STD_LOGIC;
		  S3 	: out 	 STD_LOGIC;
	-- global
		 MODE	: in 	 STD_LOGIC;	 -- global signal 1: configuration, 0: operation
		 CONFin	: in 	 STD_LOGIC;
		 CONFout	: out 	 STD_LOGIC;
		 CLK	: in 	 STD_LOGIC
	);
end component LUT4AB_switch_matrix ;


-- signal declarations

-- BEL ports (e.g., slices)
signal	LA_I0	:STD_LOGIC;
signal	LA_I1	:STD_LOGIC;
signal	LA_I2	:STD_LOGIC;
signal	LA_I3	:STD_LOGIC;
signal	LA_Ci	:STD_LOGIC;
signal	LB_I0	:STD_LOGIC;
signal	LB_I1	:STD_LOGIC;
signal	LB_I2	:STD_LOGIC;
signal	LB_I3	:STD_LOGIC;
signal	LB_Ci	:STD_LOGIC;
signal	LC_I0	:STD_LOGIC;
signal	LC_I1	:STD_LOGIC;
signal	LC_I2	:STD_LOGIC;
signal	LC_I3	:STD_LOGIC;
signal	LC_Ci	:STD_LOGIC;
signal	LD_I0	:STD_LOGIC;
signal	LD_I1	:STD_LOGIC;
signal	LD_I2	:STD_LOGIC;
signal	LD_I3	:STD_LOGIC;
signal	LD_Ci	:STD_LOGIC;
signal	LE_I0	:STD_LOGIC;
signal	LE_I1	:STD_LOGIC;
signal	LE_I2	:STD_LOGIC;
signal	LE_I3	:STD_LOGIC;
signal	LE_Ci	:STD_LOGIC;
signal	LF_I0	:STD_LOGIC;
signal	LF_I1	:STD_LOGIC;
signal	LF_I2	:STD_LOGIC;
signal	LF_I3	:STD_LOGIC;
signal	LF_Ci	:STD_LOGIC;
signal	LG_I0	:STD_LOGIC;
signal	LG_I1	:STD_LOGIC;
signal	LG_I2	:STD_LOGIC;
signal	LG_I3	:STD_LOGIC;
signal	LG_Ci	:STD_LOGIC;
signal	LH_I0	:STD_LOGIC;
signal	LH_I1	:STD_LOGIC;
signal	LH_I2	:STD_LOGIC;
signal	LH_I3	:STD_LOGIC;
signal	LH_Ci	:STD_LOGIC;
signal	A	:STD_LOGIC;
signal	B	:STD_LOGIC;
signal	C	:STD_LOGIC;
signal	D	:STD_LOGIC;
signal	E	:STD_LOGIC;
signal	F	:STD_LOGIC;
signal	G	:STD_LOGIC;
signal	H	:STD_LOGIC;
signal	S0	:STD_LOGIC;
signal	S1	:STD_LOGIC;
signal	S2	:STD_LOGIC;
signal	S3	:STD_LOGIC;
signal	LA_O	:STD_LOGIC;
signal	LA_Co	:STD_LOGIC;
signal	LB_O	:STD_LOGIC;
signal	LB_Co	:STD_LOGIC;
signal	LC_O	:STD_LOGIC;
signal	LC_Co	:STD_LOGIC;
signal	LD_O	:STD_LOGIC;
signal	LD_Co	:STD_LOGIC;
signal	LE_O	:STD_LOGIC;
signal	LE_Co	:STD_LOGIC;
signal	LF_O	:STD_LOGIC;
signal	LF_Co	:STD_LOGIC;
signal	LG_O	:STD_LOGIC;
signal	LG_Co	:STD_LOGIC;
signal	LH_O	:STD_LOGIC;
signal	LH_Co	:STD_LOGIC;
signal	M_AB	:STD_LOGIC;
signal	M_AD	:STD_LOGIC;
signal	M_AH	:STD_LOGIC;
signal	M_EF	:STD_LOGIC;
-- jump wires
signal	 J2MID_ABa 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2MID_CDa 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2MID_EFa 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2MID_GHa 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2MID_ABb 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2MID_CDb 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2MID_EFb 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2MID_GHb 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2END_AB 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2END_CD 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2END_EF 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2END_GH 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J2N 	:	STD_LOGIC_VECTOR(8 downto 0);
signal	 J2E 	:	STD_LOGIC_VECTOR(8 downto 0);
signal	 J2S 	:	STD_LOGIC_VECTOR(8 downto 0);
signal	 J2W 	:	STD_LOGIC_VECTOR(8 downto 0);
signal	 J_l_AB 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J_l_CD 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J_l_EF 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J_l_GH 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J4END_AB 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J4END_CD 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J4END_EF 	:	STD_LOGIC_VECTOR(4 downto 0);
signal	 J4END_GH 	:	STD_LOGIC_VECTOR(4 downto 0);
-- internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
signal	conf_data	:	STD_LOGIC_VECTOR(10 downto 0);

begin

-- Cascading of routing for wires spanning more than one tile
N4BEG(N4BEG'high - 4 downto 0) <= N4END(N4END'high downto 4);
E6BEG(E6BEG'high - 2 downto 0) <= E6END(E6END'high downto 2);
S4BEG(S4BEG'high - 4 downto 0) <= S4END(S4END'high downto 4);
W6BEG(W6BEG'high - 2 downto 0) <= W6END(W6END'high downto 2);
-- top configuration data daisy chaining
conf_data(conf_data'low) <= CONFin; -- conf_data'low=0 and CONFin is from tile entity
CONFout <= conf_data(conf_data'high); -- CONFout is from tile entity

-- BEL component instantiations

Inst_LA_LUT4c : LUT4c
	Port Map(
		 I0  =>  LA_I0 ,
		 I1  =>  LA_I1 ,
		 I2  =>  LA_I2 ,
		 I3  =>  LA_I3 ,
		 Ci  =>  LA_Ci ,
		 O  =>  LA_O ,
		 Co  =>  LA_Co ,
	 -- GLOBAL all primitive pins for configuration (not further parsed)  
		 MODE	=> Mode,  
		 CONFin	=> conf_data(0),  
		 CONFout	=> conf_data(1),  
		 CLK => CLK );  

Inst_LB_LUT4c : LUT4c
	Port Map(
		 I0  =>  LB_I0 ,
		 I1  =>  LB_I1 ,
		 I2  =>  LB_I2 ,
		 I3  =>  LB_I3 ,
		 Ci  =>  LB_Ci ,
		 O  =>  LB_O ,
		 Co  =>  LB_Co ,
	 -- GLOBAL all primitive pins for configuration (not further parsed)  
		 MODE	=> Mode,  
		 CONFin	=> conf_data(1),  
		 CONFout	=> conf_data(2),  
		 CLK => CLK );  

Inst_LC_LUT4c : LUT4c
	Port Map(
		 I0  =>  LC_I0 ,
		 I1  =>  LC_I1 ,
		 I2  =>  LC_I2 ,
		 I3  =>  LC_I3 ,
		 Ci  =>  LC_Ci ,
		 O  =>  LC_O ,
		 Co  =>  LC_Co ,
	 -- GLOBAL all primitive pins for configuration (not further parsed)  
		 MODE	=> Mode,  
		 CONFin	=> conf_data(2),  
		 CONFout	=> conf_data(3),  
		 CLK => CLK );  

Inst_LD_LUT4c : LUT4c
	Port Map(
		 I0  =>  LD_I0 ,
		 I1  =>  LD_I1 ,
		 I2  =>  LD_I2 ,
		 I3  =>  LD_I3 ,
		 Ci  =>  LD_Ci ,
		 O  =>  LD_O ,
		 Co  =>  LD_Co ,
	 -- GLOBAL all primitive pins for configuration (not further parsed)  
		 MODE	=> Mode,  
		 CONFin	=> conf_data(3),  
		 CONFout	=> conf_data(4),  
		 CLK => CLK );  

Inst_LE_LUT4c : LUT4c
	Port Map(
		 I0  =>  LE_I0 ,
		 I1  =>  LE_I1 ,
		 I2  =>  LE_I2 ,
		 I3  =>  LE_I3 ,
		 Ci  =>  LE_Ci ,
		 O  =>  LE_O ,
		 Co  =>  LE_Co ,
	 -- GLOBAL all primitive pins for configuration (not further parsed)  
		 MODE	=> Mode,  
		 CONFin	=> conf_data(4),  
		 CONFout	=> conf_data(5),  
		 CLK => CLK );  

Inst_LF_LUT4c : LUT4c
	Port Map(
		 I0  =>  LF_I0 ,
		 I1  =>  LF_I1 ,
		 I2  =>  LF_I2 ,
		 I3  =>  LF_I3 ,
		 Ci  =>  LF_Ci ,
		 O  =>  LF_O ,
		 Co  =>  LF_Co ,
	 -- GLOBAL all primitive pins for configuration (not further parsed)  
		 MODE	=> Mode,  
		 CONFin	=> conf_data(5),  
		 CONFout	=> conf_data(6),  
		 CLK => CLK );  

Inst_LG_LUT4c : LUT4c
	Port Map(
		 I0  =>  LG_I0 ,
		 I1  =>  LG_I1 ,
		 I2  =>  LG_I2 ,
		 I3  =>  LG_I3 ,
		 Ci  =>  LG_Ci ,
		 O  =>  LG_O ,
		 Co  =>  LG_Co ,
	 -- GLOBAL all primitive pins for configuration (not further parsed)  
		 MODE	=> Mode,  
		 CONFin	=> conf_data(6),  
		 CONFout	=> conf_data(7),  
		 CLK => CLK );  

Inst_LH_LUT4c : LUT4c
	Port Map(
		 I0  =>  LH_I0 ,
		 I1  =>  LH_I1 ,
		 I2  =>  LH_I2 ,
		 I3  =>  LH_I3 ,
		 Ci  =>  LH_Ci ,
		 O  =>  LH_O ,
		 Co  =>  LH_Co ,
	 -- GLOBAL all primitive pins for configuration (not further parsed)  
		 MODE	=> Mode,  
		 CONFin	=> conf_data(7),  
		 CONFout	=> conf_data(8),  
		 CLK => CLK );  

Inst_MUX8LUT : MUX8LUT
	Port Map(
		 A  =>  A ,
		 B  =>  B ,
		 C  =>  C ,
		 D  =>  D ,
		 E  =>  E ,
		 F  =>  F ,
		 G  =>  G ,
		 H  =>  H ,
		 S0  =>  S0 ,
		 S1  =>  S1 ,
		 S2  =>  S2 ,
		 S3  =>  S3 ,
		 M_AB  =>  M_AB ,
		 M_AD  =>  M_AD ,
		 M_AH  =>  M_AH ,
		 M_EF  =>  M_EF ,
	 -- GLOBAL all primitive pins for configuration (not further parsed)  
		 MODE	=> Mode,  
		 CONFin	=> conf_data(8),  
		 CONFout	=> conf_data(9),  
		 CLK => CLK );  


-- switch matrix component instantiation

Inst_LUT4AB_switch_matrix : LUT4AB_switch_matrix
	Port Map(
		 N1END0  => N1END(0),
		 N1END1  => N1END(1),
		 N1END2  => N1END(2),
		 N1END3  => N1END(3),
		 N2MID0  => N2MID(0),
		 N2MID1  => N2MID(1),
		 N2MID2  => N2MID(2),
		 N2MID3  => N2MID(3),
		 N2MID4  => N2MID(4),
		 N2MID5  => N2MID(5),
		 N2MID6  => N2MID(6),
		 N2MID7  => N2MID(7),
		 N2END0  => N2END(0),
		 N2END1  => N2END(1),
		 N2END2  => N2END(2),
		 N2END3  => N2END(3),
		 N2END4  => N2END(4),
		 N2END5  => N2END(5),
		 N2END6  => N2END(6),
		 N2END7  => N2END(7),
		 N4END0  => N4END(0),
		 N4END1  => N4END(1),
		 N4END2  => N4END(2),
		 N4END3  => N4END(3),
		 E1END0  => E1END(0),
		 E1END1  => E1END(1),
		 E1END2  => E1END(2),
		 E1END3  => E1END(3),
		 E2MID0  => E2MID(0),
		 E2MID1  => E2MID(1),
		 E2MID2  => E2MID(2),
		 E2MID3  => E2MID(3),
		 E2MID4  => E2MID(4),
		 E2MID5  => E2MID(5),
		 E2MID6  => E2MID(6),
		 E2MID7  => E2MID(7),
		 E2END0  => E2END(0),
		 E2END1  => E2END(1),
		 E2END2  => E2END(2),
		 E2END3  => E2END(3),
		 E2END4  => E2END(4),
		 E2END5  => E2END(5),
		 E2END6  => E2END(6),
		 E2END7  => E2END(7),
		 E6END0  => E6END(0),
		 E6END1  => E6END(1),
		 S1END0  => S1END(0),
		 S1END1  => S1END(1),
		 S1END2  => S1END(2),
		 S1END3  => S1END(3),
		 S2MID0  => S2MID(0),
		 S2MID1  => S2MID(1),
		 S2MID2  => S2MID(2),
		 S2MID3  => S2MID(3),
		 S2MID4  => S2MID(4),
		 S2MID5  => S2MID(5),
		 S2MID6  => S2MID(6),
		 S2MID7  => S2MID(7),
		 S2END0  => S2END(0),
		 S2END1  => S2END(1),
		 S2END2  => S2END(2),
		 S2END3  => S2END(3),
		 S2END4  => S2END(4),
		 S2END5  => S2END(5),
		 S2END6  => S2END(6),
		 S2END7  => S2END(7),
		 S4END0  => S4END(0),
		 S4END1  => S4END(1),
		 S4END2  => S4END(2),
		 S4END3  => S4END(3),
		 Ci0  => Ci(0),
		 W1END0  => W1END(0),
		 W1END1  => W1END(1),
		 W1END2  => W1END(2),
		 W1END3  => W1END(3),
		 W2MID0  => W2MID(0),
		 W2MID1  => W2MID(1),
		 W2MID2  => W2MID(2),
		 W2MID3  => W2MID(3),
		 W2MID4  => W2MID(4),
		 W2MID5  => W2MID(5),
		 W2MID6  => W2MID(6),
		 W2MID7  => W2MID(7),
		 W2END0  => W2END(0),
		 W2END1  => W2END(1),
		 W2END2  => W2END(2),
		 W2END3  => W2END(3),
		 W2END4  => W2END(4),
		 W2END5  => W2END(5),
		 W2END6  => W2END(6),
		 W2END7  => W2END(7),
		 W6END0  => W6END(0),
		 W6END1  => W6END(1),
		 LA_O  => LA_O,
		 LA_Co  => LA_Co,
		 LB_O  => LB_O,
		 LB_Co  => LB_Co,
		 LC_O  => LC_O,
		 LC_Co  => LC_Co,
		 LD_O  => LD_O,
		 LD_Co  => LD_Co,
		 LE_O  => LE_O,
		 LE_Co  => LE_Co,
		 LF_O  => LF_O,
		 LF_Co  => LF_Co,
		 LG_O  => LG_O,
		 LG_Co  => LG_Co,
		 LH_O  => LH_O,
		 LH_Co  => LH_Co,
		 M_AB  => M_AB,
		 M_AD  => M_AD,
		 M_AH  => M_AH,
		 M_EF  => M_EF,
		 N1BEG0  => N1BEG(0),
		 N1BEG1  => N1BEG(1),
		 N1BEG2  => N1BEG(2),
		 N1BEG3  => N1BEG(3),
		 N2BEG0  => N2BEG(0),
		 N2BEG1  => N2BEG(1),
		 N2BEG2  => N2BEG(2),
		 N2BEG3  => N2BEG(3),
		 N2BEG4  => N2BEG(4),
		 N2BEG5  => N2BEG(5),
		 N2BEG6  => N2BEG(6),
		 N2BEG7  => N2BEG(7),
		 N2BEGb0  => N2BEGb(0),
		 N2BEGb1  => N2BEGb(1),
		 N2BEGb2  => N2BEGb(2),
		 N2BEGb3  => N2BEGb(3),
		 N2BEGb4  => N2BEGb(4),
		 N2BEGb5  => N2BEGb(5),
		 N2BEGb6  => N2BEGb(6),
		 N2BEGb7  => N2BEGb(7),
		 N4BEG0  => N4BEG(12),
		 N4BEG1  => N4BEG(13),
		 N4BEG2  => N4BEG(14),
		 N4BEG3  => N4BEG(15),
		 Co0  => Co(0),
		 E1BEG0  => E1BEG(0),
		 E1BEG1  => E1BEG(1),
		 E1BEG2  => E1BEG(2),
		 E1BEG3  => E1BEG(3),
		 E2BEG0  => E2BEG(0),
		 E2BEG1  => E2BEG(1),
		 E2BEG2  => E2BEG(2),
		 E2BEG3  => E2BEG(3),
		 E2BEG4  => E2BEG(4),
		 E2BEG5  => E2BEG(5),
		 E2BEG6  => E2BEG(6),
		 E2BEG7  => E2BEG(7),
		 E2BEGb0  => E2BEGb(0),
		 E2BEGb1  => E2BEGb(1),
		 E2BEGb2  => E2BEGb(2),
		 E2BEGb3  => E2BEGb(3),
		 E2BEGb4  => E2BEGb(4),
		 E2BEGb5  => E2BEGb(5),
		 E2BEGb6  => E2BEGb(6),
		 E2BEGb7  => E2BEGb(7),
		 E6BEG0  => E6BEG(10),
		 E6BEG1  => E6BEG(11),
		 S1BEG0  => S1BEG(0),
		 S1BEG1  => S1BEG(1),
		 S1BEG2  => S1BEG(2),
		 S1BEG3  => S1BEG(3),
		 S2BEG0  => S2BEG(0),
		 S2BEG1  => S2BEG(1),
		 S2BEG2  => S2BEG(2),
		 S2BEG3  => S2BEG(3),
		 S2BEG4  => S2BEG(4),
		 S2BEG5  => S2BEG(5),
		 S2BEG6  => S2BEG(6),
		 S2BEG7  => S2BEG(7),
		 S2BEGb0  => S2BEGb(0),
		 S2BEGb1  => S2BEGb(1),
		 S2BEGb2  => S2BEGb(2),
		 S2BEGb3  => S2BEGb(3),
		 S2BEGb4  => S2BEGb(4),
		 S2BEGb5  => S2BEGb(5),
		 S2BEGb6  => S2BEGb(6),
		 S2BEGb7  => S2BEGb(7),
		 S4BEG0  => S4BEG(12),
		 S4BEG1  => S4BEG(13),
		 S4BEG2  => S4BEG(14),
		 S4BEG3  => S4BEG(15),
		 W1BEG0  => W1BEG(0),
		 W1BEG1  => W1BEG(1),
		 W1BEG2  => W1BEG(2),
		 W1BEG3  => W1BEG(3),
		 W2BEG0  => W2BEG(0),
		 W2BEG1  => W2BEG(1),
		 W2BEG2  => W2BEG(2),
		 W2BEG3  => W2BEG(3),
		 W2BEG4  => W2BEG(4),
		 W2BEG5  => W2BEG(5),
		 W2BEG6  => W2BEG(6),
		 W2BEG7  => W2BEG(7),
		 W2BEGb0  => W2BEGb(0),
		 W2BEGb1  => W2BEGb(1),
		 W2BEGb2  => W2BEGb(2),
		 W2BEGb3  => W2BEGb(3),
		 W2BEGb4  => W2BEGb(4),
		 W2BEGb5  => W2BEGb(5),
		 W2BEGb6  => W2BEGb(6),
		 W2BEGb7  => W2BEGb(7),
		 W6BEG0  => W6BEG(10),
		 W6BEG1  => W6BEG(11),
		 LA_I0  => LA_I0,
		 LA_I1  => LA_I1,
		 LA_I2  => LA_I2,
		 LA_I3  => LA_I3,
		 LA_Ci  => LA_Ci,
		 LB_I0  => LB_I0,
		 LB_I1  => LB_I1,
		 LB_I2  => LB_I2,
		 LB_I3  => LB_I3,
		 LB_Ci  => LB_Ci,
		 LC_I0  => LC_I0,
		 LC_I1  => LC_I1,
		 LC_I2  => LC_I2,
		 LC_I3  => LC_I3,
		 LC_Ci  => LC_Ci,
		 LD_I0  => LD_I0,
		 LD_I1  => LD_I1,
		 LD_I2  => LD_I2,
		 LD_I3  => LD_I3,
		 LD_Ci  => LD_Ci,
		 LE_I0  => LE_I0,
		 LE_I1  => LE_I1,
		 LE_I2  => LE_I2,
		 LE_I3  => LE_I3,
		 LE_Ci  => LE_Ci,
		 LF_I0  => LF_I0,
		 LF_I1  => LF_I1,
		 LF_I2  => LF_I2,
		 LF_I3  => LF_I3,
		 LF_Ci  => LF_Ci,
		 LG_I0  => LG_I0,
		 LG_I1  => LG_I1,
		 LG_I2  => LG_I2,
		 LG_I3  => LG_I3,
		 LG_Ci  => LG_Ci,
		 LH_I0  => LH_I0,
		 LH_I1  => LH_I1,
		 LH_I2  => LH_I2,
		 LH_I3  => LH_I3,
		 LH_Ci  => LH_Ci,
		 A  => A,
		 B  => B,
		 C  => C,
		 D  => D,
		 E  => E,
		 F  => F,
		 G  => G,
		 H  => H,
		 S0  => S0,
		 S1  => S1,
		 S2  => S2,
		 S3  => S3,
	 -- GLOBAL all primitive pins for configuration (not further parsed)  
		 MODE	=> Mode,  
		 CONFin	=> conf_data(9),  
		 CONFout	=> conf_data(10),  
		 CLK => CLK   
		 );  

end Behavioral;

