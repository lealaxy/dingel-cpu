LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY MUX3 IS
PORT(
	SW_B,RAM_B:IN STD_LOGIC;
	INBUS,RAMOUT,FEN2OUT:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DBUS:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END MUX3;

ARCHITECTURE A OF MUX3 IS
BEGIN
    PROCESS
     BEGIN 
       IF(SW_B='0') THEN     			
            DBUS<=INBUS;
	   ELSIF(SW_B='1' AND RAM_B='0')THEN 
			DBUS<=RAMOUT;			
	   ELSE
			DBUS<=FEN2OUT;
		END IF;
    END PROCESS;
END A;


