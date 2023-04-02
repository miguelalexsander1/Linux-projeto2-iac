#!/bin/bash

echo "Atualizando o cache de pacotes..."
apt-get update

echo "Atualizando todos os pacotes instalados..."
apt-get upgrade -y

echo "Instalando o servidor web Apache2..."
apt-get install apache2 -y

echo "Instalando a ferramenta de descompactação unzip..."
apt-get install unzip -y

echo "Mudando para o diretório /tmp..."
cd /tmp

echo "Fazendo download do projeto do GitHub..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo zip baixado..."
unzip main.zip

echo "Mudando para o diretório do projeto descompactado..."
cd linux-site-dio-main

echo "Copiando todos os arquivos e diretórios do projeto para o diretório padrão do servidor web..."
cp -R * /var/www/html/

echo "Script concluído com sucesso!"

