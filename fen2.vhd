LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY FEN2 IS
PORT(
	LED_B:IN STD_LOGIC;
	DBUS:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	FENOUT,OUTBUS:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END FEN2;

ARCHITECTURE A OF FEN2 IS
BEGIN
    PROCESS
     BEGIN 
       IF(LED_B='0') THEN     			
            OUTBUS<=DBUS;
	   ELSE 
	        FENOUT<=DBUS;			
	   END IF;
    END PROCESS;
END A;


