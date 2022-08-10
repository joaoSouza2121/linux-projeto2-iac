#!/bin/bash

#########################################################
#							#
# Script de Provisionamento de um servidor web		#
#							#
#							#
# Autor: João Souza					#
#							#
#########################################################

echo "Atualizando o Servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando softwares no servidor"
apt-get install apache2 -y
apt-get install unzip -y

echo "Acessando o diretório tm."
cd /tmp

echo "Baixando o site do repositório no github"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando o arquivo baixado e acessando a pasta do arquivo..."
unzip main.zip
cd linux-site-dio-main

echo "Enviando todos os arquivos para a pasta padrão do apache"
cp -R * /var/www/html/



