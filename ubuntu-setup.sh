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

# Adiciona usuário sem GECOS (finger infos)
clear
echo ''
echo '= Adiciona usuário t480s ='
echo ''
adduser --gecos '' t480s

clear
echo ''
echo '= Adiciona usuário ao grupo root ='
echo ''
usermod -a -G sudo t480s

# Desabilita interação com o pacote `tzdata` e disponibiliza o conteúdo de `DEBIAN_FRONTEND` para o script
export DEBIAN_FRONTEND=noninteractive

clear
echo ''
echo '= Instalação de softwares ='
echo ''
apt install -y git \
               curl \
               sudo \
               locales \
               tzdata \
               zsh \
               neovim

# Altera o fuso horário para São Paulo
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# Atribui o shell ZSH ao usuário criado
chsh -s /bin/zsh t480s
