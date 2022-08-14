###################################################
#Criando usuários, grupos, diretorios e permissoes#
#chmod +x arquivo.sh                              #
#./arquivo.sh                                     #
###################################################
echo "Criando diretorios..."

mkdir publico, adm, ven, sec 

chmod publico 777
chmod adm 770
chmod ven 770
chmod sec 770

echo "Criando grupos..."

groupadd GRP-ADM, GRP_VEN, GRP_SEC

echo "Criando usuários..."

useradd carlos -m -c "carlos adm" -s /bin/bash -p $(openssl passwd -crypt senha123) passwd user1 -e -G GRP-ADM

useradd maria -m -c "maria adm" -s /bin/bash -p $(openssl passwd -crypt senha123) passwd user2 -e -G GRP-ADM

useradd joao -m -c "joao adm" -s /bin/bash -p $(openssl passwd -crypt senha123) passwd user3 -e -G GRP-ADM

useradd debora -m -c "debora vendas" -s /bin/bash -p $(openssl passwd -crypt senha123) passwd user1 -e -G GRP_VEN

useradd sebastiana -m -c "sebastiana vendas" -s /bin/bash -p $(openssl passwd -crypt senha123) passwd user1 -e -G GRP_VEN

useradd roberto -m -c "roberto vendas" -s /bin/bash -p $(openssl passwd -crypt senha123) passwd user1 -e -G GRP_VEN

useradd josefina -m -c "josefina sec" -s /bin/bash -p $(openssl passwd -crypt senha123) passwd user1 -e -G GRP_SEC

useradd amanda -m -c "amanda sec" -s /bin/bash -p $(openssl passwd -crypt senha123) passwd user1 -e -G GRP_SEC

useradd rogerio -m -c "rogerio sec" -s /bin/bash -p $(openssl passwd -crypt senha123) passwd user1 -e -G GRP_SEC

echo "Finalizado!"



