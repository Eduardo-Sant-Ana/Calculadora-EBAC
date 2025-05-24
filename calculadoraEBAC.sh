#!/bin/bash

echo "Bem vindo a calculadora!"

echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo -e "\nEscolha a operação:"
echo "1- Adição"
echo "2- Subtração"
echo "3- Multiplicação"
echo "4- Divisão"
echo "5- Sair"

read -p "Digite o número da operação desejada: " opcao

case $opcao in
    1) echo "Resultado: $num1 + $num2 = $(echo "$num1 + $num2" | bc)" ;;
    2) echo "Resultado: $num1 - $num2 = $(echo "$num1 - $num2" | bc)" ;;
    3) echo "Resultado: $num1 * $num2 = $(echo "$num1 * $num2" | bc)" ;;
    4) 
        if [ "$num2" -ne 0 ]; then
            echo "Resultado: $num1 / $num2 = $(echo "scale=2; $num1 / $num2" | bc)"
        else
            echo "Divisão por zero não é permitida!"
        fi
        ;;
    5) echo "Saindo da calculadora. Até mais!" ; exit 0 ;;
    *) echo "Opção inválida! Tente novamente." ;;
esac
