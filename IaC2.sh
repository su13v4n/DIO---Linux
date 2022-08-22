#!/bin/bash

echo 'Atualizando aplicações...'
apt-get update
apt-get upgrade -y
echo 'Instalando aplicações...'
apt-get  install apache2 -y
apt-get install unzip -y

echo 'Baixando aplicações para o diretório...'
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo 'Copiando os arquivos...'
cd linux-site-dio-main
cp -R * /var/www/html

