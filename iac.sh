#!/bin/bash

echo "Criando  usuários e diretórios..."

mkdir /adm
mkdir /ven 
mkdir /sec
mkdir /publico

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando  usuários do sistema..."

useradd carlos -m -s /bin/bash -c "Carlos S." -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -c " Maria S." -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -c " João S." -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -c "Debora S." -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -c "Sebastiana Motta" -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -c "Roberto S." -p $(openssl passwd  -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -c "Josefina Motta" -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -c "Amanda Silva" -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "Rogério Silva" -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando Permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Criação de usuários efetuada com SUCESSO!!!"
 
