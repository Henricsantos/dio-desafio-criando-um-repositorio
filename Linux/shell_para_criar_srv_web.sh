
###############################################################
#Shell para criar vm e servidor web com Apache no Ubuntu      #
# 				./Cria_SRV_Web.sh                     #
#				chmod +x arquivo.sh                   #
###############################################################

echo "Buscando novos pacotes..."
apt-get update

echo "Atualizando os aplicativos..."
apt-get upgrade -y

echo "Instalando apache..."
apt-get install Apache2 -y

echo "Baixando pacote unzip..."
apt-get install unzip -y

cd /tmp

echo "Baixando repositório..."
wget https://github.com/denilsonbonatti/linux-site-dio/arquive/refs/heads/ma>

echo "Descompactando..."
unzip main.zip

echo "Copiando arquivos..."
cd linux-site-dio-main
cp -R * /var/www/html

echo "Finalizado!"