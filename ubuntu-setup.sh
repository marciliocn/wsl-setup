#!/bin/sh

clear
echo ''
echo '= Atualizando Repositórios do Sistema ='
echo ''
apt update -y

clear
echo ''
echo '= Adiciona senha ao usuário root ='
echo ''
passwd

# CONFIGURAÇÕES
USUARIO='t480s'

# Adiciona usuário sem GECOS (finger infos)
clear
echo ''
echo "= Adiciona usuário $USUARIO ="
echo ''
adduser --gecos '' $USUARIO

# Adiciona usuário ao grupo root
usermod -a -G sudo $USUARIO

# Desabilita interação com o pacote `tzdata` e disponibiliza o conteúdo de `DEBIAN_FRONTEND` para o script
export DEBIAN_FRONTEND=noninteractive

clear
echo ''
echo '= Instalação de softwares - Aguarde... ='
echo ''
sleep 2

apt install -y git \
               curl \
               sudo \
               locales \
               tzdata \
               iputils-ping \
               zsh \
               neovim

clear
echo ''
echo '= Definindo configurações locais (Inglês) ='
echo ''
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen

clear
# Altera o fuso horário para São Paulo
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# Atribui o shell ZSH ao usuário criado
chsh -s $(which zsh) $USUARIO

# Adiciona arquivo .zshrc vazio para evitar configuração do ZSH
# touch /home/$USUARIO/.zshrc

# Passa a propriedade do arquivo para $USUARIO
# chown $USUARIO:$USUARIO /home/$USUARIO/.zshrc

clear
echo ''
echo '= Configurações adicionais concluídas! ='
echo ''

