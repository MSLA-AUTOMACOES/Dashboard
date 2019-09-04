#!/bin/bash
#Atualiza arquivos via FTP e depois atualiza as tabelas do banco de dados
#Atualizacao feita a cada 3 minutos
#Versão 1.0
#01/11/2018
###########

mysql -uadmin -pxilupiteco -D db_sessoes -e "

TRUNCATE TABLE AME;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3017.XML'
	INTO TABLE AME 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE AME 
	SET Hora = DataHora;
	SET Multiplex = 'AMERICAS';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"

TRUNCATE TABLE ANA;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3447.XML'
	INTO TABLE ANA 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE ANA 
	SET Hora = DataHora;
	SET Multiplex = 'ANANINDEUA';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"

TRUNCATE TABLE ARA;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_2013.XML'
	INTO TABLE ARA 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE ARA 
	SET Hora = DataHora;
	SET Multiplex = 'ARAPIRACA';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"

TRUNCATE TABLE BGU;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3449.XML'
	INTO TABLE BGU 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE BGU 
	SET Hora = DataHora;
	SET Multiplex = 'BANGU';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"

TRUNCATE TABLE CRT;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3455.XML'
	INTO TABLE CRT 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE CRT 
	SET Hora = DataHora;
	SET Multiplex = 'SHOP_CURITIBA';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"

TRUNCATE TABLE CWB;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3453.XML'
	INTO TABLE CWB 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE CWB 
	SET Hora = DataHora;
	SET Multiplex = 'SHOP_CIDADE';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"

TRUNCATE TABLE FLN;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3457.XML'
	INTO TABLE FLN
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE FLN 
	SET Hora = DataHora;
	SET Multiplex = 'FLORIANOPOLIS';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"

TRUNCATE TABLE HRT;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_7.XML'
	INTO TABLE HRT 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE HRT 
	SET Hora = DataHora;
	SET Multiplex = 'HORTOLANDIA';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"
    
TRUNCATE TABLE IDG;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3450.XML'
	INTO TABLE IDG 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE IDG 
	SET Hora = DataHora;
	SET Multiplex = 'ILHA';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"


TRUNCATE TABLE IMP;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3015.XML'
	INTO TABLE IMP 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE IMP 
	SET Hora = DataHora;
	SET Multiplex = 'IMPERATRIZ';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"
	
TRUNCATE TABLE ITA;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3019.XML'
	INTO TABLE ITA 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE ITA 
	SET Hora = DataHora;
	SET Multiplex = 'ITABORAI';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"

TRUNCATE TABLE LDA;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_4.XML'
	INTO TABLE LDA
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE LDA 
	SET Hora = DataHora;
	SET Multiplex = 'LONDRINA';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"
	
TRUNCATE TABLE LEO;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3458.XML'
	INTO TABLE LEO 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE LEO 
	SET Hora = DataHora;
	SET Multiplex = 'SAO_LEOPOLDO';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"
	
TRUNCATE TABLE MCZ;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_2.XML'
	INTO TABLE MCZ 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE MCZ 
	SET Hora = DataHora;
	SET Multiplex = 'MACEIO';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"
   
TRUNCATE TABLE MTW;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_6.XML'
	INTO TABLE MTW 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE MTW
	SET Hora = DataHora;
	SET Multiplex = 'Morumbi';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));" 
	
TRUNCATE TABLE PGD;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3456.XML'
	INTO TABLE PGD 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE PGD 
	SET Hora = DataHora;
	SET Multiplex = 'LITORAL';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE)); "
	
TRUNCATE TABLE PLT;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3016.XML'
	INTO TABLE PLT 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE PLT 
	SET Hora = DataHora;
	SET Multiplex = 'PAULISTA';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"
	
TRUNCATE TABLE REC;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_3448.XML'
	INTO TABLE REC 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE REC 
	SET Hora = DataHora;
	SET Multiplex = 'RECREIO';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"
	
TRUNCATE TABLE RGD;
LOAD XML INFILE '/var/Script/Sessao/ProgramacaoGrade_8.XML'
	INTO TABLE RGD 
	CHARACTER SET utf8
	ROWS IDENTIFIED BY '<Sessao>';
UPDATE RGD
	SET Hora = DataHora;
	SET Multiplex = 'RIO_GRANDE';
	SET Importacao = NOW();
	SET Tolerancia=(001500);
	SET Maximo = (SELECT ADDTIME ((DataHora), (Tolerancia)));
	SET Minimo = (SELECT DATE_SUB((DataHora), INTERVAL 15 MINUTE));"
	

    