LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY ROM IS 
PORT(
	DOUT:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ADDR:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	CS_I:IN STD_LOGIC
);
END ROM;
ARCHITECTURE A OF ROM IS

--  ע�Ƿ���    ָ���ʽ(OP)    Rs Rd     addr
   
--    MOV          000001       XX Rd     im
--    IN1          000010       XX Rd    XXXXXXXX
--    DEC          000011       XX Rd    XXXXXXXX
--    TEST         000100       XX Rd     addr
--    JB           000101       XX Rd     addr
--    JZ           000110       XX Rd     addr
--    JMP          000111       XX XX     addr
--    MUL          001000       Rs Rd    XXXXXXXX
--    ADD          001001       Rs Rd    XXXXXXXX
--    OUT          001010       Rs XX    XXXXXXXX
--    LAD          001011       Rs Rd    XXXXXXXX
--    STO          001101       Rs Rd    XXXXXXXX
--    INC          001111       XX Rd    XXXXXXXX
--    CMP          010000       Rs Rd    XXXXXXXX
BEGIN
	DOUT<="0001000100000010" WHEN ADDR="00000000" AND CS_I='0' ELSE--MOV R1,2H
          "0001001000000110" WHEN ADDR="00000001" AND CS_I='0' ELSE--MOV R2,6H
          "0001001100000111" WHEN ADDR="00000010" AND CS_I='0' ELSE--MOV R3,7H
          "0001000000000011" WHEN ADDR="00000011" AND CS_I='0' ELSE--MOV R0,3H

		  "0000000000000000";
END A;


