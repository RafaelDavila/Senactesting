#!/bin/bash
# Registro: programa que registra o aluno
# Anderson - Fev/2022
 
# Parte 1 - registro do nome do aluno
# cria um nome com ate 8 sobrenomes
NOME="$1 $2 $3 $4 $5 $6 $7 $8 $9"
# cria um nome separado por sobrescritos 
if ! [ "$1" = "" ]; then
	NOME2="$1"
fi;
if ! [ "$2" = "" ]; then
	NOME2="$1_$2"	
fi;
if ! [ "$3" = "" ]; then
	NOME2="$1_$2_$3"
fi;	
if ! [ "$4" = "" ]; then
	NOME2="$1_$2_$3_$4"
fi;
if ! [ "$5" = "" ]; then
	NOME2="$1_$2_$3_$4_$5"	
fi;
if ! [ "$6" = "" ]; then
	NOME2="$1_$2_$3_$3_$4_$5_$6"
fi;	
if ! [ "$7" = "" ]; then
	NOME2="$1_$2_$3_$3_$4_$5_$6_$7"
fi;	
if ! [ "$8" = "" ]; then
	NOME2="$1_$2_$3_$3_$4_$5_$6_$7_$8"
fi;
if ! [ "$9" = "" ]; then
	NOME2="$1_$2_$3_$3_$4_$5_$6_$7_$8_$9"
fi;
# o nome do arquivo com os resultados do aula pratica correpsonde a variavel $NOME2
ARQUIVO="PI_$NOME2"
# repassa o conteudo de $NOME (nome do aluno) no $ARQUIVO
echo $NOME > $ARQUIVO
# gera hash do conteúdo de $ARQUIVO, corta o inicio e joga os dados no proprio $ARQUIVO
openssl dgst -sha512 $ARQUIVO > teste.txt
sed 's/SHA512('$ARQUIVO')= //' teste.txt >> $ARQUIVO
echo ============================== >> $ARQUIVO

echo Parte 2 - arquivo /pi/xhydra.txt >> $ARQUIVO
cat /pi/xhydra.txt >> $ARQUIVO
echo ============================== >> $ARQUIVO

echo Parte 3 - arquivo /pi/medusa.txt >> $ARQUIVO
cat /pi/medusa.txt >> $ARQUIVO
echo ============================== >> $ARQUIVO

echo Parte 4 - arquivo /pi/secure.reserva >> $ARQUIVO
cat /pi/secure.reserva >> $ARQUIVO
#cp $ARQUIVO /pi -f
