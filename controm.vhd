LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY CONTROM IS
PORT(ADDR: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
     UA:OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
     O:OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
    );
END CONTROM;
ARCHITECTURE A OF CONTROM IS
SIGNAL DATAOUT: STD_LOGIC_VECTOR(25 DOWNTO 0);
BEGIN 
    PROCESS
    BEGIN
        CASE ADDR IS    
        --        ΢��ַ                         ΢ָ��
            WHEN "000000" => DATAOUT<="11010010001111110110000000";--ȡ��ַ
            WHEN "000001" => DATAOUT<="10001010001111111000000000";--MOV
            WHEN "000010" => DATAOUT<="10001010001011101100000000";--IN
            WHEN "000011" => DATAOUT<="10001110110111111100000000";--DEC
            WHEN "000100" => DATAOUT<="10000110011111111100000000";--TEST
            WHEN "000101" => DATAOUT<="10000010001111111101000000";--JB
            WHEN "000110" => DATAOUT<="10000010000111111101000000";--JZ
            WHEN "000111" => DATAOUT<="01000010001111111000000000";--JMP
            WHEN "001000" => DATAOUT<="10001111000111111100000000";--MUL
            WHEN "001001" => DATAOUT<="10001110000111111100000000";--ADD
            WHEN "001010" => DATAOUT<="10000000001101111100000000";--OUT
            WHEN "001011" => DATAOUT<="10100000001111111100001100";--LAD
            WHEN "001100" => DATAOUT<="10100000001111111100000000";--LAD2
            WHEN "001101" => DATAOUT<="10100011110111111100001110";--STO
            WHEN "001110" => DATAOUT<="10100011110111111111000000";--STO2
            WHEN "001111" => DATAOUT<="10001110100111111100000000";--INC
            WHEN "010000" => DATAOUT<="10000110011111111100000000";--CMP

            WHEN OTHERS   => DATAOUT<="10000110010011100000000000";
        END CASE;
        UA(5 DOWNTO 0)<=DATAOUT(5 DOWNTO 0);
        O(19 DOWNTO 0)<=DATAOUT(25 DOWNTO 6);
    END PROCESS;
END A;


