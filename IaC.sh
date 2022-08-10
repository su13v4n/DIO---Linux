#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

echo "Group ADM..."
useradd carlos -c "Carlos Alberto" -m -s/bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd ana -c "Ana Cristina spoll" -m -s/bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd Andressa -c "Andressa Sant'anna" -m -s/bin/bash -p $(openssl passwd senha123) -G GRP_ADM

echo "Group VEN..."
useradd elvis -c "Elvis Eduardo" -m -s/bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd francisco -c "Francisco Xavier" -m -s/bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd santos -c "Santos Assis" -m -s/bin/bash -p $(openssl passwd senha123) -G GRP_VEN

echo "Group SEC..."
useradd carolina -c "Carolinha Oliveira" -m -s/bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd zelia -c "Zelia Alcantara" -m -s/bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd joaquim -c "Joaquim Ez" -m -s/bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "Especificando as permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado!"
